class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.15.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.1/cerne_v0.15.1_darwin_arm64"
      sha256 "9f015c82f2e3f34421a26d1867828536a55c091a0f4d761975225c814788dd6d"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.1/cerne_v0.15.1_darwin_amd64"
      sha256 "1decc98753e56fdb221f3e65d7b73308e0f141accdd53ef83120d8885ca8c463"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.1/cerne_v0.15.1_linux_arm64"
      sha256 "32e87891e2de97875317c33550f92774d6d91c34fb358c51d349122b870c2da6"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.15.1/cerne_v0.15.1_linux_amd64"
      sha256 "4561b95838049f6f52628c3ee74238d4de12285d1234da8618a3f6ce600c2c73"
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
