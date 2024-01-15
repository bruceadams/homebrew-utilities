class AvailableEnis < Formula
  desc "Count and optionally delete available AWS Elastic Networks"
  version "0.2.0"
  on_macos do
    on_arm do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.2.0/available-enis-aarch64-apple-darwin.tar.xz"
      sha256 "d68ab3b9cd8d3ad7df32530b127f5dd8b2058733013bada5915e0e83bcdd96db"
    end
    on_intel do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.2.0/available-enis-x86_64-apple-darwin.tar.xz"
      sha256 "8396668e099587d7a4fe096dfec064bc9d6424ceb730e9880bd795a3b1207d2a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.2.0/available-enis-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "2100ddf067e4987c21d3572436801b5148ff3a183c145ef33a1365793f939662"
    end
  end
  license "MIT OR Apache-2.0"

  def install
    bin.install "available-enis"

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
