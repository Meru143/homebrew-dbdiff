# Documentation: https://docs.brew.sh/Formula-Cookbook
class Dbdiff < Formula
  desc "Compare PostgreSQL, MySQL and SQL Server schemas and generate migration SQL"
  homepage "https://github.com/Meru143/dbdiff"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.2/dbdiff_1.1.2_darwin_arm64.tar.gz"
      sha256 "e65c0aabb7dab0abbb17767e9b7d5f9dc946a6308b06db0aba25e481144a88ed"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.2/dbdiff_1.1.2_darwin_amd64.tar.gz"
      sha256 "dc25c245551a4d5d3c616877ca2275378e83a5156eef8822dd55b0cb8803eae8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.2/dbdiff_1.1.2_linux_arm64.tar.gz"
      sha256 "86182fa974ec50746b0d8d82d73c73b84d7d18011f6d779d7cdc83a2d9bbd461"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.2/dbdiff_1.1.2_linux_amd64.tar.gz"
      sha256 "c288dafa6ab5ce0d808d1a0acc91ade15365393a567e883d2dc756c4ad8509e9"
    end
  end

  def install
    bin.install "dbdiff"
  end

  test do
    assert_match "dbdiff version #{version}", shell_output("#{bin}/dbdiff --version")
  end
end
