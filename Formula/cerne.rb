class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.16.0/cerne_v0.16.0_darwin_arm64"
      sha256 "c2a396d35d2e5f5cd25c0980b107a0cfb6f2111858b6172865f3f7a1bbfb373e"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.16.0/cerne_v0.16.0_darwin_amd64"
      sha256 "c6f6bb430a15630c25c2058ca1dfc3ae2182587ec9e4663ce9b24bb29ad68ce6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.16.0/cerne_v0.16.0_linux_arm64"
      sha256 "14f996b6c832de001a7e8f5eebdaddbc338a41cca0eea11ea741fd62938cb97a"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.16.0/cerne_v0.16.0_linux_amd64"
      sha256 "98d84e796f0c5a55ce4fa044837b1333a37377faa0b4de32ecc31a187c7bbe59"
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
