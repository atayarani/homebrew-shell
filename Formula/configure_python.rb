class ConfigurePython < Formula
    desc "Configure things required by my Python setup"
    homepage "https://github.com/atayarani/homebrew-shell"
    url "https://github.com/atayarani/homebrew-shell/archive/v0.0.39.tar.gz"

    depends_on "python"
    depends_on "pipenv"

    keg_only "config only", "there is nothing to execute here"

    def install
      bin.install "true.sh"
    end
end