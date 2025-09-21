class Bgone < Formula
  desc "Ultra-fast CLI tool for removing solid background colors from images"
  homepage "https://github.com/benface/bgone"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "df35dd84e27036c638ac86fb8a0047ea32ad6e69bdd5e161f0535a95e91e5717"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/benface/bgone/releases/download/v#{version}/bgone-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "f8f219607522b5b8071d52d853864d31f090424bf70e622be9317c50156732b4"
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