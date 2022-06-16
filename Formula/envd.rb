# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Envd < Formula
  desc "Development environment for data science and AI/ML teams"
  homepage "https://envd.tensorchord.ai/"
  version "0.1.0-alpha.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tensorchord/envd/releases/download/v0.1.0-alpha.10/envd_0.1.0-alpha.10_Darwin_arm64"
      sha256 "f645113e0bc31f641c3a855758da97e7ca0b3c94f88a7371d2a11f6c6c9107b1"

      def install
        bin.install "envd_0.1.0-alpha.10_Darwin_arm64" => "envd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tensorchord/envd/releases/download/v0.1.0-alpha.10/envd_0.1.0-alpha.10_Darwin_x86_64"
      sha256 "a41a4a9fb8f956765a8fb0547c7dea62780ec3c8599199e588a36effec84fccb"

      def install
        bin.install "envd_0.1.0-alpha.10_Darwin_x86_64" => "envd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tensorchord/envd/releases/download/v0.1.0-alpha.10/envd_0.1.0-alpha.10_Linux_arm64"
      sha256 "e3c5801445e5c01bcbb5b45c2db890e8ab3b6008f04efd0ad0916f6e834e2f04"

      def install
        bin.install "envd_0.1.0-alpha.10_Linux_arm64" => "envd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tensorchord/envd/releases/download/v0.1.0-alpha.10/envd_0.1.0-alpha.10_Linux_x86_64"
      sha256 "8c3834ce0653d1247613685518b0bbaf7c36288c621009c4dc65760828f3e549"

      def install
        bin.install "envd_0.1.0-alpha.10_Linux_x86_64" => "envd"
      end
    end
  end

  def caveats; <<~EOS
    Please run `envd bootstrap` first to bootstrap
  EOS
  end

  test do
    system "#{bin}/envd version"
  end
end