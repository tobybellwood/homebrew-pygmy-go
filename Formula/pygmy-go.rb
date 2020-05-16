class PygmyGo < Formula
  desc "Amazee.io's local development helper tool"
  homepage "https://github.com/fubarhouse/pygmy-go"
  version "v0.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.3.0/pygmy-go-darwin"
    sha256 "4907dcb42f5a9d3c2ff366b65c786a626a8e3e63a28ca6908914e5df4a966f9f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.3.0/pygmy-go-linux-x86"
      sha256 "71ae9623b0e16312d4bbd58e6d7c8487831a0e8b0420be0e9a515295c418b971"
    end
  end

  def install
    bin.install "pygmy-go"
  end

  test do
    system "#{bin}/pygmy-go --version"
  end
end
