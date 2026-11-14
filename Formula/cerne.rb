class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.11.0/cerne_v0.11.0_darwin_arm64"
      sha256 "7814ab744f483e18c97e69d86376a75e2da29e24b22af1788c7407e10f8f2948"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.11.0/cerne_v0.11.0_darwin_amd64"
      sha256 "a822587f68a746f865d039392a51cd3d6fd9f28fcf8b2fca9728827a6802514a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.11.0/cerne_v0.11.0_linux_arm64"
      sha256 "b1f7462e4349f3af2a3b41bda71eaadf4f4d9aea01e0afdcb20bbda6e2cd54e5"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.11.0/cerne_v0.11.0_linux_amd64"
      sha256 "872e953612774303898fe8d6cf03dcb48b02091b64ca10e71fcbe20299dd5ac4"
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
