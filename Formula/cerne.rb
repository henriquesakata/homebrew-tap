class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.12.0/cerne_v0.12.0_darwin_arm64"
      sha256 "06cc17dcf5b2add36c4cc1c2ec83d7f396b839709ee92ef3c49692800525ee83"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.12.0/cerne_v0.12.0_darwin_amd64"
      sha256 "a8d8108eb566e82bec4522985dbfdfba19dffb1317103a61fc6a84d56113c444"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.12.0/cerne_v0.12.0_linux_arm64"
      sha256 "7290e71b82c1b99fd0f8d508b4d7d299047dba8413368ce3966caa0d13e17d33"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.12.0/cerne_v0.12.0_linux_amd64"
      sha256 "c59dd1c8442cfd6c9011501ac4573c3ea97aecfb2e6093815063970280263f09"
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
