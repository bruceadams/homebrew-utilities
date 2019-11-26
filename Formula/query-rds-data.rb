# frozen_string_literal: true

class QueryRdsData < Formula
  desc 'Query AWS RDS Data from the command line'
  homepage ''
  url 'https://github.com/bruceadams/query-rds-data/releases/download/0.5.1/query-rds-data.macos'
  sha256 'b4a6fc34d78ed71d542839b772793fbd5f8df15d1a9f0c7fa2ee2b98b5cb0da3'

  def install
    bin.install 'query-rds-data.macos' => 'query-rds-data'
    chmod 0o555, "#{bin}/query-rds-data"
  end

  test do
    system "#{bin}/query-rds-data", '--help'
  end
end
