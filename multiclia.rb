class Multiclia < Formula
  desc "Versatile CLI tool to enhance the terminal experience. MultiCLIA 3.0 Highland."
  homepage "https://github.com/Akillot/MultiCLIA"
  url "https://github.com/Akillot/MultiCLIA/releases/download/final_update/MultiCLIA-3.0-jar-with-dependencies.jar"
  sha256 "bd29c123d01b25f9be376e98985413432dea715091142807b1bb3850ae51c63f"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install "MultiCLIA-3.0-jar-with-dependencies.jar"
    bin.write_jar_script libexec/"MultiCLIA-3.0-jar-with-dependencies.jar", "multiclia"
  end

  test do
    system "#{bin}/multiclia", "--help"
  end
end
