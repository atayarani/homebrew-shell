class ConfigureBrewfile < Formula
  desc 'Set up of things I used to manually install from a Brewfile'
  homepage "https://github.com/atayarani/homebrew-shell"
  url "https://github.com/atayarani/homebrew-shell/archive/v0.0.44.tar.gz"
  
  def install
    brew bundle --file="#{ENV['HOMEBREW_FIX']}/Brewfile"
  end
end
