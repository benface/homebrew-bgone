class Bgone < Formula
  desc "Ultra-fast CLI tool for removing solid background colors from images"
  homepage "https://github.com/benface/bgone"
  version "0.5.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "0035ba3d74daba367a49005875771cc37884dfde918d2584f98065b0999c7e26"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "985c34d524bf2b2b0914cb7713b90aa97f0cf0ba6997435524f4903b018b0ff4"
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