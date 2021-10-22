class App < Formula
  desc "Sample application"
  homepage "https://acme.com/wesome-app"
  version "1.0.0"
  url "https://github.com/aalmiray/app/releases/download/v1.0.0/app-1.0.0.zip"
  sha256 "77775de9135fe37db7045bac6470d45599b6d63b01135197d9de80dc32e8f3e6"
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