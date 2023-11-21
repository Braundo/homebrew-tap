class Conductor < Formula
  desc "K8s CLI tool that fills gaps in kubectl"
  homepage "https://github.com/Braundo/conductor"
  url "https://github.com/Braundo/conductor/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "c607145238d6c5740786d27af7f7a682c4168f79089f1f785385a38e6ef3bbd4"

  depends_on "go" => :build # Specify dependencies

  def install
    system "go", "build", "-o", "#{bin}/conductor", "./cmd/conductor"
  end

  test do
    system "#{bin}/conductor", "--version" # Replace with a test command
  end
end

