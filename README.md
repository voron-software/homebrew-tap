# homebrew-tap

Homebrew formulae for Voron Software's command-line tools.

Voron Software's tools are not in homebrew-core, so `brew install` cannot find them without this tap.

| Formula | Tool |
| --- | --- |
| `rafn` | [rafn](https://rafn.dev), a lightweight benchmark uploader |

## Install

```sh
brew install voron-software/tap/rafn
```

Or tap first and then install by short name:

```sh
brew tap voron-software/tap
brew install rafn
```

## Contributing

Each tool's release workflow commits its formula here, so a formula change belongs in that tool's release, not in a pull request to this repository. See the [contributing guide](https://github.com/voron-software/.github/blob/main/.github/CONTRIBUTING.md).
