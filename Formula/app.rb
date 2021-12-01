class App < Formula
  desc "Sample application"
  homepage "https://acme.com/wesome-app"
  url "https://github.com/aalmiray/app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "bb88d8620e7c4ae53ae37542e2b3059cf7e2b2614aead73d99aa621825479e2d"
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
