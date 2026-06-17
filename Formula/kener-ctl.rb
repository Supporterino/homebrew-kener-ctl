class KenerCtl < Formula
  desc "Declarative CLI for Kener status pages"
  homepage "https://github.com/supporterino/kener-ctl"
  version "0.3.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supporterino/kener-ctl/releases/download/v#{version}/kener-ctl-darwin-arm64"
      sha256 "74a733fd02b4234443294ff30307b2b38b5cc50559f6cb8b8dd6761ce430ac68"
    else
      url "https://github.com/supporterino/kener-ctl/releases/download/v#{version}/kener-ctl-darwin-x64"
      sha256 "8f9a408412a0c8794a5cb9678a3346f94c5c74500d2b2f312718fd6bcf2615a1"
    end
  end

  def install
    bin.install Dir["kener-ctl-*"].first => "kener-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kener-ctl --version")
  end
end
