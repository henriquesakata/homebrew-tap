class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.0/cerne_v0.15.0_darwin_arm64"
      sha256 "54606c5426565aedd71782ab154f5beb7dc06af143bf7f4ae99584cbc89403c4"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.0/cerne_v0.15.0_darwin_amd64"
      sha256 "902b944149c4184b23346d6770c687637e0238b60333937ab8731c3b6ff901e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.0/cerne_v0.15.0_linux_arm64"
      sha256 "d1f0999caff8be469bacb90254eb2ddbb328a8e1d146aa3e229ac1a0c7a4eb4e"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.0/cerne_v0.15.0_linux_amd64"
      sha256 "1e770b56c20017caf2403ab8e12d0ff5805146256bc7d768c17d829febcea8d5"
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
