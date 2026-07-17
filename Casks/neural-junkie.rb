cask "neural-junkie" do
  version "1.2.0-beta.6"

  on_arm do
    sha256 "417f02fc3b30ff4a5c6f6a381298a612214eed911e7cc24daaf945b7cd0965bc"

    url "https://github.com/camronwood/neural-junkie/releases/download/v#{version}/Neural.Junkie_#{version}_aarch64.dmg",
        verified: "github.com/camronwood/neural-junkie/"
  end
  on_intel do
    sha256 "1124afcfc71f00bbe5107e78b6f9d5cc0cd77f7c81527df4d7088853f17215aa"

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
