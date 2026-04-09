cask "macro_paste" do
  version "1.3.3"
  sha256 "f4ee4bb73e9dca0f2bcf640c453608424b4d7baf79765e2eaea88ae0fb9fd715"

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
end
