# Generated with JReleaser 0.10.0 at 2022-01-10T16:37:36.114148+01:00
class HellowNbbrd < Formula
  desc "Sandbox - Binaries"
  homepage "https://github.com/nbbrd/sandbox"
  url "https://github.com/aalmiray/sandbox/releases/download/v2.0.3/hellow-nbbrd-2.0.3-bin.jar", :using => :nounzip
  version "2.0.3"
  sha256 "9ac55f993ebf46db89fe74fff7514cc3e47aa0b504a237984478d9f8a2d4e859"
  license "European Union Public Licence (EUPL)"

  depends_on "openjdk@8"

  def install
    libexec.install "hellow-nbbrd-2.0.3-bin.jar"
    bin.write_jar_script libexec/"hellow-nbbrd-2.0.3-bin.jar", "hellow-nbbrd"
  end

  test do
    output = shell_output("#{bin}/hellow-nbbrd --version")
    assert_match "2.0.3", output
  end
end
