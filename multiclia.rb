class Multiclia < Formula
  desc "Versatile CLI tool to enhance the terminal experience"
  homepage "https://github.com/Akillot/MultiCLIA"
  url "https://github.com/Akillot/MultiCLIA/releases/download/java/MultiCLIA-1.2-jar-with-dependencies.jar"
  sha256 "819ec0a6710fcda441d0a870488f373565b8d99296cff6f8e73efec7f363ed41"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install "MultiCLIA-1.2-jar-with-dependencies.jar"
    bin.write_jar_script libexec/"MultiCLIA-1.2-jar-with-dependencies.jar", "multiclia"
  end

  test do
    system "#{bin}/multiclia", "--help"
  end
end
