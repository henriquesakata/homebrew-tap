class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.15.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.2/cerne_v0.15.2_darwin_arm64"
      sha256 "a68fbd37b3515ed0c4510ae615b2194309698eb1e65636c0998e77c27d47fd03"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.2/cerne_v0.15.2_darwin_amd64"
      sha256 "9d930b6b3bce5a75d5624ebba99dfea6062fd15783b56471dc9aee453eb0bbcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.2/cerne_v0.15.2_linux_arm64"
      sha256 "6082f1b498d11897e2f621c5e4f5ceffa5d704e463ea8608147d67c5c4224983"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.2/cerne_v0.15.2_linux_amd64"
      sha256 "d8bb6c6e009b7ad34d81c2215876dd6981b6fdfe8f73c08e8c8adf4d2fca3f98"
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
