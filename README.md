# RepoPrompt CE Homebrew Tap

This is the Homebrew tap repository for [RepoPrompt CE](https://github.com/repoprompt/repoprompt-ce), the open-source community edition of RepoPrompt.

- GitHub repository: [`repoprompt/homebrew-repoprompt-ce`](https://github.com/repoprompt/homebrew-repoprompt-ce)
- Homebrew tap: `repoprompt/repoprompt-ce`
- Published cask: `repoprompt-ce`
- Installed app: `/Applications/RepoPrompt CE.app`

## Install

```bash
brew tap repoprompt/repoprompt-ce
brew install --cask repoprompt-ce
```

You can also install in one fully qualified command:

```bash
brew install --cask repoprompt/repoprompt-ce/repoprompt-ce
```

This installs:

```text
/Applications/RepoPrompt CE.app
```

## Artifact Source

The `repoprompt-ce` cask consumes promoted updater ZIPs from [`repoprompt/repoprompt-ce-updates`](https://github.com/repoprompt/repoprompt-ce-updates). It does not build RepoPrompt CE from source.

Release artifacts are signed and notarized upstream before this tap points to them. The cask URL should reference an immutable release tag and ZIP, not a floating `latest/download` artifact.

## Upgrade

RepoPrompt CE includes Sparkle auto-updates. Refresh Homebrew's tap metadata with:

```bash
brew update
```

To make Homebrew manage an app update instead of relying on Sparkle, use `--greedy`:

```bash
brew upgrade --cask --greedy repoprompt-ce
```

## Uninstall

Remove the app:

```bash
brew uninstall --cask repoprompt-ce
```

Remove the app and cask-managed user data:

```bash
brew uninstall --cask --zap repoprompt-ce
```

## Coexistence with RepoPrompt

This cask is `repoprompt-ce`, not Homebrew's closed-source `repo-prompt` cask.

| Cask | App path | Bundle ID |
| --- | --- | --- |
| `repo-prompt` | `/Applications/RepoPrompt.app` | `com.pvncher.repoprompt` |
| `repoprompt-ce` | `/Applications/RepoPrompt CE.app` | `com.pvncher.repoprompt.ce` |

Both casks can coexist because RepoPrompt CE installs with a distinct app name and bundle ID.

## Troubleshooting

### Gatekeeper or Unidentified Developer Warning

RepoPrompt CE releases are expected to be signed and notarized before promotion. If macOS reports a Gatekeeper or unidentified developer warning, treat it as an upstream release issue and report it at [repoprompt/repoprompt-ce](https://github.com/repoprompt/repoprompt-ce/issues).

### Livecheck Version Differs from the Cask

Homebrew livecheck reads the public Sparkle appcast from `repoprompt/repoprompt-ce-updates`. If livecheck reports a newer version than this tap, the promoted release may not have been reflected in the cask yet.

### MCP CLI is not on PATH

This tap installs the app bundle only. The app-coupled MCP helper is not exposed as a standalone Homebrew `binary` or formula in this tap.

## Maintainer Notes

- The cask version uses Homebrew's comma-separated format: `<MARKETING_VERSION>,<BUILD_NUMBER>`.
- The cask URL should stay tag-specific, for example `releases/download/v<MARKETING_VERSION>/RepoPrompt-<MARKETING_VERSION>-<BUILD_NUMBER>.zip`. Do not use `latest/download` for the cask artifact URL.
- The `sha256` should match the updater release ZIP entry in `SHA256SUMS`.
- Signing, notarization, and Sparkle credentials belong in the upstream release pipeline, not in this tap.
- Before updating the cask, verify style, audit, and livecheck against the fully qualified token: `repoprompt/repoprompt-ce/repoprompt-ce`.

## License

Tap files and RepoPrompt CE are Apache-2.0. See the [RepoPrompt CE source repository](https://github.com/repoprompt/repoprompt-ce) for full license details.
