class Cerne < Formula
  desc "Living documentation for projects built with AI agents"
  homepage "https://github.com/henriquesakata/cerne"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.13.0/cerne_v0.13.0_darwin_arm64"
      sha256 "6f4cc86f5eb140a61066acc554a81c5ab4e7c437209c313fba6fb0415e133686"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.13.0/cerne_v0.13.0_darwin_amd64"
      sha256 "418b94e8a7c215793f692983f62989df0c8d2b5310e0f1c7fc4c7eb0f1b6e64d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.13.0/cerne_v0.13.0_linux_arm64"
      sha256 "45b6ea6b32cd890b97ae4df2ae23ae50c618eda35cd9ec968e8c925918be0d8b"
    end
    on_intel do
      url "https://github.com/henriquesakata/cerne/releases/download/v0.13.0/cerne_v0.13.0_linux_amd64"
      sha256 "3097b62ccddc7ed467c521cd10c6e3af64b7ef495708fc4d4bbee26bc046d923"
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
