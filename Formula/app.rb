class App < Formula
  desc "Sample application"
  homepage "https://acme.com/wesome-app"
  version "1.0.0"
  url "https://github.com/aalmiray/app/releases/download/v1.0.0/app-1.0.0.zip"
  sha256 "0231b6d6723dfc6dab3af0e01d79aef179ffd42fa5ffcde2b2a17ed80e256b59"
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