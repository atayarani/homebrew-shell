class ConfigureVim < Formula
  desc "Configure things required by my VIM setup"
  homepage "https://github.com/atayarani/homebrew-shell"
  url "https://github.com/atayarani/homebrew-shell/archive/v0.0.38.tar.gz"

  depends_on "vim"

  def install
    prefix.install File.join("config", "vim")
  end

  def caveats;
    <<~EOS
    In order to load the vimrc here, please run the following:
      mkdir -p #{ENV['HOME']}/.vim/swap
      ln -sin #{vimrc_path} #{ENV["HOME"]}/.vimrc
      ln -sin #{plug_path} #{ENV["HOME"]}/.vim/plug.vim
    EOS
  end

  def vimrc_path
    @vimrc_path ||= File.join(vim_path, "vimrc")
  end

  def plug_path
    @plug_path ||= File.join(vim_path, "plug.vim")
  end

  def vim_path
    @vim_path ||= File.join(HOMEBREW_PREFIX, "Cellar", name, version, "vim")
  end
end
