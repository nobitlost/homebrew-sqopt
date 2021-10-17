

class Sqopt < Formula
  include Language::Python::Virtualenv

  desc "Squirrel optimizer"
  homepage "https://github.com/nobitlost/squirrel_optimizer/"
  version "0.4.1"
  bottle :unneeded

  url "https://api.github.com/repos/nobitlost/squirrel_optimizer/releases/assets/47113444"
  sha256 "5f7fe529eade854794bb81b8040abdecd1ebc9115b044ba93fdddd129f7e0a53"

  depends_on "python@3.10"
  
  def install
  end
  
end
