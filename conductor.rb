class Conductor < Formula
  desc "K8s CLI tool that fills gaps in kubectl"
  homepage "https://github.com/Braundo/conductor"
  url "https://github.com/Braundo/conductor/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "61cc6cfb165552bce87a90c76f3843969d9bd5ef91517066469f9e883ba21bb8"

  depends_on "go" => :build # Specify dependencies

  def install
    system "go", "build", "-o", "#{bin}/conductor", "./cmd/conductor"
  end

  test do
    system "#{bin}/conductor", "--version" # Replace with a test command
  end
end

