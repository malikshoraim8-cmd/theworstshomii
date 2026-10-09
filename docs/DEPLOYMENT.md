# The Worst Shomii — Deployment Guide

## Fix for “Failed detect the Platform”
The current upstream Levanter version checks platform settings at startup. For Heroku, the app manifest now includes `HEROKU_APP_NAME` and `HEROKU_API_KEY`, along with the platform flags. After pulling the latest manifest, redeploy so the new settings appear.

1. Open your Heroku app → **Settings → Config Vars**.
2. Add `HEROKU_APP_NAME` with the exact app name shown in Heroku (not the full URL).
3. Add `HEROKU_API_KEY` using the API key from **your own** Heroku account, if this Levanter version requires it for platform detection.
4. Ensure `VPS=false` and `KOYEB=false` for a Heroku deployment.
5. Save changes, then restart/redeploy the worker and check logs again.

**Important:** Never use the repository owner's API key for other users. Do not commit API keys, WhatsApp session IDs, or passwords to GitHub. There is no safe way to make one owner's personal Heroku key automatically available to every public deployer. If you don't want users to supply an API key, the bot source itself must be changed to use Heroku's runtime environment detection without requiring that secret; that source-level change has not yet been implemented or tested.

## Deploy to Heroku
1. Open the repository README and press **Deploy to Heroku**.
2. Sign in to your own Heroku account and choose an app name.
3. Enter your valid WhatsApp session ID privately.
4. Add the platform config vars above if required by the runtime.
5. Start the deployment and wait for the build to finish.
6. Open the app's worker logs. A running dyno alone does not guarantee that WhatsApp connected.

## Website publishing
The static website lives in `docs/`. In GitHub, open **Settings → Pages** and select **GitHub Actions** as the source. The workflow in `.github/workflows/pages.yml` will deploy updates to the site.

## Troubleshooting
- Read the first meaningful error in the worker logs.
- Confirm the session ID is valid and entered privately.
- Confirm the image builds and the worker remains running.
- Never post secrets in public issues or screenshots.

## Source and credits
The Dockerfile fetches upstream bot source from [lyfe00011/levanter](https://github.com/lyfe00011/levanter) at build time. This repository is a branded deployment wrapper and website; it does not vendor the full upstream source code.
