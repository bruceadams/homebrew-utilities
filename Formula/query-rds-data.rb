# frozen_string_literal: true

class QueryRdsData < Formula
  desc 'Query AWS RDS Data from the command line'
  homepage 'https://github.com/bruceadams/query-rds-data'
  url 'https://github.com/bruceadams/query-rds-data/releases/download/2.0.1/query-rds-data.macos.universal'
  sha256 '7b3d9d94e99270e6e15b79a5907d4b1163a4ef584e72b3d2d582163fde1ce1de'

  def install
    bin.install 'query-rds-data.macos.universal' => 'query-rds-data'
    chmod 0o555, "#{bin}/query-rds-data"
  end

  test do
    system "#{bin}/query-rds-data", '--help'
  end
end
