class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.10.0/cerne_v0.10.0_darwin_arm64"
      sha256 "80e63522f95bba66325017a07831a74ecdeff4101144ff31dca02d697e66416b"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.10.0/cerne_v0.10.0_darwin_amd64"
      sha256 "ecfc6cc3903f1761cbadb5f2e05d836efe791ac1a94277668b05f610fb0ba35e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.10.0/cerne_v0.10.0_linux_arm64"
      sha256 "5accccbcab178155514395ca1a43390cab7829ff9c28e9b8c4d24b2b60442bfc"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.10.0/cerne_v0.10.0_linux_amd64"
      sha256 "86b52216c6983a01d708a9cc417270dd3d28162776d3aeb9712f56fce9985036"
    end
  end

  def install
    bin.install Dir["cerne_*"].first => "cerne"
  end

  test do
    # cerne --version prints MAJOR.MINOR ("cerne 0.10").
    assert_match "cerne #{version.major_minor}", shell_output("#{bin}/cerne --version")
  end
end
