# Veo storyboard guide

The storyboard's only job: get the shots right. Dialogue and voices live in
the ElevenLabs script, not here.

## Core image plus simple direction

- Each shot is one core image (the shot still) plus a short, simple direction.
- Prompt shape: the visual itself, then one or two plain clauses of action.
  Example: "Closeup on the mom's face. She's pushing through labor pains."
- Never paste long prose prompts into Veo. Long prompts confuse it; it will
  invent things.

## Shot grammar

- Research the real show's shots before building (see
  `references/production-rules.md`). If the format has interview/confessional
  chairs, those shots must exist alongside the scene shots.
- Mix wide shots and close-ups. All-same-framing is the most common note.
- Panning matters; use it to connect spaces (for example, two rooms split by
  a wall).
- Every panel must be a distinct shot.

## Movement

- Direct the characters' bodies: hug, flinch, look scared, lean in, pace.
  Camera shake alone is not movement.
- When dialogue will be laid on later, the character's lips should be moving
  a bit. Exact lip sync is not achievable in generation; close placement is
  the goal.

## Sound

- All clips are silent. Veo's generated audio invents dialogue, so audio is
  never used. Voices come from ElevenLabs only.

## Continuity

- Each clip sets up the next: actions, positions and tone connect shot to
  shot. Check the sequence as a chain, not as individual panels.

## Editing expectations

- Do not plan to use the full length of each generation. Trim each clip to
  its best beat.
- Salvage before regenerating: a flawed clip that can be trimmed is kept and
  flagged, not redone. New generations cost credits; editing is free.
- Generate enough frames per scene; sparse coverage reads as choppy when cut.
