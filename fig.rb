class Fig < Formula
  desc "Quickly build and deploy configuration profiles."
  homepage "https://github.com/ashur/fig"
  url "https://github.com/ashur/fig.git",
    :tag => "v0.3.1",
    :revision => "1d29ade44e199aa6c9f93f7e9c83a88cf5995994"
  head "https://github.com/ashur/fig.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/fig"
  end

  test do
    system "#{bin}/fig", "--version"
  end
end
