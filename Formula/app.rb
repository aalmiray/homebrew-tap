class App < Formula
  desc "Sample application"
  homepage "https://github.com/aalmiray/app"
  version "1.0.0"
  url "https://github.com/aalmiray/app/releases/download/v1.0.0/app-1.0.0.zip"
  sha256 "b8932865872a0ee2a99e6615d6972ad7593b8cc5091c06e15db15f389a6e5555"
  license "Apache-2.0"

  bottle :unneeded

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