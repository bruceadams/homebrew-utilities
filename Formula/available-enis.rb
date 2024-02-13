class AvailableEnis < Formula
  desc "Count and optionally delete available AWS Elastic Networks"
  version "0.3.1"
  on_macos do
    on_arm do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.3.1/available-enis-aarch64-apple-darwin.tar.gz"
      sha256 "b617e7fb49f2f702eba82517ba26eacec8ddbad1b713de1477d3ac9d30767304"
    end
    on_intel do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.3.1/available-enis-x86_64-apple-darwin.tar.gz"
      sha256 "b4c19a1dbb4fb0eea4fb140d762057c71681441d7ad8a7c57ea383773de5cf81"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.3.1/available-enis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70f0667c7fa70ea39229b82bd55d40f6e5d9f69c8aabd55a017f5e89a70d996e"
    end
  end
  license "MIT OR Apache-2.0"

  def install
    on_macos do
      on_arm do
        bin.install "available-enis"
      end
    end
    on_macos do
      on_intel do
        bin.install "available-enis"
      end
    end
    on_linux do
      on_intel do
        bin.install "available-enis"
      end
    end

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
