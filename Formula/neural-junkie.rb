class NeuralJunkie < Formula
  desc "Multi-agent orchestration workspace with local-first AI"
  homepage "https://camronwood.github.io/neural-junkie/"
  url "https://github.com/camronwood/neural-junkie/releases/download/v1.2.0-beta.11/Neural.Junkie_1.2.0-beta.11_amd64.deb"
  sha256 "d4fb03ba21de995aa76c883f0a8e071efbd3a4cb5b1a173282ea86d88c4e138a"
  license :cannot_represent

  depends_on "at-spi2-core"
  depends_on "cairo"
  depends_on "dbus"
  depends_on "gdk-pixbuf"
  depends_on "glib"
  depends_on "gtk+3"
  depends_on "librsvg"
  depends_on :linux
  depends_on "pango"
  depends_on "webkitgtk"

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

      On macOS, install the desktop app as a cask instead:

        brew tap camronwood/tap
        brew install --cask neural-junkie
    EOS
  end
end
