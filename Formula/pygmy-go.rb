class PygmyGo < Formula
  desc "Amazee.io's local development helper tool"
  homepage "https://github.com/fubarhouse/pygmy-go"
  url "https://github.com/fubarhouse/pygmy-go/archive/v0.3.0.tar.gz"
  sha256 "31965b17db3b1523fc7b238700a7b2d7fc7bff502b82d0c9df7364f0f1bd0f25"
  version "v0.3.0"

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
