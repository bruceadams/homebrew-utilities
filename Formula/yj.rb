# frozen_string_literal: true

class Yj < Formula
  desc 'Command line tool that converts YAML to JSON '
  homepage 'https://github.com/bruceadams/yj'
  url 'https://github.com/bruceadams/yj/releases/download/1.2.0/yj.macos.universal'
  sha256 '5c24292f2f0bafc8c6e4e7d584a229bcbc6f9bea7de5bb118f15f3197710acb2'

  def install
    bin.install 'yj.macos.universal' => 'yj'
    chmod 0o555, "#{bin}/yj"
  end

  test do
    system "#{bin}/yj", '--help'
  end
end
