class PygmyGo < Formula
  desc "Amazee.io's local development helper tool"
  homepage "https://github.com/fubarhouse/pygmy-go"
  url "https://github.com/fubarhouse/pygmy-go/archive/v0.2.0.tar.gz"
  sha256 "26377fd6dc6e1b231cb7a5ee0e7d91dc1fbbf82450094ab578a867415e9f5580"
  version "v0.2.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    bin_path = buildpath/"src/github.com/fubarhouse/pygmy-go"
    bin_path.install Dir["*"]
    cd bin_path do
      system "go", "build", "-o", bin/"pygmy-go", "-ldflags", "-X main.version=#{version}", "."
    end
  end

end
