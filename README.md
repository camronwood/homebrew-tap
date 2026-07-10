# camronwood/homebrew-tap

Homebrew tap for [Neural Junkie](https://github.com/camronwood/neural-junkie).

## Install

```bash
brew tap camronwood/tap
brew install --cask neural-junkie
```

Upgrade:

```bash
brew upgrade --cask neural-junkie
```

Uninstall:

```bash
brew uninstall --cask neural-junkie
```

## What you get

The cask installs the same **Developer ID signed** macOS `.app` published on [GitHub Releases](https://github.com/camronwood/neural-junkie/releases). Ollama is bundled on macOS; first launch walks through setup and a one-time model pull.

User data lives in `~/.neural-junkie/`. `brew uninstall --cask --zap neural-junkie` removes the app and that directory.

## Maintainer

Cask version and checksums are bumped automatically when a Neural Junkie release is published (see `scripts/bump-homebrew-cask.sh` in the main repo). To bump manually:

```bash
cd /path/to/neural-junkie
./scripts/bump-homebrew-cask.sh v1.2.0-beta.5 ../homebrew-tap
```

Then commit and push this tap repo.

## Future: official Homebrew Cask

Track progress in [neural-junkie/docs/HOMEBREW.md](https://github.com/camronwood/neural-junkie/blob/main/docs/HOMEBREW.md). Once stable and notable enough, we will submit to [homebrew-cask](https://github.com/Homebrew/homebrew-cask) so users can run `brew install --cask neural-junkie` without tapping.
