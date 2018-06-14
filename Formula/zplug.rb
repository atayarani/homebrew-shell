class Zplug < Formula
  desc 'Configure things required by my ZSH setup'
  homepage 'https://github.com/atayarani/homebrew-shell'
  url 'https://github.com/atayarani/homebrew-shell/archive/v0.0.3.zip'
  version '0.0.3'

  depends_on 'zplug'

  def install
    bin.install 'true.sh'
  end

test do
	system 'true'
end
end
