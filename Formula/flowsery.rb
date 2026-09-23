class Flowsery < Formula
  desc "Privacy-first web analytics and session issues from your terminal"
  homepage "https://flowsery.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.3/flowsery_0.1.3_darwin_arm64.tar.gz"
      sha256 "8726138ae4bcfaeedbe27d6783070508e3f636b80e189fbf4068336e7e4856f6"
    end
    on_intel do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.3/flowsery_0.1.3_darwin_x64.tar.gz"
      sha256 "46c930063ec2c9651f1551bad152e7eb2c8011e4d0a89d4f7d432809035a3083"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.3/flowsery_0.1.3_linux_arm64.tar.gz"
      sha256 "92413bf4d85f42403c02f121eeafbb2fa501f813398a8dd10ce52f4aa96372b9"
    end
    on_intel do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.3/flowsery_0.1.3_linux_x64.tar.gz"
      sha256 "523e8987f2f8f2518f4960183cbf975c394fc44fc27ad2b22d853bccc13a5327"
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
