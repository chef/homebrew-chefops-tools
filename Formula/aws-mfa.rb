class AwsMfa < Formula
  # Generated using `poet -f aws-mfa`
  include Language::Python::Virtualenv

  desc "AWS MFA cli tool"
  homepage "https://github.com/broamski/aws-mfa"
  url "https://files.pythonhosted.org/packages/9b/5c/4ea7e0cf9bde32c0d56301d515593cad3d3d522b51e5a712dd880f335410/aws-mfa-0.0.8.tar.gz"
  sha256 "46e7e5c7e72300ab8d071ce10dbf89875374120ff77ee074b56f901b4df228dd"

  depends_on :python

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/58/61/50d2e459049c5dbc963473a71fae928ac0e58ffe3fe7afd24c817ee210b9/boto3-1.4.4.tar.gz"
    sha256 "518f724c4758e5a5bed114fbcbd1cf470a15306d416ff421a025b76f1d390939"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/7d/03/91cc754901d8a31a127931cfed50295f3495b6c1043fe8fe89d1f8aec8a7/botocore-1.5.31.tar.gz"
    sha256 "9a11fa93785722822f291648920964724c41f756593dbf9a2d22ff2ea6a8b04f"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/37/38/ceda70135b9144d84884ae2fc5886c6baac4edea39550f28bcd144c1234d/docutils-0.12.tar.gz"
    sha256 "c7db717810ab6965f66c8cf0398a98c9d8df982da39b4cd7f162911eb89596fa"
  end

  resource "futures" do
    url "https://files.pythonhosted.org/packages/c0/12/927b89a24dcb336e5af18a8fbf581581c36e9620ae963a693a2522b2d340/futures-2.2.0.tar.gz"
    sha256 "151c057173474a3a40f897165951c0e33ad04f37de65b6de547ddef107fd0ed3"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/c7/b6/4f25dc12e08fef1493c5bb6254342e609961eb01cbbc6065ca10b4f63e1b/jmespath-0.8.0.tar.gz"
    sha256 "2c3d78a257e831b7d2855e2d00a24c2110f685ae31215d62cac5524d6108dc7a"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/b6/ff/5eaa688dd8ce78913f47438f9b40071a560126ac3e95f9b9be27dfe546a7/python-dateutil-2.4.2.tar.gz"
    sha256 "3e95445c1db500a344079a47b171c45ef18f57d188dffdb0e4165c71bea8eb3d"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/8b/13/517e8ec7c13f0bb002be33fbf53c4e3198c55bb03148827d72064426fe6e/s3transfer-0.1.10.tar.gz"
    sha256 "ba1a9104939b7c0331dc4dd234d79afeed8b66edce77bbeeecd4f56de74a0fc1"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/16/64/1dc5e5976b17466fd7d712e59cbe9fb1e18bec153109e5ba3ed6c9102f1a/six-1.9.0.tar.gz"
    sha256 "e24052411fc4fbd1f672635537c3fc2330d9481b18c0317695b46259512c91d5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "aws-mfa -h"
  end
end
