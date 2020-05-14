class PygmyGo < Formula
  desc "Amazee.io's local development helper tool"
  homepage "https://github.com/fubarhouse/pygmy-go"
  url "https://github.com/fubarhouse/pygmy-go/archive/v0.3.0.tar.gz"
  sha256 "cbe411eb2fbc870440d859ad20855d0e73b1fade9f303836056140df8af7e88c"
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
