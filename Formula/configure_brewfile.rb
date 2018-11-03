class ConfigureBrewfile < Formula
  desc 'Set up of things I used to manually install from a Brewfile'
  homepage "https://github.com/atayarani/homebrew-shell"
  url "https://github.com/atayarani/homebrew-shell/archive/v0.0.53.tar.gz"

  def install
    prefix.install File.join("config", "brewfile")
  end

  def caveats;
    <<~EOS
    In order to load the Brewfile, please run the following:
      brew bundle --file=#{brewfile_path}
    EOS
  end

  def brewfile_path
    @brewfile_path ||= File.join(HOMEBREW_PREFIX, "Cellar", name, version, "brewfile", "Brewfile")
  end

  test do
    system "true"
  end
end
