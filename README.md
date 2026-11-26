# Automating viral video creation

Claude skills I use to automate AI video work.

## micro-drama-production-pipeline

Turns a short-drama story idea into the documents an AI video production needs: beat sheet, Veo storyboard, Midjourney stills, ElevenLabs voice script and a shot-to-line alignment map. Start with `SKILL.md`. Stage rules are in `references/` and fill-in templates are in `templates/`.

To use it, zip the `micro-drama-production-pipeline` folder and upload it in Claude under Settings, Capabilities, Skills.

## claude-video-automation-skill

A method for building one animated scene from an approved storyboard: check inputs, line up recorded dialogue, apply a motion template, render a 1080x1920 MP4 and run checks. Start with `SKILL.md`. `render/` has two ffmpeg scripts, a slow push-in and an audio add with checks. Bring your own storyboard, art and recordings.
