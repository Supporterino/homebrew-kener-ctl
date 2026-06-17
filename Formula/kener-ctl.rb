class KenerCtl < Formula
  desc "Declarative CLI for Kener status pages"
  homepage "https://github.com/supporterino/kener-ctl"
  version "0.3.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supporterino/kener-ctl/releases/download/v#{version}/kener-ctl-darwin-arm64"
      sha256 "d52f997b38c3decbf7039ba44cc187377b279a864baf3899868efeb9a0dbe8e7"
    else
      url "https://github.com/supporterino/kener-ctl/releases/download/v#{version}/kener-ctl-darwin-x64"
      sha256 "53d7ae90377818da6b13fc229bd9ab200cf08ba4997d4c86bebb7d38f00315e9"
    end
  end

  def install
    bin.install Dir["kener-ctl-*"].first => "kener-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kener-ctl --version")
  end
end
