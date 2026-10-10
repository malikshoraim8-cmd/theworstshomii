<h1 align="center">𝑾𝒐𝒓𝒔𝒕 𝑺𝒉𝒐𝒎𝒊𝒊</h1>

<p align="center"><b>Levanter WhatsApp Bot · Project Website & Deployment Template</b></p>
<p align="center">Your bot, your style — powered by Worst Shomii.</p>

<p align="center">
  <a href="https://heroku.com/deploy?template=https://github.com/malikshoraim8-cmd/theworstshomii">
    <img src="https://www.herokucdn.com/deploy/button.svg" alt="Deploy to Heroku">
  </a>
</p>

## Project

The Worst Shomii is a custom-branded deployment template and project website for the open-source Levanter WhatsApp bot. The container configuration fetches the upstream Levanter source during build; this repository does not copy the entire upstream source tree.

## Configuration

- **Command prefix:** `.`
- **Sticker pack:** `𝛅ͱ꧊๏̚ɱꪸɪ፝֟ɪ፝֟`
- **Required at deployment:** your own valid `SESSION_ID`
- **Hosting:** Heroku container worker (build configuration included)

## Deploy

1. Click **Deploy to Heroku**.
2. Sign in to your own Heroku account and choose an app name.
3. Enter your own WhatsApp session ID in the private deployment form. Never share it publicly.
4. Review the configuration and start deployment.
5. Check the Heroku build and worker logs. A successful template submission alone does not prove the bot has connected to WhatsApp.

You do **not** need to enter the repository owner's personal Heroku API key for an ordinary bot deployment. Any optional bot feature that manages Heroku apps through the Heroku API may require the individual deployer's own private Heroku API key and app name.

## Website

Website source files are in [`docs/`](docs/). GitHub Pages deployment workflow is in [`.github/workflows/pages.yml`](.github/workflows/pages.yml). In the repository's **Settings → Pages**, select **GitHub Actions** as the build and deployment source if it is not already enabled.

## Credits and license

Bot base: [lyfe00011/levanter](https://github.com/lyfe00011/levanter). Preserve upstream author notices and comply with the upstream license when using or modifying its source. This repository's own license file does not replace the upstream project's license.

---
<p align="center">Made with care by Worst Shomii 🤍</p>
