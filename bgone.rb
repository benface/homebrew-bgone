class Bgone < Formula
  desc "Ultra-fast CLI tool for removing solid background colors from images"
  homepage "https://github.com/benface/bgone"
  version "0.3.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "0818326a0682ed304077ebc44b6b6b2af0558d4c8561cb51f1df4673b6789e64"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "3bcf23d1bb77eabb97414938c991b8e1607865cea8944bd1dcf24e849c85c057"
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