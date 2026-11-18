cask "neural-junkie" do
  version "1.2.0-beta.34"

  on_arm do
    sha256 "2961410c866ad72e11f5f1319e8246741d7cabab272c6364805184f7fac2aae4"

    url "https://github.com/camronwood/neural-junkie/releases/download/v#{version}/Neural.Junkie_#{version}_aarch64.dmg",
        verified: "github.com/camronwood/neural-junkie/"
  end
  on_intel do
    sha256 "fe9c5da1f8bb48a680e680056d800c7ca302693574ecba7ae52ac405172b9553"

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
