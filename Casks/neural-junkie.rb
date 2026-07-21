cask "neural-junkie" do
  version "1.2.0-beta.10"

  on_arm do
    sha256 "ed4ac35e3f314e20caa4fc36e6090f9860e52391cf8d6b74053e177b2bc3d56d"

    url "https://github.com/camronwood/neural-junkie/releases/download/v#{version}/Neural.Junkie_#{version}_aarch64.dmg",
        verified: "github.com/camronwood/neural-junkie/"
  end
  on_intel do
    sha256 "81f9f3b8a482d1bf693b9146e7fbe8fc307d5fccf3acb66faba1ee76b8bf8e07"

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
