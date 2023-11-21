class Conductor < Formula
  desc "K8s CLI tool that fills gaps in kubectl"
  homepage "https://github.com/Braundo/conductor"
  url "https://github.com/Braundo/conductor/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "64afa48bff11a2937c6b20c031a081138db148954d676569bc4031a05c7ebbce"

  depends_on "go" => :build # Specify dependencies

  def install
    system "go", "build", "-o", "#{bin}/conductor", "./cmd/conductor"
  end

  test do
    system "#{bin}/conductor", "--version" # Replace with a test command
  end
end

