class Fig < Formula
  desc "Quickly build and deploy configuration profiles."
  homepage "https://github.com/ashur/fig"
  url "https://github.com/ashur/fig.git",
    :tag => "v0.4.3",
    :revision => "b810bc3b5abb72a8cb50e3e4cfeefd05cad60d0b"
  head "https://github.com/ashur/fig.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/fig"
    man1.install_symlink "#{libexec}/docs/fig.1"
  end

  test do
    system "#{bin}/fig", "--version"
  end
end
