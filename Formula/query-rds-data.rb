class QueryRdsData < Formula
  desc "Query AWS RDS Data from the command line"
  homepage "https://github.com/bruceadams/query-rds-data"
  version "3.0.1"
  on_macos do
    on_arm do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v3.0.1/query-rds-data-aarch64-apple-darwin.tar.gz"
      sha256 "7002914af41f07b208da701cf952c9deeac15cfcba828c8e179a54e558840707"
    end
    on_intel do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v3.0.1/query-rds-data-x86_64-apple-darwin.tar.gz"
      sha256 "6df01ee82c0fc22831ce487b9e735a7d97e1076c768476770080d2de1380d073"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v3.0.1/query-rds-data-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef31181630c40c1ce7e0c99d25335bf92749c0c2523afdeb0813c88716da446c"
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
