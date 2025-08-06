class Komocli < Formula
  desc "Komodor CLI tool"
  homepage "https://github.com/komodorio/komocli"
  version "0.0.12"

  if Hardware::CPU.intel?
    url "https://github.com/komodorio/komocli/releases/download/v0.0.12/komocli_0.0.12_darwin_amd64"
    sha256 "8eb83bd2a7971eafdb2f783e5ee9b0ea97d4bacd04a674b907d9286b57afc510"
  elsif Hardware::CPU.arm?
    url "https://github.com/komodorio/komocli/releases/download/v0.0.12/komocli_0.0.12_darwin_arm64"
    sha256 "db55f1571ce0f2b39e63dcdfcf6bda619c2bc8b53809e5849b6489c6e07fb4f2"
  end

  def install
    bin.install "komocli_0.0.12_darwin_#{Hardware::CPU.arch}" => "komocli"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/komocli --help")
  end
end
