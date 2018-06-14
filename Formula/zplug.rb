class Zplug < Formula
  desc "Configure things required by my ZSH setup"
  homepage "https://github.com/atayarani/homebrew-shell"
  url "https://github.com/atayarani/dotfiles/archive/v0.0.1.zip"
  version "0.0.1"

  depends_on "getantibody/tap/antibody"

  def install
    puts "Configuring ZSH"
end

test do
  system "true"
end
end
