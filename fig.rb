class Fig < Formula
  desc "Quickly build and deploy configuration profiles."
  homepage "https://github.com/ashur/fig"
  url "https://github.com/ashur/fig.git",
    :tag => "v0.4.2",
    :revision => "93162df67c0eca49a4c213292ea8b4580997741e"
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
