class Bgone < Formula
  desc "Ultra-fast CLI tool for removing solid background colors from images"
  homepage "https://github.com/benface/bgone"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-x86_64-apple-darwin.tar.gz"
    sha256 ""  # Will be filled after creating release
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-aarch64-apple-darwin.tar.gz"
    sha256 ""  # Will be filled after creating release
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