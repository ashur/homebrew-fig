class Fig < Formula
  desc "Quickly build and deploy configuration profiles."
  homepage "https://github.com/ashur/fig"
  url "https://github.com/ashur/fig.git",
    :tag => "v0.4.1",
    :revision => "6326df44c087f21955c3e4d227aed71b1a2ca142"
  head "https://github.com/ashur/fig.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/fig"
	man1.install "#{libexec}/docs/fig.1"
  end

  test do
    system "#{bin}/fig", "--version"
  end
end
