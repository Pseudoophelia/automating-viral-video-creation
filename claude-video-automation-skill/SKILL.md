---
name: Claude Video Automation Skill
description: Build one scene of an animation production from its approved storyboard: assemble art, align recorded dialogue, animate approved action, render an MP4 and run checks.
---

# Claude Video Automation Skill

Produce one scene from the approved storyboard. The board is the creative authority:
action, dialogue, character descriptions and per-shot prompts carry over verbatim.
Never rewrite the story, invent dialogue, or add on-screen text.

## Rules that apply to every production
- The production's own approved storyboard sets the rules: characters, action,
  dialogue, look, aspect ratio and per-shot duration. Derive them from that
  production's board and scene sheet - do not carry another project's rules over.
- Approved originals (storyboard, art frames, voice recordings) are never modified.
  Work on copies in the project folder.
- Missing input (art, audio, a board decision) means STOP and name it. Never
  silently substitute.

## Inputs (per production)
- scene-sheet.md - per-shot action, dialogue, art file, duration, from the board.
- prompts/ - the board's full self-contained per-shot generation prompts, verbatim.
- storyboard/ - the approved storyboard PDF itself. Keep it with the kit.
- assets/ - approved art frames.
- audio/ - recorded dialogue per shot (the director's recordings or an approved voice tool).
- render/ - animation templates and the renderer.

## Workflow
1. Load the scene sheet and confirm every input for the requested shot exists.
   Report missing inputs by name instead of substituting.
2. Prepare layers only as the approved action requires (e.g. an arm or prop that must
   move separately). Keep the character's identity features untouched.
3. Align the shot's recorded dialogue to the shot's timing.
4. Apply the motion template that matches the approved action (camera move, gesture
   loop, held pose). Nothing beyond what the board describes.
5. Render MP4 (1080x1920, 30fps).
6. Run checks, then watch the full video yourself before presenting:
   - duration matches the board
   - audio present and aligned, correct character's line
   - no invented text, logos or extra characters
   - the production's own rules from its board hold
   - no flicker, warping or identity drift frame to frame
7. Present only work that passes the checks. If anything had to be approximated or
   deviates from the board, flag it to the director and get her call BEFORE presenting the
   scene as complete - never deliver a fudge as done. The director judges performance and
   final-edits; deviations and new creative choices go back to her.

## Saving a template
When the director approves a scene, save its working setup as a named template in
render/templates/ so the next scene starts from it, not from zero.

## Limits
This automates assembly, timing and rendering. It does not supply convincing acting
by itself - a scene test decides whether the motion templates are enough or a shot
needs prepared rigs or a separately approved generated clip.


## Where this skill runs
- Uploaded to claude.ai (Customize > Skills), Claude applies it automatically when a
  scene-build request matches. In Claude Code it lives in .claude/skills/claude-video-automation-skill/.
- render/ scripts need ffmpeg. If ffmpeg is not available in the current environment,
  do not fake a render: assemble and check everything else, and report that rendering
  needs a machine with ffmpeg.
