# The Worst Shomii

A custom-branded Levanter WhatsApp bot project. This repository currently publishes the **website draft and deployment planning files only**.

> **Status: website draft published; bot source and live deployment are not ready yet.** Do not deploy this repository as a working bot until the upstream source has been integrated, its license/notices verified, and the Heroku configuration tested.

## Project
- Website: `docs/` — static site intended for GitHub Pages.
- Branding: The Worst Shomii; dark black, purple and red theme.
- Planned runtime: Heroku worker/container (not verified).
- Upstream project: https://github.com/lyfe00011/levanter

## Enable GitHub Pages
1. Open **Settings → Pages** in this repository.
2. Under Build and deployment, choose **Deploy from a branch**.
3. Choose branch `main` and folder `/docs`, then Save.
4. Wait for GitHub Pages to publish the static website.

GitHub Pages hosts only the website; it does not run a WhatsApp bot.

## Before bot deployment
- Integrate the full source at a reviewed upstream commit.
- Verify license, notices and dependency licenses.
- Check required environment variables and session handling.
- Verify the Docker/Heroku worker configuration against the actual source.
- Test build and startup before deployment.
- Never commit WhatsApp session IDs, API keys, passwords, or other secrets.

## Credits
Levanter upstream: https://github.com/lyfe00011/levanter  
Preserve upstream author credits and applicable notices when source is integrated.
