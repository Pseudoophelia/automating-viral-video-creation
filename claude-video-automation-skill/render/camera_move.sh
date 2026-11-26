#!/usr/bin/env bash
# camera_move.sh - slow push-in render template (the one piece proven in the Shot 1 mock).
# Usage: ./camera_move.sh INPUT_IMAGE DURATION_SEC OUT.mp4 [MOCK_LABEL]
# Requires ffmpeg. Output: 1080x1920 30fps H.264, silent. Audio muxing helper is NOT implemented yet; until it is,
# render stays silent and the missing audio is reported, never faked.
# Camera move only: this does NOT animate characters. Character action needs prepared
# layers or a generated clip; that path is unproven.
set -euo pipefail
IMG="$1"; DUR="$2"; OUT="$3"; LABEL="${4:-}"
FRAMES=$(python3 -c "print(int(float('$DUR')*30))")
M=$((FRAMES-1))
VF="scale=2160:3840:flags=lanczos,zoompan=z='1+0.18*on/$M':x='iw*0.30*on/$M':y='ih*0.50*on/$M*0.9+ih*0.05':d=$FRAMES:s=1080x1920:fps=30"
if [ -n "$LABEL" ]; then
  VF="$VF,drawtext=text='$LABEL':x=(w-text_w)/2:y=h-80:fontsize=34:fontcolor=white:box=1:boxcolor=black@0.55:boxborderw=12"
fi
ffmpeg -y -loglevel error -loop 1 -i "$IMG" -t "$DUR" -vf "$VF" -c:v libx264 -pix_fmt yuv420p -r 30 "$OUT"
