class ConfigureZsh < Formula
  desc "Configure things required by my ZSH setup"
  homepage "https://github.com/atayarani/homebrew-shell"
  url "https://github.com/atayarani/homebrew-shell/archive/v0.0.17.tar.gz"

  depends_on "zplug"
  depends_on "zsh"
  depends_on "zsh-completions"
  depends_on "zsh-syntax-highlighting"

  def install
    zsh_link_path = File.join(prefix, "configure", "zsh", "zshrc")
    zsh_path = File.join(ENV["HOME"],".zshrc")
    puts zsh_link_path
    puts zsh_path
    bin.install "true.sh"
    prefix.install File.join("config", "zsh")
    File.write(zsh_path, "source #{zsh_link_path}") unless File.readable?(zsh_path)
  end

  test do
    system "true"
  end
end
