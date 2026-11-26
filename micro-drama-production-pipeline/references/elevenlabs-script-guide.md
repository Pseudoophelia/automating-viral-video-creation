# ElevenLabs script guide

The script's only job: get the voices and dialogue right. Shots live in the
Veo storyboard, not here.

## Format

- Exact verbatim lines only. No invented connective dialogue, no producer
  questions, no narration the director did not write.
- Every line gets a line ID tied to a storyboard shot number (see the
  alignment map). The two documents must map 1:1.
- Each line carries one restrained delivery tag (dry, skeptical, confused,
  casual). Do not stack adjectives.

## Voice casting

- Cast before generating. Avoid generic voices; match the world (fantasy
  voices for a fantasy show). Some library voices are paid-plan only; check
  before committing.
- Keep a cast list in the script header: character, voice name, voice ID,
  and a one-line description of the read (for example, "young and dumb, deep
  timbre" or "dry, skeptical").
- Record the director's approved voices and reuse them across episodes for
  continuity, even when the timbre is imperfect. Flag the mismatch; do not
  silently recast.

## Hard rules

- No whispering, ever.
- Dialogue comes from ElevenLabs only; never let the video model generate
  speech.
- One take per line unless the take is unusable. Generations draw down
  credits even when free-plan.
- Sound effects cost credits too. Do not generate them without an explicit
  OK; flag the beat instead.
