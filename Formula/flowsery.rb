class Flowsery < Formula
  desc "Privacy-first web analytics and session issues from your terminal"
  homepage "https://flowsery.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.0/flowsery_0.1.0_darwin_arm64.tar.gz"
      sha256 "0669c18081449791f8cf23db4cb1b4a2d7aef1c5893f836e64dab62c912172b2"
    end
    on_intel do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.0/flowsery_0.1.0_darwin_x64.tar.gz"
      sha256 "71a77debde752ba28017147079f8b852ccf3f8dc8bff00bea698a857548bf8ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.0/flowsery_0.1.0_linux_arm64.tar.gz"
      sha256 "8103f1e18ad39d0f8b67029fbbd57a80dfd60c970247ab6f876894f2bf5eed4e"
    end
    on_intel do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.0/flowsery_0.1.0_linux_x64.tar.gz"
      sha256 "df977403718d260b17105b66720be127a0ab5f6e9d50ef520bbc1c8dd29a5ab5"
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
