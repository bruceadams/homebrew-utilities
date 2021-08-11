# frozen_string_literal: true

class QueryRdsData < Formula
  desc 'Query AWS RDS Data from the command line'
  homepage 'https://github.com/bruceadams/query-rds-data'
  url 'https://github.com/bruceadams/query-rds-data/releases/download/1.2.0/query-rds-data.macos.universal'
  sha256 '55db35ca407d268634ed6e6dc753b3887ca12159cd553f3ba0aa3eb9a45e1797'

  def install
    bin.install 'query-rds-data.macos.universal' => 'query-rds-data'
    chmod 0o555, "#{bin}/query-rds-data"
  end

  test do
    system "#{bin}/query-rds-data", '--help'
  end
end
