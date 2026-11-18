class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.14.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.3/cerne_v0.14.3_darwin_arm64"
      sha256 "117b54863cb8f35211902d70889bc38ac8706d09fe597a77c447bf317e702f77"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.3/cerne_v0.14.3_darwin_amd64"
      sha256 "0aa9b70a707429bbe0b2aa7704232482cd76321cb70464d10f27606427137f3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.3/cerne_v0.14.3_linux_arm64"
      sha256 "fb3e8f31eb0a4fcb7b52f5d9cd86a8ffc3bbc2168f1bbaef2303690013edc344"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.3/cerne_v0.14.3_linux_amd64"
      sha256 "b9165c685b564056a316681a0095ece3b1159360bb7bab25419ef6f10c44a8ff"
    end
  end

  def install
    bin.install Dir["cerne_*"].first => "cerne"
  end

  test do
    # cerne --version prints the full version; the MAJOR.MINOR match also accepts binaries before 0.14.1 (exact check: release.yml brew-check).
    assert_match "cerne #{version.major_minor}", shell_output("#{bin}/cerne --version")
  end
end
