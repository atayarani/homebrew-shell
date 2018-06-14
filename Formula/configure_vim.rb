class ConfigureVim < Formula
    desc "Configure things required by my VIM setup"
    homepage "https://github.com/atayarani/homebrew-shell"
    url "https://github.com/atayarani/homebrew-shell/archive/v0.0.34.tar.gz"

    depends_on "vim"

    def install
      prefix.install File.join("config", "vim")
    end

    def caveats; <<~EOS
    In order to load the vimrc here, please run the following:
      ln -sin #{vim_path} #{ENV["HOME"]}/.vimrc
      mkdir -p #{ENV['HOME']}/.vim/swap
      ln -sin 
    EOS
    end

    def vim_path
      @vim_path ||= File.join(HOMEBREW_PREFIX, "Cellar", name, version, "vim", "vimrc")
    end
end