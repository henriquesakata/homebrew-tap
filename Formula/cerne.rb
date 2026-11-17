class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.14.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.1/cerne_v0.14.1_darwin_arm64"
      sha256 "d4b7273f8328ac15f9bcdda5233f3ff678005e4ff0ffea1c29ca3972e20ff017"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.1/cerne_v0.14.1_darwin_amd64"
      sha256 "dab6781e4d0b41d7cbbb799a1765389cd6b0c85fb1bb8e28788dd67788c2fcad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.1/cerne_v0.14.1_linux_arm64"
      sha256 "eda3dc7f0d78d448375e1df2638345c37362d19bda8440a5e4018e60dc3b1b37"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.14.1/cerne_v0.14.1_linux_amd64"
      sha256 "380444bf3dc63779ee9faacb7030c47e1f444c7b11635081340006fdb160abe5"
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
