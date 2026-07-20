cask "neural-junkie" do
  version "1.2.0-beta.7"

  on_arm do
    sha256 "750fb15ab4678e59f59e6eb138bbb765e4f67a3a3ccc12c42d463aa8072fbf3e"

    url "https://github.com/camronwood/neural-junkie/releases/download/v#{version}/Neural.Junkie_#{version}_aarch64.dmg",
        verified: "github.com/camronwood/neural-junkie/"
  end
  on_intel do
    sha256 "a40ba60ccdf1de37f0f1301b01a54285dd24197a4184ca9cde8de744b1b7dcb7"

    url "https://github.com/camronwood/neural-junkie/releases/download/v#{version}/Neural.Junkie_#{version}_x64.dmg",
        verified: "github.com/camronwood/neural-junkie/"
  end

  name "Neural Junkie"
  desc "Multi-agent orchestration workspace with local-first AI"
  homepage "https://camronwood.github.io/neural-junkie/"

  depends_on macos: :big_sur

  app "Neural Junkie.app"

  zap trash: "~/.neural-junkie"
end
