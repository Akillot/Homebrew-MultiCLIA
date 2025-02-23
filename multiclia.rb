class Multiclia < Formula
  desc "MultiCLIA — convenient console manager"
  homepage "https://github.com/Akillot/MultiCLIA"
  url "https://github.com/ТВОЙ_ГИТХАБ/multiclia/releases/download/v1.0.0/multiclia-1.0.0-macos.tar.gz"
  sha256 "СЮДА_НУЖНО_ВСТАВИТЬ_SHA256_ТВОЕГО_АРХИВА"
  license "MIT"

  depends_on "openjdk@17"  # Указываем, что нужна Java 17

  def install
    libexec.install Dir["*"]
    (bin/"multiclia").write <<~EOS
      #!/bin/bash
      export JAVA_HOME=$(brew --prefix openjdk@17)
      exec "$JAVA_HOME/bin/java" -jar "#{libexec}/multiclia.jar" "$@"
    EOS
    chmod 0755, bin/"multiclia"
  end

  test do
    system "#{bin}/multiclia", "--version"
  end
end
