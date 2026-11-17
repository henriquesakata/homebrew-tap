class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.14.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.2/cerne_v0.14.2_darwin_arm64"
      sha256 "7a6b7ebc8df5969da4da0555d4e5fd41360db55f7d28098fc719ea179b6043b2"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.2/cerne_v0.14.2_darwin_amd64"
      sha256 "aa83670f953b801dacc5d7338560304b7054859e395b3daebeb0f29da2435d12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.2/cerne_v0.14.2_linux_arm64"
      sha256 "ed2a1893ace748da154944e9a34a3d7dc018d06b22d97783446eb1ef7cf19516"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.2/cerne_v0.14.2_linux_amd64"
      sha256 "b7b30d08c9baf572e66c13fc45a2a17959d1bfbf02bd3d73bf5d5d8f491ce798"
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
