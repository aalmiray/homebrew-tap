class App < Formula
  desc "Sample application"
  homepage "https://acme.com/wesome-app"
  version "1.0.0"
  url "https://github.com/aalmiray/app/releases/download/v1.0.0/app-1.0.0.zip"
  sha256 "ee3b49a6a45bf4103e935daa0de831bdd6f68199648778f0f81ab8466d5302c1"
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