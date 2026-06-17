class KenerCtl < Formula
  desc "Declarative CLI for Kener status pages"
  homepage "https://github.com/supporterino/kener-ctl"
  version "0.1.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supporterino/kener-ctl/releases/download/v#{version}/kener-ctl-darwin-arm64"
    else
      url "https://github.com/supporterino/kener-ctl/releases/download/v#{version}/kener-ctl-darwin-x64"
    end
  end

  sha256 arm: "0000000000000000000000000000000000000000000000000000000000000000",
          intel: "0000000000000000000000000000000000000000000000000000000000000000"

  def install
    bin.install Dir["kener-ctl-*"].first => "kener-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kener-ctl --version")
  end
end
