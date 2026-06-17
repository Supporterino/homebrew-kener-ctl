class KenerCtl < Formula
  desc "Declarative CLI for Kener status pages"
  homepage "https://github.com/supporterino/kener-ctl"
  version "0.2.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supporterino/kener-ctl/releases/download/v#{version}/kener-ctl-darwin-arm64"
      sha256 "1607487d71d3f0411f59f816a483f3638eecccefdea63e47391a1c111348105a"
    else
      url "https://github.com/supporterino/kener-ctl/releases/download/v#{version}/kener-ctl-darwin-x64"
      sha256 "4828437c677c4b036fe5c1aabaeb92c84dbfbff792bce0c6e4caa3e5a5b2acec"
    end
  end

  def install
    bin.install Dir["kener-ctl-*"].first => "kener-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kener-ctl --version")
  end
end
