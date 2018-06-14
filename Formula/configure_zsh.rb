class ConfigureZsh < Formula
  version "0.0.11"
  desc "Configure things required by my ZSH setup"
  homepage "https://github.com/atayarani/homebrew-shell"
  url "https://github.com/atayarani/homebrew-shell/archive/v#{self.version}.tar.gz"

  depends_on "zplug"
  depends_on "zsh"
  depends_on "zsh-completions"
  depends_on "zsh-syntax-highlighting"

  def install
  zsh_path = File.join("/","usr","local","Cellar","configure_zsh", self.version, "zsh", "zshrc")
    bin.install "true.sh"
    prefix.install File.join("config", "zsh")
        File.write("/Users/ali/.zshrc", "source #{zsh_path}") unless File.readable?("/Users/ali/.zshrc")
  end

test do
	system "true"
end
end
