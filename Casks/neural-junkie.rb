cask "neural-junkie" do
  version "1.2.0-beta.12"

  on_arm do
    sha256 "3813dae1b8ce0ec5cf9c9f3bdbfd02b55b5bfe5b5727502a5a7f0d0cdeb34fc9"

    url "https://github.com/camronwood/neural-junkie/releases/download/v#{version}/Neural.Junkie_#{version}_aarch64.dmg",
        verified: "github.com/camronwood/neural-junkie/"
  end
  on_intel do
    sha256 "b54c8565bbd0de861d66bf9289698fa10191aaf83c71139101f9b4c350e2b437"

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
