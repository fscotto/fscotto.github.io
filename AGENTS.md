# Repository Guidelines

## Project Structure & Module Organization

This is a Hugo static site for `fscotto.co` using the `freshPink` theme as a Git submodule in `themes/freshpink/`, with a local Hugo module replacement in `go.mod`. Site configuration lives in `hugo.toml`. Page content is in `content/`; the homepage is `content/_index.md`. Default front matter for new content is in `archetypes/default.md`. Static files copied directly to the published site belong in `static/` (for example favicons and `static/images/avatar.jpg`). Use `assets/`, `layouts/`, `data/`, and `i18n/` for Hugo pipeline assets, template overrides, structured data, and translations when needed.

## Build, Test, and Development Commands

- `git submodule update --init --recursive`: fetch the freshPink theme before building.
- `hugo server -D`: run a local development server and include draft content.
- `hugo --gc --minify`: produce the production build in `public/`, matching the GitHub Pages workflow closely.
- `hugo --gc --minify --baseURL "https://fscotto.co/"`: validate production URLs for the custom domain.

The GitHub Actions workflow in `.github/workflows/hugo.yml` deploys pushes to `master` with Hugo `0.146.0` and Dart Sass.

## Coding Style & Naming Conventions

Use TOML front matter for content files, matching the existing `+++` style. Keep Markdown readable: sentence-case headings, short paragraphs, and standard `-` bullets. Name content files and directories with lowercase kebab-case, for example `content/projects/my-tool.md`. Keep Hugo configuration keys grouped by purpose in `hugo.toml`; avoid unrelated formatting churn.

## Testing Guidelines

There is no dedicated test suite. Treat a clean Hugo build as the required validation before submitting changes. For visual or content edits, run `hugo server -D` and inspect the affected pages locally. For config, theme, or deployment changes, also run the production build command and confirm `public/` is generated without errors.

## Commit & Pull Request Guidelines

Recent history uses both concise imperative messages (`Update homepage`, `Fix deploy action`) and conventional prefixes (`refactor: update homepage...`). Prefer short imperative subjects; use a conventional prefix when it clarifies the change type, such as `fix:`, `refactor:`, or `docs:`. Pull requests should describe the user-visible change, list validation performed, link any related issue, and include screenshots for visual changes.

## Agent-Specific Instructions

Do not edit generated `public/` output unless explicitly requested. Keep changes minimal and repository-specific. Preserve the theme submodule boundary; prefer site-level overrides in `layouts/` or `assets/` over modifying `themes/freshpink/`.
