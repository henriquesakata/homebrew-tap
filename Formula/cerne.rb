class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.0/cerne_v0.14.0_darwin_arm64"
      sha256 "9af40e190771534681ae21abab4c8681e87bdeb3a13a502b88914f0315cc0fc0"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.0/cerne_v0.14.0_darwin_amd64"
      sha256 "cedf70c2bf45d726c28173e3c8f8d58ababa924a9a61e2a0ef7cd70052ce9343"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.0/cerne_v0.14.0_linux_arm64"
      sha256 "da69a7aecbb695b4b40556c728582cdb14e1c98b3ab7e18045b60f5bf87d91cb"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.0/cerne_v0.14.0_linux_amd64"
      sha256 "07c394fc6b48e2ca3cfb4fc0d629654a1daba637d730290991c6f227a7819c88"
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
