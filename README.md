# homebrew-tap

A [Homebrew](https://brew.sh/) tap for installing [lovablepablo's](https://github.com/lovablepablo) macOS projects without manual Gatekeeper workarounds.

Homebrew automatically removes the quarantine flag from downloaded artifacts, so the apps installed through this tap can be launched immediately without right-clicking, running `xattr -dr com.apple.quarantine`, or fiddling with System Settings.

## Usage

Add this tap once:

```sh
brew tap lovablepablo/tap
```

Or install a package directly without adding the tap first:

```sh
brew install --cask lovablepablo/tap/macro_paste
```

## Available casks

| Name | Description | Source |
| --- | --- | --- |
| [`macro_paste`](Casks/macro_paste.rb) | System tray app that pastes clipboard text as individual keystrokes — useful for remote desktop sessions where regular paste does not work. | [lovablepablo/macro_paste](https://github.com/lovablepablo/macro_paste) |

## Updating installed casks

```sh
brew upgrade --cask
```

## Removing a cask

```sh
brew uninstall --cask macro_paste
```

To remove the tap entirely:

```sh
brew untap lovablepablo/tap
```

## License

The Cask definitions in this repository are released under the [MIT License](LICENSE). Each individual project distributed through this tap retains its own license — see the linked source repositories for details.
