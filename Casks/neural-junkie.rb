cask "neural-junkie" do
  version "1.2.0-beta.11"

  on_arm do
    sha256 "9859cd67a4ed335e164e56d38279ac245060cf3603db8460dd9bbdfbc5aa97f9"

    url "https://github.com/camronwood/neural-junkie/releases/download/v#{version}/Neural.Junkie_#{version}_aarch64.dmg",
        verified: "github.com/camronwood/neural-junkie/"
  end
  on_intel do
    sha256 "9dc19b6de464e15ba9c3401a4f507a349fc09b7d30c7a39c04205f3ea3a8c641"

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
