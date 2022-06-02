# Generated with JReleaser 1.0.0 at 2022-06-02T19:01:09.224+02:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/wesome-app"
  url "https://github.com/aalmiray/app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "486e719bcee18f5850b70b17ec685c431209681b56c4b244a34ac05885c9cde2"
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
