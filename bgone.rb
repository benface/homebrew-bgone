class Bgone < Formula
  desc "Ultra-fast CLI tool for removing solid background colors from images"
  homepage "https://github.com/benface/bgone"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "f43fe2dffff76cfc4d040326dc4bf54e6b3937818d3c06a835a213a80978b10e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "18dad75737772a22f4be8df33ffca6c7ae82d90e4dc38803b9dd8be560f8588c"
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