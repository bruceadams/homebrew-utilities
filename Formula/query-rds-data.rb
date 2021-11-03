# frozen_string_literal: true

class QueryRdsData < Formula
  desc 'Query AWS RDS Data from the command line'
  homepage 'https://github.com/bruceadams/query-rds-data'
  url 'https://github.com/bruceadams/query-rds-data/releases/download/1.2.2/query-rds-data.macos.universal'
  sha256 'f8fc826d2a3ad5b14db37e18ded7d710b791f26afa457adc2f44a1970b91c449'

  def install
    bin.install 'query-rds-data.macos.universal' => 'query-rds-data'
    chmod 0o555, "#{bin}/query-rds-data"
  end

  test do
    system "#{bin}/query-rds-data", '--help'
  end
end
