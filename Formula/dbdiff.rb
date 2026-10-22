# Documentation: https://docs.brew.sh/Formula-Cookbook
class Dbdiff < Formula
  desc "Compare PostgreSQL, MySQL and SQL Server schemas and generate migration SQL"
  homepage "https://github.com/Meru143/dbdiff"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.0/dbdiff_1.1.0_darwin_arm64.tar.gz"
      sha256 "25ecb13ef9584fc5635c581f94622116f79186fd5e92fcf9f12a930a872c3c2f"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.0/dbdiff_1.1.0_darwin_amd64.tar.gz"
      sha256 "1836be3f64e05aae447e2b2aeb276851cc06df9dc25b76334853ae6534589a17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.0/dbdiff_1.1.0_linux_arm64.tar.gz"
      sha256 "605670f8d78d555b9cb9694551b4bd8454214dd3ce6dc957c1d47e6bd71709e4"
    else
      url "https://github.com/Meru143/dbdiff/releases/download/v1.1.0/dbdiff_1.1.0_linux_amd64.tar.gz"
      sha256 "7327c8f373e8d96903fff0b15c658965bf8479eb8d48888c38fd0c4bcf8cd795"
    end
  end

  def install
    bin.install "dbdiff"
  end

  test do
    assert_match "dbdiff version #{version}", shell_output("#{bin}/dbdiff --version")
  end
end
