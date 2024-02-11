class AvailableEnis < Formula
  desc "Count and optionally delete available AWS Elastic Networks"
  version "0.3.0"
  on_macos do
    on_arm do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.3.0/available-enis-aarch64-apple-darwin.tar.gz"
      sha256 "b8cfb514af95d46ef0f534bb388d588c6e050f5e194cb1de10f60de4f088753a"
    end
    on_intel do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.3.0/available-enis-x86_64-apple-darwin.tar.gz"
      sha256 "fd2030cd3259be5823c02f6a3a5d4bac7521a3951e5246b6e9b53bc3b5a286a9"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.3.0/available-enis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6cb4a1833d5b40f9954a42892737ae9387f54e893414fa227250477bcde9443b"
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
