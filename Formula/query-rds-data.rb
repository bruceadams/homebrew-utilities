# frozen_string_literal: true

class QueryRdsData < Formula
  desc 'Query AWS RDS Data from the command line'
  homepage 'https://github.com/bruceadams/query-rds-data'
  url 'https://github.com/bruceadams/query-rds-data/releases/download/1.2.3/query-rds-data.macos.universal'
  sha256 'e9ec508bf19fcf87b89d9490c3ba3da37bb5734d275f9496a2a5d4f497b5dbd5'

  def install
    bin.install 'query-rds-data.macos.universal' => 'query-rds-data'
    chmod 0o555, "#{bin}/query-rds-data"
  end

  test do
    system "#{bin}/query-rds-data", '--help'
  end
end
