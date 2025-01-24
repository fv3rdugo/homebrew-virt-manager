class OsinfoDbTools < Formula
  desc "Tools for managing the libosinfo database files"
  homepage "https://libosinfo.org"
  url "https://releases.pagure.org/libosinfo/osinfo-db-tools-1.12.0.tar.xz"
  sha256 "f3315f675d18770f25dea8ed04b20b8fc80efb00f60c37ee5e815f9c3776e7f3"

  depends_on "pkg-config" => :build

  depends_on "gettext"
  depends_on "glib"
  depends_on "json-glib"
  depends_on "libarchive" # need >= 3.0.0
  depends_on "libsoup"

  def install
    args = %W[
      --disable-dependency-tracking
      --disable-silent-rules
      --prefix=#{prefix}
      --localstatedir=#{var}
      --sysconfdir=#{etc}
    ]
    system "./configure", *args
    system "make", "install"
  end

  test do
    system "#{bin}/osinfo-db-path"
  end
end
