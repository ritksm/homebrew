require 'formula'

class ShadowsocksLibev < Formula
  homepage 'https://github.com/madeye/shadowsocks-libev'
  url 'https://github.com/madeye/shadowsocks-libev.git', :using => :git, :tag => 'v1.4.4'
  version '1.4.4'

  depends_on 'libev'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  def test
      system "ls #{bin}/ss-local"
  end
end

