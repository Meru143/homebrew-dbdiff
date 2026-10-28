# Documentation: https://docs.brew.sh/Formula-Cookbook
class Dbdiff < Formula
  desc "Compare PostgreSQL, MySQL and SQL Server schemas and generate migration SQL"
  homepage "https://github.com/Meru143/dbdiff"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.4/dbdiff_1.1.4_darwin_arm64.tar.gz"
      sha256 "5a06bc75e90b17c68056c57de04f742f3f326c2816b5bbd359e90738bb7c44c9"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.4/dbdiff_1.1.4_darwin_amd64.tar.gz"
      sha256 "e0ae967ece8bfeba25399fda62bfea0ebc42e00abe5bd6654b2cfcf2b644aa13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.4/dbdiff_1.1.4_linux_arm64.tar.gz"
      sha256 "2d8de6ebe33fc8c100dbe631079216c994701b1d088674d10657a967ff89c19f"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.4/dbdiff_1.1.4_linux_amd64.tar.gz"
      sha256 "bfbb4bf998f2c6eb780f7d949b1469e42410b8b3bd02dea185ebd5a795139f25"
    end
  end

  def install
    bin.install "dbdiff"
  end

  test do
    assert_match "dbdiff version #{version}", shell_output("#{bin}/dbdiff --version")
  end
end
