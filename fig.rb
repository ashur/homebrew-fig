class Fig < Formula
  desc "Quickly build and deploy configuration profiles."
  homepage "https://github.com/ashur/fig"
  url "https://github.com/ashur/fig.git",
    :tag => "v0.4.0",
    :revision => "673b24610703695c7068db59fd44928bd83f3443"
  head "https://github.com/ashur/fig.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/fig"
  end

  test do
    system "#{bin}/fig", "--version"
  end
end
