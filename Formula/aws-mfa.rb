class AwsMfa < Formula
  # Generated using `poet -f aws-mfa`
  include Language::Python::Virtualenv

  desc "AWS MFA cli tool"
  homepage "https://github.com/broamski/aws-mfa"
  url "https://files.pythonhosted.org/packages/83/88/5c71bbd7b2a29548488e38a2e48023d62f06a264254c2b127414b9f3d000/aws-mfa-0.0.10.tar.gz"
  sha256 "16f41dc54c9f97982536800eb4c5dbb0933a00f631f84637170e2427bf720f5c"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/17/12/d30d2efbd0f88ef279c65530a494a5c108b9b37aff5e992a805c36211fe5/boto3-1.5.22.tar.gz"
    sha256 "5430b5cd532fe56ccc9eaf1ed433ac74805811b931ae1e44eb896af98a1297f0"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/f8/f0/f033c278c09ff5a0e858581c597e1b9989f55e8f108dc1de8534422f47fc/botocore-1.8.36.tar.gz"
    sha256 "b2c9e0fd6d14910f759a33c19f8315dddedbb3c5569472b7be7ceed4f001a675"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/84/f4/5771e41fdf52aabebbadecc9381d11dea0fa34e4759b4071244fa094804c/docutils-0.14.tar.gz"
    sha256 "51e64ef2ebfb29cae1faa133b3710143496eca21c530f3f71424d77687764274"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/e5/21/795b7549397735e911b032f255cff5fb0de58f96da794274660bca4f58ef/jmespath-0.9.3.tar.gz"
    sha256 "6a81d4c9aa62caf061cb517b4d9ad1dd300374cd4706997aff9cd6aedd61fc64"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/54/bb/f1db86504f7a49e1d9b9301531181b00a1c7325dc85a29160ee3eaa73a54/python-dateutil-2.6.1.tar.gz"
    sha256 "891c38b2a02f5bb1be3e4793866c8df49c7d19baabf9c1bad62547e0b4866aca"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/b1/a6/24d960ee5f21eb2f9e2e938be44b9929bf9f85a570b9582c50c14e7c7ec7/s3transfer-0.1.12.tar.gz"
    sha256 "10891b246296e0049071d56c32953af05cea614dca425a601e4c0be35990121e"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end
  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/aws-mfa", "-h"
  end
end
