---
name: micro-drama-production-pipeline
description: Turn a short-drama story idea into production-ready deliverables for AI video tools (Veo storyboard, Midjourney stills, ElevenLabs voice script, shot-by-shot alignment map). Use when planning TikTok-style vertical micro-dramas or AI-animated episodes, especially parodies of existing shows, before any video or voice generation.
---

# Micro-Drama Production Pipeline

Turn a story idea into the five documents an AI video production needs, so the
first generated clips land right instead of being patched later.

This skill encodes one director's working method. Her rules are not optional
style tips; they are the fixes she made after watching generations fail. Read
the reference file for a stage before producing that stage's document.

## The five deliverables

1. **Beat sheet** (`templates/beat-sheet.md`, rules in `references/story-rules.md`)
   Story shape: hook, teaser/payoff, twist, character beats.
2. **Veo storyboard** (`templates/veo-storyboard.md`, rules in `references/veo-storyboard-guide.md`)
   One core image per shot plus a short, simple direction. Silent clips.
3. **Midjourney stills** (`templates/midjourney-stills.md`, rules in `references/midjourney-stills-guide.md`)
   Each storyboard frame turned into a finished still: the director's saved
   style plus the frame itself as the reference image, so prompts stay short.
   One frame is approved before the batch runs.
4. **ElevenLabs script** (`templates/elevenlabs-script.md`, rules in `references/elevenlabs-script-guide.md`)
   Exact verbatim lines, voice casting, per-line delivery direction. No whispering.
5. **Alignment map** (`templates/alignment-map.md`)
   Every storyboard shot tied to its script line IDs. The two documents must
   map 1:1 before anything is generated. This map is the check that prevents
   a script being patched onto footage that does not fit it.

## Pipeline order

1. Story beats. Get the hook, teaser and twist approved before anything else.
2. Research the source format. If the episode parodies or follows an existing
   show, study the real show's shot grammar and editing first (see
   `references/production-rules.md`). Do not build before this step.
3. Veo storyboard. Shots only. Get the shots right.
4. Midjourney stills. One frame first; the director approves the look before
   the batch runs. Get the images right.
5. ElevenLabs script. Voices only. Get the dialogue right.
6. Alignment map and lock check. Script, dialogue, characters and voices are
   locked before any credits are spent.
7. After footage exists: evolve the script to fit the clips, then regenerate
   voices only. Voice credits are cheaper than video.

## Golden rules (the short version)

- Two separate jobs per platform, one at a time: Midjourney gets the image
  right, Veo gets the shot right, ElevenLabs gets the voices right. Never do
  them in one pass.
- Lock the script before generating. Credits are spent only with per-batch
  approval, and free-credit tools first.
- Every clip is silent. Dialogue comes from ElevenLabs only. No whispering.
- Composition happens in Midjourney with the director's saved style and the
  storyboard frame as the reference image; prompts stay short. Effects happen
  in post, not in generation. One frame is approved before a batch spends
  credits.
- Every Veo prompt is a core image plus a short, simple direction. Long prose
  prompts confuse the model.
- Characters act with their bodies (hug, flinch, look scared), lips moving a
  bit when dialogue will be laid on. Camera shake alone is not movement.
- A repeated line or shot is a deliberate teaser unless the director says
  otherwise. Never cut it as a mistake.
- Edit tight and salvage before regenerating. Trimming is free; new
  generations cost credits.
- Dialogue must sound like the real show and the real world. If no human
  would say the line, cut it.
