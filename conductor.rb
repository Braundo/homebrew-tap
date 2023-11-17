class Conductor < Formula
  desc "K8s CLI tool that fills gaps in kubectl"
  homepage "https://github.com/Braundo/conductor"
  url "https://github.com/Braundo/conductor/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "6602f2337a169911f2c33dbc21e9d42a3c912819d3cd984447fee9d944ac716e"

  depends_on "go" => :build # Specify dependencies

  def install
    system "go", "build", "-o", "#{bin}/conductor", "./cmd/conductor"
  end

  test do
    system "#{bin}/conductor", "--version" # Replace with a test command
  end
end

