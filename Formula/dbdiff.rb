# This file is automatically updated by GoReleaser
# Documentation: https://brew.sh/Formula-Cookbook
class Dbdiff < Formula
  desc "PostgreSQL schema comparison and migration tool"
  homepage "https://github.com/meru143/dbdiff"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meru143/dbdiff/releases/download/v0.1.0/dbdiff_v0.1.0_darwin_arm64.tar.gz"
      sha256 "TODO: add sha256"
    else
      url "https://github.com/meru143/dbdiff/releases/download/v0.1.0/dbdiff_v0.1.0_darwin_amd64.tar.gz"
      sha256 "TODO: add sha256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meru143/dbdiff/releases/download/v0.1.0/dbdiff_v0.1.0_linux_arm64.tar.gz"
      sha256 "TODO: add sha256"
    else
      url "https://github.com/meru143/dbdiff/releases/download/v0.1.0/dbdiff_v0.1.0_linux_amd64.tar.gz"
      sha256 "TODO: add sha256"
    end
  end

  def install
    bin.install "dbdiff"
  end

  test do
    assert_match "dbdiff version", shell_output("#{bin}/dbdiff --version")
  end
end
