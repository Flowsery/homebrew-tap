class Flowsery < Formula
  desc "Privacy-first web analytics and session issues from your terminal"
  homepage "https://flowsery.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.1/flowsery_0.1.1_darwin_arm64.tar.gz"
      sha256 "26a95bc061e6104ca692a59ecf886d284dfeac621ce806292e7897a0281a25f3"
    end
    on_intel do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.1/flowsery_0.1.1_darwin_x64.tar.gz"
      sha256 "e2fc5ddf06bedb5f710a7e8c96da3af60a70f896d12ee03d5c1b0f9cf8a7cc8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.1/flowsery_0.1.1_linux_arm64.tar.gz"
      sha256 "ee7a0412bd325b2a9705634e979c0571ae6bbb987d1f1e2e26ffab739131a500"
    end
    on_intel do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.1/flowsery_0.1.1_linux_x64.tar.gz"
      sha256 "2335a42d9121e8cce67ce9cced185713fc899a08554f640a72560022565fbf00"
    end
  end

  def install
    bin.install "flowsery"
    bin.install_symlink bin/"flowsery" => "fsy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flowsery --version")
    assert_match "flowsery", shell_output("#{bin}/fsy --help")
  end
end
