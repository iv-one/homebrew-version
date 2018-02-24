require 'rbconfig'
class Version < Formula
  desc ""
  homepage "https://github.com/ivan-dyachenko/version"
  version "1.0.1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.1/version_1.0.1_darwin_amd64.zip"
      sha256 "b33613339cd009ad115714be4ce967560a35a666013808ae43caa1d3f42c7d62"
    when /linux/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.1/version_1.0.1_linux_amd64.tar.gz"
      sha256 "b6905e2d8fc5b228bcffa6bc4d65bbf2ee14fa84076b9a58a12a3303c30bf028"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.1/version_1.0.1_darwin_386.zip"
      sha256 "963c0c2c3441b7497502ff0ddc289ccf9a3749311701bfeaba2579ba402dee40"
    when /linux/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.1/version_1.0.1_linux_386.tar.gz"
      sha256 "060adeee5606dd85477a668232c5e6d8aff1a63e3e0296df78ab1d898079d9be"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "version"
  end

  test do
    system "version"
  end

end
