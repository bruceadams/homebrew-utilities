class QueryRdsData < Formula
  desc "Query AWS RDS Data from the command line"
  homepage "https://github.com/bruceadams/query-rds-data"
  version "3.0.2"
  on_macos do
    on_arm do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v3.0.2/query-rds-data-aarch64-apple-darwin.tar.gz"
      sha256 "d95bee1ee8d6b249b80c8d08e0c4553e05f9ba2338c58081dbcdb6bf95d3e042"
    end
    on_intel do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v3.0.2/query-rds-data-x86_64-apple-darwin.tar.gz"
      sha256 "c7d1fa39df12c189efc06814988a9cb1aa90759791f0071d2ca09af7f0811452"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v3.0.2/query-rds-data-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e76844b3f1c6351da541297f027b6bcc36db071b45f67b48ea6c83a703b07eff"
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
