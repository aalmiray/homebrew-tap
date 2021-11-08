class App < Formula
  desc "Sample application"
  homepage "https://acme.com/wesome-app"
  url "https://github.com/aalmiray/app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "fb45d542f4dafa05ed888cd269639533e75341788769fd23972067f3900f7df2"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.0", output
  end
end
