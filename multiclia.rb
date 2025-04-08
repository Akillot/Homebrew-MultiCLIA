class Multiclia < Formula
  desc "Versatile CLI tool to enhance the terminal experience"
  homepage "https://github.com/Akillot/MultiCLIA"
  url "https://github.com/Akillot/MultiCLIA/releases/download/java/MultiCLIA-1.0-jar-with-dependencies.jar"
  sha256 "dcc898549202d78faaa7189cbd7ff0ccf598d56688778af4285db8ebc01fdc95"
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
