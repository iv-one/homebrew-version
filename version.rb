require 'rbconfig'
class Version < Formula
  desc ""
  homepage "https://github.com/ivan-dyachenko/version"
  version "1.0.2"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.2/version_1.0.2_darwin_amd64.zip"
      sha256 "4109aa18f175e97093863b2e93de4e61e03ae1085c22b85aeb6374b726e70fc1"
    when /linux/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.2/version_1.0.2_linux_amd64.tar.gz"
      sha256 "a55e88736eb5b55353f46451a9fe50805eafa155fe8b0019d4b90ff8a11c4418"
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
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.2/version_1.0.2_darwin_386.zip"
      sha256 "656a6ff3a12eb2e8d9e2bc120f9683cd51b5810c84358bfa78c420679b4dee7e"
    when /linux/
      url "https://github.com/ivan-dyachenko/version/releases/download/v1.0.2/version_1.0.2_linux_386.tar.gz"
      sha256 "2ef60fe21c74f6dae8485473b29b8f27668675f1872a487743ee59b97fc649ff"
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
