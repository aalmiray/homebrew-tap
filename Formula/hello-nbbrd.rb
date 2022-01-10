# Generated with JReleaser 0.10.0 at 2022-01-10T16:37:36.114148+01:00
class HelloNbbrd < Formula
  desc "Sandbox - Binaries"
  homepage "https://github.com/nbbrd/sandbox"
  url "https://github.com/aalmiray/sandbox/releases/download/v2.0.3/hello-nbbrd-2.0.3-bin.jar", :using => :nounzip
  version "2.0.3"
  sha256 "efd3e5fb79822fd1c0a0e5d577cfda28e7cdefe834ff657450172b990ce2dbcd"
  license "European Union Public Licence (EUPL)"

  depends_on "openjdk@8"

  def install
    libexec.install "hello-nbbrd-2.0.3-bin.jar"
    bin.write_jar_script libexec/"hello-nbbrd-2.0.3-bin.jar", "hello-nbbrd"
  end

  test do
    output = shell_output("#{bin}/hello-nbbrd --version")
    assert_match "2.0.3", output
  end
end
