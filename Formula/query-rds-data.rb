class QueryRdsData < Formula
  desc "Query AWS RDS Data from the command line"
  homepage "https://github.com/bruceadams/query-rds-data"
  version "4.0.1"
  on_macos do
    on_arm do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v4.0.1/query-rds-data-aarch64-apple-darwin.tar.gz"
      sha256 "ef2f513b8834be3b3723010a80b4e9aaf0c53086d16c1265a9ab2a987f337e09"
    end
    on_intel do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v4.0.1/query-rds-data-x86_64-apple-darwin.tar.gz"
      sha256 "87d9682d0eb36017b7f37a44250704101ef03a79b823433d917e8626801a863a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/bruceadams/query-rds-data/releases/download/v4.0.1/query-rds-data-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95dd1c51a27d6d2d2554a10980cc0696e15bdc89ebbac56ff18d4fe7e3807eed"
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
