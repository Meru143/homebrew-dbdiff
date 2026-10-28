# Documentation: https://docs.brew.sh/Formula-Cookbook
class Dbdiff < Formula
  desc "Compare PostgreSQL, MySQL and SQL Server schemas and generate migration SQL"
  homepage "https://github.com/Meru143/dbdiff"
  version "1.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.3/dbdiff_1.1.3_darwin_arm64.tar.gz"
      sha256 "90c2cdf097d7da67273dcb2be1e6794d260a7681a21b0004d8094facd25ce3e7"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.3/dbdiff_1.1.3_darwin_amd64.tar.gz"
      sha256 "3185e3ed873ca530482cd194c435cbd49d32e682b8faa05a69ba7a96e92eecfb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.3/dbdiff_1.1.3_linux_arm64.tar.gz"
      sha256 "e05c2323203b44659cfbd86552784bfd286d63ce4b3fabae8091fdfed961d0ac"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.3/dbdiff_1.1.3_linux_amd64.tar.gz"
      sha256 "02f4bc74757364fc0c4db8abb7eb0ba70b50cce57fd37fc19109adcf5923b409"
    end
  end

  def install
    bin.install "dbdiff"
  end

  test do
    assert_match "dbdiff version #{version}", shell_output("#{bin}/dbdiff --version")
  end
end
