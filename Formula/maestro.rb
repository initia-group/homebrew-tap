class Maestro < Formula
  desc "TUI agent dashboard for Claude Code"
  homepage "https://github.com/initia-group/maestro"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "maestro-v0.1.2-aarch64-apple-darwin.tar.gz.sha256:de3b09a506e82341202f670ba121414dc2a1066050adb756ca1f77bc1c92b6c9"
    end
    on_intel do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "maestro-v0.1.2-x86_64-apple-darwin.tar.gz.sha256:dbb171094f88e6c524c036b4c4e9a00c354e3341600714d44f8c53aad50d5464"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "maestro-v0.1.2-aarch64-unknown-linux-gnu.tar.gz.sha256:8db7fa6f5f27916e4b83856d926558e9c38d12e6c9fa0dd43e57ff8720c9311d"
    end
    on_intel do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "maestro-v0.1.2-x86_64-unknown-linux-gnu.tar.gz.sha256:2b7e8437cb621f359dacca457a550421f54b1df332864eb310a456ea1cf0e568"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --version")
  end
end
