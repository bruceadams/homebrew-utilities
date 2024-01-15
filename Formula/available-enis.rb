class AvailableEnis < Formula
  desc "Count and optionally delete available AWS Elastic Networks"
  version "0.2.1"
  on_macos do
    on_arm do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.2.1/available-enis-aarch64-apple-darwin.tar.xz"
      sha256 "02b6602f2e62ea3f6948d9232df0b4f472fb5b4136f3659c59f4d288e9146231"
    end
    on_intel do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.2.1/available-enis-x86_64-apple-darwin.tar.xz"
      sha256 "30ea8c3edac7f9f90d91f31e0a49a2b1e70247ff334517eb627ea6574a6a8648"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/bruceadams/available-enis/releases/download/v0.2.1/available-enis-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "91955f93818480e4bf2a9ebc499bf4851fe2104f01f9dae853d8ae2c61e1b3bb"
    end
  end
  license "MIT OR Apache-2.0"

  def install
    bin.install "available-enis"

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
