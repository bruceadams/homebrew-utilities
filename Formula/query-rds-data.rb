class QueryRdsData < Formula
  desc "Query AWS RDS Data from the command line"
  homepage "https://github.com/bruceadams/query-rds-data"
  version "3.0.0"
  on_macos do
    on_arm do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v3.0.0/query-rds-data-aarch64-apple-darwin.tar.gz"
      sha256 "d1cfdd6970d5a5e7bca865ca993f9bc07a3e76c5c123f168aa9dcee12deb55e7"
    end
    on_intel do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v3.0.0/query-rds-data-x86_64-apple-darwin.tar.gz"
      sha256 "59b97d4f96cd33d676364cc305a0ca8d3fab48c4a3bc08b2c8f2bbf7fccdabc9"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v3.0.0/query-rds-data-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7143e202f548b215523f42c98cbaea318558bae8c109e337bd0f78a7095de531"
    end
  end
  license "Apache-2.0"

  def install
    on_macos do
      on_arm do
        bin.install "query-rds-data"
      end
    end
    on_macos do
      on_intel do
        bin.install "query-rds-data"
      end
    end
    on_linux do
      on_intel do
        bin.install "query-rds-data"
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
