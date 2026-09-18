class Flowsery < Formula
  desc "Privacy-first web analytics and session issues from your terminal"
  homepage "https://flowsery.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.2/flowsery_0.1.2_darwin_arm64.tar.gz"
      sha256 "81c32bfd9c8376782ea5bae22119c70f21ee13c9f5ade022f70c663edb57e70c"
    end
    on_intel do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.2/flowsery_0.1.2_darwin_x64.tar.gz"
      sha256 "d42dc3b8b4178831008bcb8d07ef3d7de0df5734663f7e1697f31f8d3513c95c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.2/flowsery_0.1.2_linux_arm64.tar.gz"
      sha256 "44d090bd0d89b2395a233aedd1971c21514d9e8e14f6c24c9b287abde2184ef1"
    end
    on_intel do
      url "https://github.com/Flowsery/flowsery-cli/releases/download/v0.1.2/flowsery_0.1.2_linux_x64.tar.gz"
      sha256 "9c3f4a80870178087b7a9ba2be7499efeb5f5f3c6347672e98949894998af7d5"
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
