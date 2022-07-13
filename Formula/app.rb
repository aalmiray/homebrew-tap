# Generated with JReleaser 1.1.0 at 2022-07-13T11:13:54.112+02:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/wesome-app"
  url "https://github.com/aalmiray/app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "3c5f36884acba4f8eb2cdeeff7f17548ee0cd9e6801c5600bc5d1c44f099a68c"
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
