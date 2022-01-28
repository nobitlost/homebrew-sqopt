require "formula"
require_relative "lib/private_strategy"

class Sqopt < Formula
  include Language::Python::Virtualenv

  desc "Squirrel optimizer"
  homepage "https://github.com/nobitlost/squirrel_optimizer/"
  version "0.5.3"

  url "https://github.com/nobitlost/squirrel_optimizer/releases/download/0.5.3/sqopt-0.5.3.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "0b629200680194a4c5a217a0364f8fe71f7d45c3c445031c9726b0ddd0304925"

  depends_on "python@3.10"
  
  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/91/a5/429efc6246119e1e3fbf562c00187d04e83e54619249eb732bb423efa6c6/Jinja2-3.0.3.tar.gz"
    sha256 "611bb273cd68f3b993fabdc4064fc858c5b47a973cb5aa7999ec1ba405c87cd7"
  end
  
  resource "lark-parser" do
    url "https://files.pythonhosted.org/packages/5a/ee/fd1192d7724419ddfe15b6f17d1c8742800d4de917c0adac3b6aaf22e921/lark-parser-0.12.0.tar.gz"
    sha256 "15967db1f1214013dca65b1180745047b9be457d73da224fcda3d9dd4e96a138"
  end

  resource "littletable" do
    url "https://files.pythonhosted.org/packages/10/71/13987551f6922aa338836ef3e9abc10f68b44b6259849de3cedea7cda661/littletable-2.0.5.tar.gz"
    sha256 "d7465f934ca97517bbb9cde3510f33a32dbea50136b6fe2d2ecedb04e6769f9a"
  end
  
  resource "loguru" do
    url "https://files.pythonhosted.org/packages/6d/25/0d65383fc7b4f4ce9505d16773b2b2a9f0f465ef00ab337d66afff47594a/loguru-0.5.3.tar.gz"
    sha256 "b28e72ac7a98be3d28ad28570299a393dfcd32e5e3f6a353dec94675767b6319"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/bf/10/ff66fea6d1788c458663a84d88787bae15d45daa16f6b3ef33322a51fc7e/MarkupSafe-2.0.1.tar.gz"
    sha256 "594c67807fb16238b30c44bdf74f36c02cdf22d1c8cda91ef8a0ed8dabf5620a"
  end

  def install
    virtualenv_install_with_resources
  end
end
