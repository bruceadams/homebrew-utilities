# frozen_string_literal: true

class Yj < Formula
  desc 'Command line tool that converts YAML to JSON '
  homepage 'https://github.com/bruceadams/yj'
  url 'https://github.com/bruceadams/yj/releases/download/1.1.34/yj.macos.universal'
  sha256 'c5763ca79de7b4b71a23579b4f0e2363bac544bfc7238d3b2a99c7657a389255'

  def install
    bin.install 'yj.macos.universal' => 'yj'
    chmod 0o555, "#{bin}/yj"
  end

  test do
    system "#{bin}/yj", '--help'
  end
end
