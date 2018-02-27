require 'rbconfig'
class Version < Formula
  desc ""
  homepage "https://github.com/ivan-dyachenko/version"
  version "1.0.4"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.4/version_1.0.4_darwin_amd64.zip"
      sha256 "23be8d59f4c2cac4c18fd4c66aff6de36f14835f34366b0736b4007d22c369d0"
    when /linux/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.4/version_1.0.4_linux_amd64.tar.gz"
      sha256 "92f65e66f22d62c62e594bc310a292270596c5e54c7eec01755906d9dd66b293"
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
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.4/version_1.0.4_darwin_386.zip"
      sha256 "5af12cd8d8c25acb89b20225bda7c886138936a5342d7bfa06ff8b4f6e8c000b"
    when /linux/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.4/version_1.0.4_linux_386.tar.gz"
      sha256 "23706d879b1551dead83dc1f011800deb9bdeb285235e2feca8330fa68d000b7"
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
