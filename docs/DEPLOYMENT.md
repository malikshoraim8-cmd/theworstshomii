# The Worst Shomii — Deployment Guide

## Before you start
You need your own Heroku account and a valid Levanter WhatsApp session ID. Keep the session ID private.

## Deploy to Heroku
1. Open the repository README and press **Deploy to Heroku**.
2. Sign in to Heroku and choose an app name.
3. Fill in the required private deployment settings, especially `SESSION_ID`.
4. Start the deployment and wait for the build to finish.
5. Open the app's worker logs. If it exits or reports dependency/authentication errors, deployment has not succeeded yet.

## API key safety
A personal Heroku API key is not required just to run the bot as a worker. Do not put your personal API key in this public repository or in the public website. Optional commands that manage Heroku apps through the Heroku API may require the deployer's own API key and app name; configure those privately only if you intend to use those commands.

## Website publishing
The static website lives in `docs/`. In GitHub, open **Settings → Pages** and select **GitHub Actions** as the source. The workflow in `.github/workflows/pages.yml` will deploy updates to the site.

## What to check if deployment fails
- Read the full Heroku build log and find the first error, not just the last line.
- Confirm the session ID is valid and was entered in the private settings form.
- Check that the container image built successfully and the worker process remains running.
- Never post session IDs, API keys, or passwords in public issues or screenshots.

## Source and credits
The Dockerfile fetches the upstream bot source from [lyfe00011/levanter](https://github.com/lyfe00011/levanter) at build time. This repository is a branded deployment wrapper and website; it does not vendor the full upstream source code.
