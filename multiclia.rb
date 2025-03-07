class MultiClia < Formula
  desc "Versatile CLI tool to enhance the terminal experience"
  homepage "https://github.com/Akillot/MultiCLIA"
  url "https://github.com/Akillot/MultiCLIA/releases/download/v1.1.1/MultiCLIA-1.0-jar-with-dependencies.jar"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install "MultiCLIA-1.0-jar-with-dependencies.jar"
    bin.write_jar_script libexec/"MultiCLIA-1.0-jar-with-dependencies.jar", "multiclia"
  end

  test do
    system "#{bin}/multiclia", "--help"
  end
end
