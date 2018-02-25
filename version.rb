require 'rbconfig'
class Version < Formula
  desc ""
  homepage "https://github.com/ivan-dyachenko/version"
  version "1.0.3"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.3/version_1.0.3_darwin_amd64.zip"
      sha256 "ea24beaa12f75b6f925592db49e07a9cb266a41d5dc42910ea21d2b2bc5f8e2d"
    when /linux/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.3/version_1.0.3_linux_amd64.tar.gz"
      sha256 "f9f43908faaa9296b52c161d89ab9f16e506d396579ad5efa6423f4c4567ea67"
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
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.3/version_1.0.3_darwin_386.zip"
      sha256 "d340da50c85f9f7b5732427fb48196c7d87a18c56b4062eb4b251b451d1f3fe8"
    when /linux/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.3/version_1.0.3_linux_386.tar.gz"
      sha256 "aa7387a5330ea799e069044dc868bbedb223fdfe219b1277efe8b136965aec52"
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
