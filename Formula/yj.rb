# frozen_string_literal: true

class Yj < Formula
  desc 'Command line tool that converts YAML to JSON '
  homepage 'https://github.com/bruceadams/yj'
  url 'https://github.com/bruceadams/yj/releases/download/1.1.0/yj.macos'
  sha256 '03f56bbc94730246a59267e0ba4bb051b02dac25bdcfb7d61b77c5c011301f9d'

  def install
    bin.install 'yj.macos' => 'yj'
    chmod 0o555, "#{bin}/yj"
  end

  test do
    system "#{bin}/yj", '--help'
  end
end
