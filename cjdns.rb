class Cjdns < Formula
  desc "Cjdns implements an encrypted IPv6 network using public-key cryptography for address allocation and a distributed hash table for routing."
  homepage "https://github.com/cjdelisle/cjdns"
  head "https://github.com/cjdelisle/cjdns.git"

  depends_on "node"

  def install
    system "./do"
    bin.install "cjdroute", "makekeys", "privatetopublic", "publictoip6", "randombytes", "sybilsim"
  end

  test do
    system bin/"cjdroute", "--genconf"
  end
end
