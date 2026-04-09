cask "macro_paste" do
  version "1.3.4"
  sha256 "dd3be5ae306b471b68799cd99dc4b075310e1ae8f7db567f2b7e6636054cef6a"

  url "https://github.com/lovablepablo/macro_paste/releases/download/v#{version}/macro_paste-macos-arm64.zip"
  name "macro_paste"
  desc "System tray app that pastes clipboard text as individual keystrokes"
  homepage "https://github.com/lovablepablo/macro_paste"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "macro_paste.app"

  zap trash: [
    "~/Library/Application Support/macro_paste",
  ]

  caveats <<~EOS
    macro_paste is not signed with an Apple Developer ID. macOS will
    block it on first launch. To allow it, remove the quarantine flag:

      xattr -dr com.apple.quarantine "#{appdir}/macro_paste.app"

    Keystroke simulation also requires Accessibility permission:
    System Settings → Privacy & Security → Accessibility.
    After every upgrade you must remove and re-add macro_paste in the
    Accessibility list — macOS revokes the permission whenever the
    binary is replaced.
  EOS
end
