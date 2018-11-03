class ConfigurePython < Formula
    desc "Configure things required by my Python setup"
    homepage "https://github.com/atayarani/homebrew-shell"
    url "https://github.com/atayarani/homebrew-shell/archive/v0.0.40.tar.gz"
    keg_only "config only", "there is nothing to execute here"

    depends_on "pipenv"
    depends_on "pyenv-virtualenv"
    depends_on "python"

    def install
      bin.install "true.sh"
    end
end
