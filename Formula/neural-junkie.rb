class NeuralJunkie < Formula
  desc "Multi-agent orchestration workspace with local-first AI"
  homepage "https://camronwood.github.io/neural-junkie/"
  version "1.2.0-beta.5"
  license :cannot_represent

  on_macos do
    odie <<~EOS
      Neural Junkie on macOS is installed as a cask:

        brew tap camronwood/tap
        brew install --cask neural-junkie
    EOS
  end

  on_linux do
    url "https://github.com/camronwood/neural-junkie/releases/download/v#{version}/neural-junkie_#{version}_amd64.deb"
    sha256 "c2f62c38c7b8e7c4fccdfd731b0877a108131bf373f17faa65f1f7817082dc32"

    depends_on "at-spi2-core"
    depends_on "cairo"
    depends_on "dbus"
    depends_on "gdk-pixbuf"
    depends_on "glib"
    depends_on "gtk+3"
    depends_on "librsvg"
    depends_on "pango"
    depends_on "webkit2gtk"

    def install
      extract = buildpath/"deb-extract"
      extract.mkpath
      cd extract do
        system "ar", "x", cached_download
        system "tar", "-xzf", "data.tar.gz"
        cd "usr" do
          bin.install "bin/neural-junkie", "bin/nj-server"
          (lib/"neural-junkie").install Dir["lib/neural-junkie/*"]
          (share/"applications").install "share/applications/neural-junkie.desktop"
          (share/"icons").install "share/icons/hicolor"
        end
      end
    end

    def caveats
      <<~EOS
        First launch runs the setup wizard (install Ollama via wizard if needed — internet required).
        User data: ~/.neural-junkie
      EOS
    end
  end
end
