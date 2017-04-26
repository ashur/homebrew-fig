class Fig < Formula
  desc "Quickly build and deploy configuration profiles."
  homepage "https://github.com/ashur/fig"
  url "https://github.com/ashur/fig.git",
    :tag => "v0.3.0",
    :revision => "b2439d5aa3dfc940c950089a36506c723a017ae8"
  head "https://github.com/ashur/fig.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/fig"
  end

  test do
    system "#{bin}/fig", "--version"
  end
end
