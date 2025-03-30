class SqsStatus < Formula
  desc "List the status of AWS SQS queues"
  homepage "https://github.com/bruceadams/sqs-status"
  version "0.3.3"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/bruceadams/sqs-status/releases/download/v0.3.3/sqs-status-aarch64-apple-darwin.tar.gz"
      sha256 "c00549e4bd734c8b04064a34fbe65e4e20fb969d8a858927df1199ab15015685"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bruceadams/sqs-status/releases/download/v0.3.3/sqs-status-x86_64-apple-darwin.tar.gz"
      sha256 "8a90ecb40d0a40983a5ec801676531dd47054549b6c6207d82cbb7f6eb630805"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/bruceadams/sqs-status/releases/download/v0.3.3/sqs-status-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80c30d4cee2ae8cd432463824cb9b2dab07d2ed5940f6e850964269d1e10de69"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bruceadams/sqs-status/releases/download/v0.3.3/sqs-status-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f06fae8d1265aaa10614a997e4d3eb8b7b728b4b7fa8cbc828cd15611de3fd65"
    end
  end
  license any_of: ["MIT", "Apache-2.0"]

  BINARY_ALIASES = {
    "aarch64-apple-darwin":              {},
    "aarch64-unknown-linux-gnu":         {},
    "x86_64-apple-darwin":               {},
    "x86_64-pc-windows-gnu":             {},
    "x86_64-unknown-linux-gnu":          {},
    "x86_64-unknown-linux-musl-dynamic": {},
    "x86_64-unknown-linux-musl-static":  {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    bin.install "sqs-status" if OS.mac? && Hardware::CPU.arm?
    bin.install "sqs-status" if OS.mac? && Hardware::CPU.intel?
    bin.install "sqs-status" if OS.linux? && Hardware::CPU.arm?
    bin.install "sqs-status" if OS.linux? && Hardware::CPU.intel?

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
