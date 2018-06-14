class ConfigureRuby < Formula
    desc "Configure things required by my Ruby setup"
    homepage "https://github.com/atayarani/homebrew-shell"
    url "https://github.com/atayarani/homebrew-shell/archive/v0.0.36.tar.gz"

    depends_on "rbenv"
    depends_on "rbenv-bundler"
    depends_on "ruby-build"
    depends_on "imagemagick"

    keg_only "config only", "there is nothing to execute here"

    def install
      bin.install "true.sh"
    end
end