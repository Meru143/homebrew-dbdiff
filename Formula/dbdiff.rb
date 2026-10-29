# Documentation: https://docs.brew.sh/Formula-Cookbook
class Dbdiff < Formula
  desc "Compare PostgreSQL, MySQL and SQL Server schemas and generate migration SQL"
  homepage "https://github.com/Meru143/dbdiff"
  version "1.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.5/dbdiff_1.1.5_darwin_arm64.tar.gz"
      sha256 "c02399045b993b10d1151aff664817579db61c91a9563c9015dc81a018d724a5"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.5/dbdiff_1.1.5_darwin_amd64.tar.gz"
      sha256 "f39336b6562405b3dd8e6ce68b5bad794369ce2f70e43993e1dd323b75e97c49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.5/dbdiff_1.1.5_linux_arm64.tar.gz"
      sha256 "41a3c13492f8ec6456729c2969145719a270f2d3e24b6208ffcfe15ffffcdc7a"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.5/dbdiff_1.1.5_linux_amd64.tar.gz"
      sha256 "b2bde7c5ec10947f32f14c4c85586094e3a89695b52e02a806fafbdcf05d06bf"
    end
  end

  def install
    bin.install "dbdiff"
  end

  test do
    assert_match "dbdiff version #{version}", shell_output("#{bin}/dbdiff --version")
  end
end
