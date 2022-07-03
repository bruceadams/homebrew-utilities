# frozen_string_literal: true

class Yj < Formula
  desc 'Command line tool that converts YAML to JSON '
  homepage 'https://github.com/bruceadams/yj'
  url 'https://github.com/bruceadams/yj/releases/download/v1.2.2/yj.macos.universal'
  sha256 '238d03a2e0be870dfd814a153026a412402d1f2b30161f9364ceed656b6472d4'

  def install
    bin.install 'yj.macos.universal' => 'yj'
    chmod 0o555, "#{bin}/yj"
  end

  test do
    system "#{bin}/yj", '--help'
  end
end
