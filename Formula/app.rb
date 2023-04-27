# Generated with JReleaser 1.6.0-SNAPSHOT at 2023-04-27T15:04:37.585573+02:00
class App < Formula
  desc "app -- Sample Quarkus CLI application"
  homepage "https://github.com/aalmiray/app"
  url "https://github.com/aalmiray/app/releases/download/v1.0.0.Aplha1/app-1.0.0.Aplha1-osx-x86_64.zip"
  version "1.0.0.Aplha1"
  sha256 "85c9918b23e3ac4ef64d5dd02714e241231d3f1358afdba09d3fd0b9a889e131"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.0.Aplha1", output
  end
end
