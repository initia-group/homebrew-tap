class Maestro < Formula
  desc "TUI agent dashboard for Claude Code"
  homepage "https://github.com/initia-group/maestro"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2a08844a6ee51fa7971e0ede131a63b631d41ede2ea15b33f8928f3bbfa24c9a"
    end
    on_intel do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ea66426b3a34e825d7083a18244757b30b312102c37f6662a29dd2d5c28371af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a04dcf70fc20efee94e7f52cec9d293f1146c34a2fed36e2da81d5d5f7839a6"
    end
    on_intel do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9eee4e0b26503a517b6e3d710c6282fc5664c92524c9c802ebae38e13142786c"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --version")
  end
end
