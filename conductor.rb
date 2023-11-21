class Conductor < Formula
  desc "K8s CLI tool that fills gaps in kubectl"
  homepage "https://github.com/Braundo/conductor"
  url "https://github.com/Braundo/conductor/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "722e7e6c9dd68c6094a6a4294fc4ad21e1e0867dc5543fd2b955b555e18d3fee"

  depends_on "go" => :build # Specify dependencies

  def install
    system "go", "build", "-o", "#{bin}/conductor", "./cmd/conductor"
  end

  test do
    system "#{bin}/conductor", "--version" # Replace with a test command
  end
end

