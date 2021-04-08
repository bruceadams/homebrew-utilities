# frozen_string_literal: true

class Yj < Formula
  desc 'Command line tool that converts YAML to JSON '
  homepage 'https://github.com/bruceadams/yj'
  url 'https://github.com/bruceadams/yj/releases/download/1.1.33/yj.macos.universal'
  sha256 'cab844de958f64c7ccef549f8ba338a47a1f60587c9521ffa0dd459cce82f44c'

  def install
    bin.install 'yj.macos.universal' => 'yj'
    chmod 0o555, "#{bin}/yj"
  end

  test do
    system "#{bin}/yj", '--help'
  end
end
