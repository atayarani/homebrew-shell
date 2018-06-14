class ConfigureRuby < Formula
    desc "Configure things required by my Ruby setup"
    homepage "https://github.com/atayarani/homebrew-shell"
    url "https://github.com/atayarani/homebrew-shell/archive/v0.0.33.tar.gz"

    depends_on "rbenv"
    depends_on "rbenv-bundler"
    depends_on "ruby-build"
    depends_on "imagemagick"

    def install
      bin.install "true.sh"
    end

    def caveats; <<~EOS
    In order to load the vimrc here, please run the following:
      ln -sin #{vim_path} #{ENV["HOME"]}/.vimrc
      mkdir -p #{ENV['HOME']}/.vim/swap
    EOS
    end

    def vim_path
      @vim_path ||= File.join(HOMEBREW_PREFIX, "Cellar", name, version, "vim", "vimrc")
    end
end