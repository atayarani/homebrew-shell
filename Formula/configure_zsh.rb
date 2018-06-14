class ConfigureZsh < Formula
  ver = 'v0.0.9'
  zsh_path = File.join('/','usr','local','Cellar','configure_zsh', ver.tr('v',''), 'zsh', 'zshrc')
  desc 'Configure things required by my ZSH setup'
  homepage 'https://github.com/atayarani/homebrew-shell'
  url "https://github.com/atayarani/homebrew-shell/archive/#{ver}.zip"
  version ver

  depends_on 'zplug'
  depends_on 'zsh'
  depends_on 'zsh-completions'
  depends_on 'zsh-syntax-highlighting'

  def install
    bin.install 'true.sh'
    prefix.install Dir['config/zsh']
        File.write('/Users/ali/.zshrc', "source #{zsh_path}") unless File.readable?('/Users/ali/.zshrc')
  end

test do
	system 'true'
end
end
