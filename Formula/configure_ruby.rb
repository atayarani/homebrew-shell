class ConfigureRuby < Formula
  desc "Configure things required by my Ruby setup"
  homepage "https://github.com/atayarani/homebrew-shell"
  url "https://github.com/atayarani/homebrew-shell/archive/v0.0.36.tar.gz"
  keg_only "config only", "there is nothing to execute here"

  depends_on "imagemagick"
  depends_on "rbenv"
  depends_on "rbenv-bundler"
  depends_on "ruby-build"

  def install
    bin.install "true.sh"
  end

  test do
    system "true"
  end
end
