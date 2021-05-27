# frozen_string_literal: true

class QueryRdsData < Formula
  desc 'Query AWS RDS Data from the command line'
  homepage 'https://github.com/bruceadams/query-rds-data'
  url 'https://github.com/bruceadams/query-rds-data/releases/download/1.1.0/query-rds-data.macos.universal'
  sha256 'a498064c2293c823b8785927efbcd2c4bf62e6434ab214c0d2d48f416d5732f6'

  def install
    bin.install 'query-rds-data.macos.universal' => 'query-rds-data'
    chmod 0o555, "#{bin}/query-rds-data"
  end

  test do
    system "#{bin}/query-rds-data", '--help'
  end
end
