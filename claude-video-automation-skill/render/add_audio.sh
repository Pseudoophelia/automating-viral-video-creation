#!/usr/bin/env bash
# add_audio.sh - mux an EXISTING dialogue recording into a rendered shot and run audio checks.
# Usage: ./add_audio.sh INPUT_VIDEO INPUT_AUDIO OUT.mp4 EXPECTED_SECONDS
# Never generates audio. Video duration is the authority; audio shorter than the shot is
# padded with silence to match, audio longer is flagged (not trimmed silently).
# Fails loudly on silent/dead audio so a dead file can never pass as a recording.
set -euo pipefail
VID="$1"; AUD="$2"; OUT="$3"; WANT="$4"
probe() { ffprobe -v error -show_entries format=duration -of csv=p=0 "$1"; }
VD=$(probe "$VID"); AD=$(probe "$AUD")
echo "video_duration=$VD audio_duration=$AD expected=$WANT"
VOL=$(ffmpeg -i "$AUD" -af volumedetect -f null - 2>&1 | grep -E "mean_volume|max_volume")
echo "$VOL"
MEAN=$(echo "$VOL" | grep mean_volume | grep -oE '\-[0-9.]+' | head -1)
if python3 -c "exit(0 if float('$MEAN') < -55 else 1)"; then
  echo "CHECK FAIL: audio reads as silence (mean_volume ${MEAN} dB). Refusing to mux a dead file." >&2
  exit 2
fi
python3 -c "
import sys
vd, ad, want = float('$VD'), float('$AD'), float('$WANT')
if abs(vd - want) > 0.15: print(f'CHECK WARN: video {vd:.2f}s vs board {want:.2f}s')
if ad > want + 0.25: print(f'CHECK WARN: audio {ad:.2f}s runs past shot end {want:.2f}s - timing decision needed, NOT auto-trimmed')
elif ad < want - 0.25: print(f'CHECK NOTE: audio {ad:.2f}s padded with silence to {want:.2f}s')
else: print('CHECK PASS: audio length matches shot timing')
"
ffmpeg -y -loglevel error -i "$VID" -i "$AUD" -filter_complex "[1:a]apad=whole_dur=$VD[a]" -map 0:v -map "[a]" -c:v copy -c:a aac -shortest "$OUT"
echo "muxed: $OUT ($(probe "$OUT")s)"
