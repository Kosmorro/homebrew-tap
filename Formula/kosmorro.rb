class Kosmorro < Formula
  include Language::Python::Virtualenv

  desc "A program to calculate your ephemerides"
  homepage "https://kosmorro.space"
  url "https://files.pythonhosted.org/packages/f7/88/c2f43399ef2ce583845b22406635134b4d3604aeb0c78d982455c5e5aab2/kosmorro-0.10.13.tar.gz"
  sha256 "ce1f05d8a5d002fb9111ae4de72f2361dc17ed3bc9894ec29f50afb27da51a2a"
  revision 1

  depends_on "python@3.13"
  depends_on "numpy"
  depends_on "certifi"
  depends_on "six"

  resource "babel" do
    url "https://files.pythonhosted.org/packages/7d/6b/d52e42361e1aa00709585ecc30b3f9684b3ab62530771402248b1b1d6240/babel-2.17.0.tar.gz"
    sha256 "0c54cffb19f690cdcc52a3b50bcbf71e07a808d1c80d549f2459b9d2cf0afb9d"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/76/72/33d1bb4be61f1327d3cd76fc41e2d001a6b748a0648d944c646643f123fe/importlib_metadata-7.2.1.tar.gz"
    sha256 "509ecb2ab77071db5137c655e24ceb3eee66e7bbc6574165d0d114d9fc4bbe68"
  end

  resource "jplephem" do
    url "https://files.pythonhosted.org/packages/3c/42/0545c37e070e5f940eb52987fb25a351ab3c9327b40bab6ad3dd6125b2e1/jplephem-2.23.tar.gz"
    sha256 "d3fb9477e4bf4c39d10497d4ff15e5271b7ac03fa101e1821aac527d646eccf9"
  end

  resource "kosmorrolib" do
    url "https://files.pythonhosted.org/packages/be/a7/1d82ad9712b74e39744e814c83cd7bd5fea6d6eec70bcfd2487aa47ecd6f/kosmorrolib-1.0.12.tar.gz"
    sha256 "8c9da76165c91503406b2cae395236d37c3899c0116cd4e7e338e58643ef0cc7"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "sgp4" do
    url "https://files.pythonhosted.org/packages/6e/d0/fc467010d17742321f73b16a71acac88439a88f2b166641942a6566c9b2a/sgp4-2.25.tar.gz"
    sha256 "e19edc6dcc25d69fb8fde0a267b8f0c44d7e915c7bcbeacf5d3a8b595baf0674"
  end

  resource "skyfield" do
    url "https://files.pythonhosted.org/packages/2d/cb/0c9f9685f6ff3b9c268b1d995c584f0d09de160f46fbd6c1df0631565bfd/skyfield-1.53.tar.gz"
    sha256 "24099855f3ba3906663ac1c10e650041e747680b986e807400eddedc0be4a8b4"
  end

  resource "skyfield-data" do
    url "https://files.pythonhosted.org/packages/d3/6a/2f8d001dfcacb737cbdbc96db566eb9de9ebf0493bf9780785c42215c397/skyfield_data-7.0.0.tar.gz"
    sha256 "df3b4f0f5b5b57e5adf5a0a5d30d73ca23dd4066ee666da3222d7bd63d580bbd"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
    sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/37/72/88311445fd44c455c7d553e61f95412cf89054308a1aa2434ab835075fc5/termcolor-2.5.0.tar.gz"
    sha256 "998d8d27da6d48442e8e1f016119076b690d962507531df4890fcd2db2ef8a6f"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/e3/02/0f2892c661036d50ede074e376733dca2ae7c6eb617489437771209d4180/zipp-3.23.0.tar.gz"
    sha256 "a07157588a12518c9d4034df3fbbee09c814741a33ff63c05fa29d26a2404166"
  end

  def install
    virtualenv_install_with_resources
  end

end

