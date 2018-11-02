# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Lwebservr < Formula
  desc "Serves files in the current directory via http"
  homepage ""
  url "https://github.com/franke1276/lwebservr/archive/0.0.1.tar.gz"
  sha256 "e762584dc08cebe2f91ae7a163a7121b480679d3ed21ded28d717e21b1d750a5"
  depends_on "asciidoc" => :build
  depends_on "docbook-xsl" => :build
  depends_on "rust" => :build
  def install
    system "cargo", "install", "--root", prefix 
  end

  test do
    system "#{bin}/lw", "--help"
  end
end
