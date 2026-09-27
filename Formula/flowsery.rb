class Flowsery < Formula
  desc "Privacy-first web analytics and session issues from your terminal"
  homepage "https://flowsery.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.2.0/flowsery_0.2.0_darwin_arm64.tar.gz"
      sha256 "0e2469bc6fb5e7c7c3dbada025ea39bf9b50741c0917f1d63900238866397aa4"
    end
    on_intel do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.2.0/flowsery_0.2.0_darwin_x64.tar.gz"
      sha256 "cdd921e0ddd98732bd412d3da02ac4f4578e1f7880097c80e5c8e6389b9ff246"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.2.0/flowsery_0.2.0_linux_arm64.tar.gz"
      sha256 "a4913eeed73433ed63bce0687e818f4e493d12ec77b805cb9e2df877508f015e"
    end
    on_intel do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.2.0/flowsery_0.2.0_linux_x64.tar.gz"
      sha256 "66fb41ce5414496997fed4d1da45dc29d75b8ec9c49a487da1ab1c982210c089"
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
