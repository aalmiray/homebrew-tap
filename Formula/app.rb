# Generated with JReleaser 1.0.0 at 2022-06-30T01:48:14.277+02:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/wesome-app"
  url "https://github.com/aalmiray/app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "d46b972ab460f1f7e6e1ba6b8a209a27bd8b3c816a565bfd3f4701b6750a7f30"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.0", output
  end
end
