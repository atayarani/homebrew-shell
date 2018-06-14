require 'pry'
class ConfigureZsh < Formula
  desc "Configure things required by my ZSH setup"
  homepage "https://github.com/atayarani/homebrew-shell"
  url "https://github.com/atayarani/homebrew-shell/archive/v0.0.24.tar.gz"

  depends_on "zplug"
  depends_on "zsh"
  depends_on "zsh-completions"
  depends_on "zsh-syntax-highlighting"

  def install
    prefix.install File.join("config", "zsh")
    bin.install "true.sh"
  end

  def caveats; <<~EOS
    In order to load the zshrc here, please run the following:
      echo "source #{zsh_link_path}" > #{ENV["CURL_HOME"]}/.zshrc
  EOS
  end

  def zsh_link_path
    @zsh_link_path ||= File.join(prefix, "configure", "zsh", "zshrc")
  end

  test do
    system "true"
  end
end
