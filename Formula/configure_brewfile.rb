class ConfigureBrewfile < Formula
  desc 'Set up of things I used to manually install from a Brewfile'
  homepage "https://github.com/atayarani/homebrew-shell"
  url "https://github.com/atayarani/homebrew-shell/archive/v0.0.49.tar.gz"

  keg_only "config only", "there is nothing to execute here"

  def install
    bin.install "true.sh"
  end

  def caveats; <<~EOS
    In order to load the Brewfile, please run the following:
      mkdir -p #{ENV['HOME']}/.vim/swap
      ln -sin #{vimrc_path} #{ENV["HOME"]}/.vimrc
      ln -sin #{plug_path} #{ENV["HOME"]}/.vim/plug.vim
  EOS
  end

  def brewfile_path
    @brewfile_path ||= File.join(HOMEBREW_PREFIX, "Cellar", name, version, "brewfile", "Brewfile")
  end

end
