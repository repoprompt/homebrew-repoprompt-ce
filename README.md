# RepoPrompt CE Homebrew Tap

Homebrew tap for [RepoPrompt CE](https://github.com/repoprompt/repoprompt-ce), the open-source community edition of RepoPrompt.

## Install

```sh
brew tap repoprompt/repoprompt-ce
brew install --cask repoprompt-ce
```

You can also install in one fully qualified command:

```sh
brew install --cask repoprompt/repoprompt-ce/repoprompt-ce
```

This installs:

```text
/Applications/RepoPrompt CE.app
```

The cask downloads signed, notarized release artifacts promoted to [`repoprompt/repoprompt-ce-updates`](https://github.com/repoprompt/repoprompt-ce-updates).

## Upgrade

RepoPrompt CE includes Sparkle auto-updates. Refresh Homebrew's tap metadata with:

```sh
brew update
```

To make Homebrew manage an app update instead of relying on Sparkle, use `--greedy`:

```sh
brew upgrade --cask --greedy repoprompt-ce
```

## Uninstall

Remove the app:

```sh
brew uninstall --cask repoprompt-ce
```

Remove the app and cask-managed user data:

```sh
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

### Gatekeeper or unidentified developer warning

RepoPrompt CE releases are expected to be signed and notarized before promotion. If macOS reports a Gatekeeper or unidentified developer warning, treat it as an upstream release issue and report it at [repoprompt/repoprompt-ce](https://github.com/repoprompt/repoprompt-ce/issues).

### Livecheck version differs from the cask

Homebrew livecheck reads the public Sparkle appcast from `repoprompt/repoprompt-ce-updates`. If livecheck reports a newer version than this tap, the promoted release may not have been reflected in the cask yet.

### MCP CLI is not on PATH

Phase A installs the app bundle only. The embedded MCP helper is app-coupled and is not exposed as a standalone Homebrew `binary` or formula in this tap.

## License

Tap files and RepoPrompt CE are Apache-2.0. See the [RepoPrompt CE source repository](https://github.com/repoprompt/repoprompt-ce) for full license details.
