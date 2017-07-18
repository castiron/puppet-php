require 'formula'

class Zlibphp < Formula
  homepage 'http://www.zlib.net/'
  url 'http://zlib.net/fossils/zlib-1.2.11.tar.gz'
  sha256 'c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1'

  keg_only :provided_by_osx

  version '1.2.8-boxen1'

  option :universal

  def install
    ENV.universal_binary if build.universal?
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
