class Kosmorro < Formula
  include Language::Python::Virtualenv

  desc "A program to calculate your ephemerides"
  homepage "https://kosmorro.space"
  url "https://files.pythonhosted.org/packages/f7/88/c2f43399ef2ce583845b22406635134b4d3604aeb0c78d982455c5e5aab2/kosmorro-0.10.13.tar.gz"
  sha256 "ce1f05d8a5d002fb9111ae4de72f2361dc17ed3bc9894ec29f50afb27da51a2a"
  revision 1

  depends_on "python@3.12"
  depends_on "numpy"
  depends_on "certifi"
  depends_on "six"

  resource "Babel" do
    url "https://files.pythonhosted.org/packages/e2/80/cfbe44a9085d112e983282ee7ca4c00429bc4d1ce86ee5f4e60259ddff7f/Babel-2.14.0.tar.gz"
    sha256 "6919867db036398ba21eb5c7a0f6b28ab8cbc3ae7a73a44ebe34ae74a4e7d363"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/90/b4/206081fca69171b4dc1939e77b378a7b87021b0f43ce07439d49d8ac5c84/importlib_metadata-7.0.1.tar.gz"
    sha256 "f238736bb06590ae52ac1fab06a3a9ef1d8dce2b7a35b5ab329371d6c8f5d2cc"
  end

  resource "jplephem" do
    url "https://files.pythonhosted.org/packages/6d/e5/046f96d8699d2961fb71e28a81b25474d83ed54c5c1fb02033acf994b230/jplephem-2.22.tar.gz"
    sha256 "0d9acc7217b4806feba93e72974ceead5611104bce6789af38d4f27dcf7a592c"
  end

  resource "kosmorrolib" do
    url "https://files.pythonhosted.org/packages/ac/a0/d99aac197dce337ae25b86b2643a4629bb8e89991517085cef640fb9a24c/kosmorrolib-1.0.11.tar.gz"
    sha256 "16a5657f3631a0510bc92b07d41ad22a3f62dff697219cb0469422bd4091de74"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "sgp4" do
    url "https://files.pythonhosted.org/packages/14/c2/ed46e67105a95acf4f06e2811f4381198a5acef57a960d98a74011a797cc/sgp4-2.23.tar.gz"
    sha256 "d8addc53a2fb9f88dee6bfd401d2865b014cc0b57bf2cee69bdee8d9685d5429"
  end

  resource "skyfield" do
    url "https://files.pythonhosted.org/packages/25/3a/4abd429158980d639f474ba39c22ddd75f90be1d16b05361bef494518ecf/skyfield-1.49.tar.gz"
    sha256 "20883027b2bbf4017dd916b64faaeb3713a8f88d7c8e353c15cd030ac63be92c"
  end

  resource "skyfield-data" do
    url "https://files.pythonhosted.org/packages/55/46/bab75175ed6494d0e33d93b7745a2ff665576d3f9278a18172319892729d/skyfield-data-6.0.0.tar.gz"
    sha256 "4e4f059c91f712b2d81d87288df04511a8154adb0044ebfc11365a689a53bcac"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
    sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/10/56/d7d66a84f96d804155f6ff2873d065368b25a07222a6fd51c4f24ef6d764/termcolor-2.4.0.tar.gz"
    sha256 "aab9e56047c8ac41ed798fa36d892a37aca6b3e9159f3e0c24bc64a9b3ac7b7a"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/d3/20/b48f58857d98dcb78f9e30ed2cfe533025e2e9827bbd36ea0a64cc00cbc1/zipp-3.19.2.tar.gz"
    sha256 "bf1dcf6450f873a13e952a29504887c89e6de7506209e5b1bcc3460135d4de19"
  end


  def install
    virtualenv_install_with_resources
  end

end

