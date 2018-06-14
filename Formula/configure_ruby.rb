class ConfigureRuby < Formula
    desc "Configure things required by my Ruby setup"
    homepage "https://github.com/atayarani/homebrew-shell"
    url "https://github.com/atayarani/homebrew-shell/archive/v0.0.34.tar.gz"

    depends_on "rbenv"
    depends_on "rbenv-bundler"
    depends_on "ruby-build"
    depends_on "imagemagick"

    keg_only "config only", "Nothing to execute here"

    def vim_path
      @vim_path ||= File.join(HOMEBREW_PREFIX, "Cellar", name, version, "vim", "vimrc")
    end
end