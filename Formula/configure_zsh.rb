class ConfigureZsh < Formula
  desc 'Configure things required by my ZSH setup'
  homepage 'https://github.com/atayarani/homebrew-shell'
  url 'https://github.com/atayarani/homebrew-shell/archive/v0.0.8.zip'
  version '0.0.8'

  depends_on 'zplug'
  depends_on 'zsh'
  depends_on 'zsh-completions'
  depends_on 'zsh-syntax-highlighting'

  def install
    bin.install 'true.sh'
    prefix.install Dir['config/zsh']
  end

test do
	system 'true'
end
end
