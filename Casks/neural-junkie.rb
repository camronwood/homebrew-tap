cask "neural-junkie" do
  version "1.2.0-beta.21"

  on_arm do
    sha256 "ce5d7d4dd8843ace5a2b7de80a11eb72a62147d7fc103136751caac62883d4ff"

    url "https://github.com/camronwood/neural-junkie/releases/download/v#{version}/Neural.Junkie_#{version}_aarch64.dmg",
        verified: "github.com/camronwood/neural-junkie/"
  end
  on_intel do
    sha256 "f003c4415e089427f0557c107aba40dc8033025fb5c7acbc63f878a2deee03ee"

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
