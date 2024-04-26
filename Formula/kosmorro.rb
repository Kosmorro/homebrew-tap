class Kosmorro < Formula
  include Language::Python::Virtualenv

  desc "A program to calculate your ephemerides"
  homepage "https://kosmorro.space"
  url "https://files.pythonhosted.org/packages/f7/88/c2f43399ef2ce583845b22406635134b4d3604aeb0c78d982455c5e5aab2/kosmorro-0.10.13.tar.gz"
  sha256 "ce1f05d8a5d002fb9111ae4de72f2361dc17ed3bc9894ec29f50afb27da51a2a"

  depends_on "python@3.12"
  depends_on "numpy"
  depends_on "certifi"
  depends_on "python-tabulate"
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
    url "https://files.pythonhosted.org/packages/74/f0/74ed1d5e0f31b736327aaebc61f008435f485a9ab2824a2868b3cf9cec3a/jplephem-2.21.tar.gz"
    sha256 "34194b610695f21b89217b9852b8dabadbce80848cb369d9567ef12dc4828d55"
  end

  resource "kosmorrolib" do
    url "https://files.pythonhosted.org/packages/8f/05/5e5062c7368bf49ef7437d07aac23038b11582ea2e869963056e91437768/kosmorrolib-1.0.10.tar.gz"
    sha256 "2bcde95e5f1b97ab6a93f55a0633610b6df9e0b30527469693340c5a38ff6ddc"
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
    url "https://files.pythonhosted.org/packages/8c/f7/0a115ca1d08815d3cd3cad151beaf62ff60812f82a57e1ffee8d2556338f/skyfield-1.46.tar.gz"
    sha256 "27a54edbc46232a11019bcd88a9b74d36770aff26ff8ee631b90a81ba0be93e4"
  end

  resource "skyfield-data" do
    url "https://files.pythonhosted.org/packages/c4/c8/3ade077a41bc4849cb92577c5d2c8ec85e9ada3488e7330f576cbb0b437c/skyfield-data-5.0.0.tar.gz"
    sha256 "fe3484028cf96eb8040104d0626ec712f73e22e0f97a1eee62527207eead66c8"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/10/56/d7d66a84f96d804155f6ff2873d065368b25a07222a6fd51c4f24ef6d764/termcolor-2.4.0.tar.gz"
    sha256 "aab9e56047c8ac41ed798fa36d892a37aca6b3e9159f3e0c24bc64a9b3ac7b7a"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/58/03/dd5ccf4e06dec9537ecba8fcc67bbd4ea48a2791773e469e73f94c3ba9a6/zipp-3.17.0.tar.gz"
    sha256 "84e64a1c28cf7e91ed2078bb8cc8c259cb19b76942096c8d7b84947690cabaf0"
  end


  def install
    virtualenv_install_with_resources
  end

end

