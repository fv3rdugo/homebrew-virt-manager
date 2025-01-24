class Usbredir < Formula
  desc "USB traffic redirection library"
  homepage "https://www.spice-space.org"
  url "https://www.spice-space.org/download/usbredir/usbredir-0.14.0.tar.xz"
  sha256 "924dfb5c78328fae45a4c93a01bc83bb72c1310abeed119109255627a8baa332"

  depends_on "libtool" => :build
  depends_on "pkg-config" => :build

  depends_on "libusb"

  def install
    system "./configure", "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
