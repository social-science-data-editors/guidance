# Deployment & PR previews

This repo's site is built with Quarto (source in `docs/`) and published to `gh-pages` via
[.github/workflows/quarto-publish.yml](.github/workflows/quarto-publish.yml). That workflow has
two jobs:

- **build-deploy** — runs on every push, pull request, and manual dispatch.
  On `main` it renders and publishes to the `gh-pages` branch, which
  serves the live site. On every other branch and on pull requests it only
  renders, and uploads the result as a workflow artifact named `rendered-site`
  (downloadable from the run page).
- **preview** — runs on pull requests opened from a branch of this
  repository (not a fork). Downloads the `rendered-site` artifact and deploys
  it to [Cloudflare Pages](https://pages.cloudflare.com/) as a per-PR preview,
  then posts (or updates) a comment on the PR with the preview link.

Forked PRs never run the `preview` job's deploy step, since forks don't have
access to repository secrets — that's a GitHub Actions security boundary,
not a bug.

The Cloudflare Pages **project name is derived automatically** from the
GitHub repository name (`${{ github.event.repository.name }}` in the
workflow) — currently `guidance`. Nothing in the workflow needs editing if
the repo is ever renamed; only the one-time Cloudflare project creation below
needs to match. (Note that the local checkout directory may be named
differently, e.g. `socsci-guidance`; the GitHub repository name is what counts.)

Until the setup below is done, the `preview` job fails on PRs; rendering and
publishing are unaffected.

## One-time Cloudflare Pages setup

You need a (free) Cloudflare account and an API token before the `preview` job
can deploy anything. No domain needs to be on Cloudflare; previews are served
from `*.pages.dev`.

1. **Create the Cloudflare API token.**
   In the Cloudflare dashboard: **My Profile → API Tokens → Create Token**,
   using a custom token with `Account → Cloudflare Pages: Edit` permission
   (the **"Edit Cloudflare Workers"** template also works), limited to your
   account.
   Copy the token value — it's only shown once. Don't use the Global API Key.

2. **Find your Cloudflare Account ID.**
   It's shown on the right-hand sidebar of the **Workers & Pages** overview
   (or any zone/domain overview page) in the Cloudflare dashboard, or via
   `npx wrangler whoami`.

3. **Set both as GitHub Actions secrets on this repo**, using the `gh` CLI
   (run from the repo root, or add
   `--repo social-science-data-editors/guidance` from elsewhere):

   ```bash
   gh secret set CLOUDFLARE_API_TOKEN --body "<paste the API token>"
   gh secret set CLOUDFLARE_ACCOUNT_ID --body "<paste the account ID>"
   ```

   Or omit `--body` to be prompted / pipe the value in:

   ```bash
   gh secret set CLOUDFLARE_API_TOKEN
   echo -n "<account id>" | gh secret set CLOUDFLARE_ACCOUNT_ID
   ```

   If you keep these values in 1Password, pipe them straight from the `op`
   CLI instead of copy-pasting. This assumes a `cloudflare.com` item with an
   "Account ID" field and an "API token: `ssde-guidance`" field. (The field
   name is `ssde-guidance` rather than the repository name `guidance` for
   technical reasons.)

   ```bash
   op item get "cloudflare.com" --fields "API token: ssde-guidance" | gh secret set CLOUDFLARE_API_TOKEN
   op item get "cloudflare.com" --fields "Account ID" | gh secret set CLOUDFLARE_ACCOUNT_ID
   ```

4. **Check that the Cloudflare Pages project exists, and create it if not.**
   The project must exist before a preview PR is opened — `wrangler pages
   deploy` in CI does not create it on its own. Using
   [Wrangler](https://developers.cloudflare.com/workers/wrangler/) (requires
   Node.js), look for a project named like the GitHub repository:

   ```bash
   npx wrangler login
   npx wrangler pages project list
   ```

   If it is not listed (for instance in a new Cloudflare account, or after the
   repository was renamed), create it, taking the name from GitHub so it
   matches the workflow:

   ```bash
   npx wrangler pages project create "$(gh repo view --json name -q .name)" --production-branch main
   ```

   The project is a Direct Upload project: do **not** connect it to the Git
   repository, since GitHub Actions builds the site and Cloudflare only hosts
   it. Alternatively, create it in the dashboard (**Workers & Pages → Create →
   Pages → Upload assets**) under the same name.

   Project names are unique across Cloudflare, so a generic name such as
   `guidance` may already be in use by someone else. If creation is refused,
   see "If the project name is not available" below.

5. **Verify the secrets are set:**

   ```bash
   gh secret list
   ```

   You should see `CLOUDFLARE_API_TOKEN` and `CLOUDFLARE_ACCOUNT_ID` listed
   (values are never shown, only names and update times).

## After setup

Once the secrets exist, every PR from a repo branch (not a fork) will get:

- A live preview at a Cloudflare Pages URL specific to that PR
  (`--branch=pr-<PR number>`, i.e.
  `https://pr-<PR number>.guidance.pages.dev`), rebuilt on every push
  to the PR.
- A PR comment with the preview link, edited in place on each new commit
  rather than re-posted.

The Quarto config sets no `site-url`, so no URL override is needed for the
preview build.

## Notes

- **Access**: `pages.dev` previews are public by default. To restrict them,
  enable an access policy under **Workers & Pages → guidance →
  Settings**.
- **Cleanup**: each PR leaves a deployment (alias `pr-<number>`) in
  Cloudflare. They are harmless, but can be deleted under the project's
  **Deployments** tab.
- **Dependabot PRs** cannot read Actions secrets, so they get no preview
  unless the same secrets are also added under **Dependabot secrets**.
- **Troubleshooting**: `Project not found` means the project name differs
  from the repository name or lives in another account;
  `Authentication error` means a wrong account ID or a token lacking
  *Cloudflare Pages: Edit*.

## If the repository is ever renamed

The Cloudflare Pages project name must match the repository name, and
Cloudflare project names can't easily be renamed once created. If you rename
this repo, create a new Pages project matching the new name (step 4 above) —
the workflow itself needs no changes, since it reads the name from GitHub at
deploy time.

## If the project name is not available

If `guidance` is taken on Cloudflare, create a project under another name and
hard-code it in the `preview` job of
[.github/workflows/quarto-publish.yml](.github/workflows/quarto-publish.yml)
by replacing the value of `CF_PAGES_PROJECT`.
