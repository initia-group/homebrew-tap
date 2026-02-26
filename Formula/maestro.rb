class Maestro < Formula
  desc "TUI agent dashboard for Claude Code"
  homepage "https://github.com/initia-group/maestro"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b336dbbf5514cf5d5c5c3b6dc80049b6bd13511d2a173e199fba2a3e54da2b39"
    end
    on_intel do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f20b1689a125218c6e8d1c6686391c04c34004f07550c47879bbde62f164ebc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e816ddde4110a596bd0bfe9cf4ce3a432cd37f32a49012ed9ad6d16830f4a8f7"
    end
    on_intel do
      url "https://github.com/initia-group/maestro/releases/download/v#{version}/maestro-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ecb5ed14a1d598c214d3db3a2dc4290bcd5eba874cb04447a6dbc94879abdc6"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --version")
  end
end
