cask "neural-junkie" do
  version "1.2.0-beta.5"

  on_arm do
    sha256 "96a0d47fb7d3580bb186d9a8b607d9d98de34fcdca4fa3457b8d376a5ce530ef"
  end
  on_intel do
    sha256 "9916a304c654ea56ad40c658cd3c3c4ad4b7dfb2d69470f12e6eda6c54125b1f"
  end

  url "https://github.com/camronwood/neural-junkie/releases/download/v#{version}/Neural.Junkie_#{version}_#{arch}.dmg"

  name "Neural Junkie"
  desc "Multi-agent orchestration workspace with local-first AI"
  homepage "https://camronwood.github.io/neural-junkie/"

  livecheck do
    url "https://github.com/camronwood/neural-junkie/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Neural Junkie.app"

  zap trash: [
    "~/.neural-junkie",
  ]
end
