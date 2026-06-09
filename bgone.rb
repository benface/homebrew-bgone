class Bgone < Formula
  desc "Ultra-fast CLI tool for removing solid background colors from images"
  homepage "https://github.com/benface/bgone"
  version "0.6.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "0d9d90410decc9b2c9de9e6063ce43448dbbcbca206c486afa7d78f2b84cf408"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "bbd20ead12f1bba297e6e4de18156adfde8c66f98959298a668d5b86b9472216"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-x86_64-unknown-linux-gnu.tar.gz"
    sha256 ""  # Will be filled after creating release
  else
    odie "Unsupported platform"
  end

  def install
    bin.install "bgone"
  end

  test do
    system "#{bin}/bgone", "--version"
  end
end