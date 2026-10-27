# Documentation: https://docs.brew.sh/Formula-Cookbook
class Dbdiff < Formula
  desc "Compare PostgreSQL, MySQL and SQL Server schemas and generate migration SQL"
  homepage "https://github.com/Meru143/dbdiff"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.1/dbdiff_1.1.1_darwin_arm64.tar.gz"
      sha256 "5b6ed8caa0ccb896d1849116def6a7d95f45d92a0289539db5ad35c95ec403ce"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.1/dbdiff_1.1.1_darwin_amd64.tar.gz"
      sha256 "b98929f8c9a7279af6a896d2883495b0ae1a1bdd03144fc2c8e2e416902c5d54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.1/dbdiff_1.1.1_linux_arm64.tar.gz"
      sha256 "ed9946357edbba0e2ce827ab8b4b97768744652ff791de01c6d89a4c57a6c7e2"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.1/dbdiff_1.1.1_linux_amd64.tar.gz"
      sha256 "6d5816f3ba2ae202a005f48c0dd7781b2dcd94879ac0a50cd0eb3b259b497187"
    end
  end

  def install
    bin.install "dbdiff"
  end

  test do
    assert_match "dbdiff version #{version}", shell_output("#{bin}/dbdiff --version")
  end
end
