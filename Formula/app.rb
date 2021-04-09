class App < Formula
  desc "Awesome App"
  homepage "https://acme.com/app"
  version "1.0.0"
  url "https://github.com/aalmiray/app/releases/download/v1.0.0/app-1.0.0.zip"
  sha256 "ef9ef38dc45b9ee514cd6f765f5645bb01e709517ba4775b9d30e6133d8c9d3f"
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