class Kosmorro < Formula
  include Language::Python::Virtualenv

  desc "Ephemerides calculation program"
  homepage "https://kosmorro.space"
  url "https://files.pythonhosted.org/packages/b9/d4/d1eb23c106197b8743c676477f3869d357200418a08ce44837f3d79df781/kosmorro-1.0.2.tar.gz"
  sha256 "4e5afe2d7b6b3e3f4aeaa27dba5f2983489b890e5aa58b463fde4228b00a1859"
  revision 2

  depends_on "certifi"
  depends_on "numpy"
  depends_on "python@3.14"

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/38/61/0b9ae6399dd4a58d8c1b1dc5a27d6f2808023d0b5dd3104bb99f45a33ff6/argcomplete-3.6.3.tar.gz"
    sha256 "62e8ed4fd6a45864acc8235409461b72c9a28ee785a2011cc5eb78318786c89c"
  end

  resource "babel" do
    url "https://files.pythonhosted.org/packages/7d/b2/51899539b6ceeeb420d40ed3cd4b7a40519404f9baf3d4ac99dc413a834b/babel-2.18.0.tar.gz"
    sha256 "b80b99a14bd085fcacfa15c9165f651fbb3406e66cc603abf11c5750937c992d"
  end

  resource "jplephem" do
    url "https://files.pythonhosted.org/packages/90/8b/a50514f000fcd0207cd281370b0db66e7712a5db9f96b77a0301a7205f96/jplephem-2.24.tar.gz"
    sha256 "354fe1adae022264ab46f18afb6af26211277cfd7b3ef90400755fcabe93bc11"
  end

  resource "kosmorrolib" do
    url "https://files.pythonhosted.org/packages/b0/04/699202c54fbcd60d8935a61faccb1ca4bcb2b5e53c13102ed476402e5f6f/kosmorrolib-1.0.13.tar.gz"
    sha256 "d327a3f20f485e46f520c2c55d573fcbe804bdb40131946f815feabc8a964d39"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/ff/46/dd499ec9038423421951e4fad73051febaa13d2df82b4064f87af8b8c0c3/pytz-2026.2.tar.gz"
    sha256 "0e60b47b29f21574376f218fe21abc009894a2321ea16c6754f3cad6eb7cdd6a"
  end

  resource "sgp4" do
    url "https://files.pythonhosted.org/packages/6e/d0/fc467010d17742321f73b16a71acac88439a88f2b166641942a6566c9b2a/sgp4-2.25.tar.gz"
    sha256 "e19edc6dcc25d69fb8fde0a267b8f0c44d7e915c7bcbeacf5d3a8b595baf0674"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "skyfield" do
    url "https://files.pythonhosted.org/packages/c9/8c/98bf5d9042218580fc10c4ba0c51b9af26bc73b614ce64341c0dfad39074/skyfield-1.54.tar.gz"
    sha256 "bf8b79d6dbbe1add0327aca485d6388bb6a13cab70528d015913a9b07a1d6903"
  end

  resource "skyfield-data" do
    url "https://files.pythonhosted.org/packages/d3/6a/2f8d001dfcacb737cbdbc96db566eb9de9ebf0493bf9780785c42215c397/skyfield_data-7.0.0.tar.gz"
    sha256 "df3b4f0f5b5b57e5adf5a0a5d30d73ca23dd4066ee666da3222d7bd63d580bbd"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/46/58/8c37dea7bbf769b20d58e7ace7e5edfe65b849442b00ffcdd56be88697c6/tabulate-0.10.0.tar.gz"
    sha256 "e2cfde8f79420f6deeffdeda9aaec3b6bc5abce947655d17ac662b126e48a60d"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/46/79/cf31d7a93a8fdc6aa0fbb665be84426a8c5a557d9240b6239e9e11e35fc5/termcolor-3.3.0.tar.gz"
    sha256 "348871ca648ec6a9a983a13ab626c0acce02f515b9e1983332b17af7979521c5"
  end

  def install
    # hatch does not support a SOURCE_DATE_EPOCH before 1980.
    # Remove after https://github.com/pypa/hatch/pull/1999 is released.
    ENV["SOURCE_DATE_EPOCH"] = "1451574000"

    virtualenv_install_with_resources
  end

  test do
    assert_includes shell_output("#{bin}/kosmorro --version"), "Kosmorro #{version}\n"
  end
end
