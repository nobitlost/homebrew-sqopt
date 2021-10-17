require "formula"
require_relative "lib/private_strategy"

class Sqopt < Formula
  include Language::Python::Virtualenv

  desc "Squirrel optimizer"
  homepage "https://github.com/nobitlost/squirrel_optimizer/"
  version "0.4.1"
  bottle :unneeded

  url "https://github.com/nobitlost/squirrel_optimizer/releases/download/0.4.1/sqopt-0.4.1.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "3cea4ea016bf0f69b81e7addb19656d265fffa3253795130cac14cb6e0effa3a"

  depends_on "python@3.10"
  
  resource "atomicwrites" do
    url "https://files.pythonhosted.org/packages/55/8d/74a75635f2c3c914ab5b3850112fd4b0c8039975ecb320e4449aa363ba54/atomicwrites-1.4.0.tar.gz"
    sha256 "ae70396ad1a434f9c7046fd2dd196fc04b12f9e91ffb859164193be8b6168a7a"
  end
  
  resource "attrs" do
    url "https://files.pythonhosted.org/packages/ed/d6/3ebca4ca65157c12bd08a63e20ac0bdc21ac7f3694040711f9fd073c0ffb/attrs-21.2.0.tar.gz"
    sha256 "ef6aaac3ca6cd92904cdd0d83f629a15f18053ec84e6432106f7a4d04ae4f5fb"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz"
    sha256 "5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b"
  end

  resource "execnet" do
    url "https://files.pythonhosted.org/packages/7a/3c/b5ac9fc61e1e559ced3e40bf5b518a4142536b34eb274aa50dff29cb89f5/execnet-1.9.0.tar.gz"
    sha256 "8f694f3ba9cc92cab508b152dcfe322153975c29bda272e2fd7f3f00f36e47c5"
  end
  
  resource "iniconfig" do
    url "https://files.pythonhosted.org/packages/23/a2/97899f6bd0e873fed3a7e67ae8d3a08b21799430fb4da15cfedf10d6e2c2/iniconfig-1.1.1.tar.gz"
    sha256 "bc3af051d7d14b2ee5ef9969666def0cd1a000e121eaea580d4a313df4b37f32"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/f8/86/7c0eb6e8b05385d1ce682abc0f994abd1668e148fb52603fa86e15d4c110/Jinja2-3.0.2.tar.gz"
    sha256 "827a0e32839ab1600d4eb1c4c33ec5a8edfbc5cb42dafa13b81f182f97784b45"
  end
  
  resource "lark-parser" do
    url "https://files.pythonhosted.org/packages/5a/ee/fd1192d7724419ddfe15b6f17d1c8742800d4de917c0adac3b6aaf22e921/lark-parser-0.12.0.tar.gz"
    sha256 "15967db1f1214013dca65b1180745047b9be457d73da224fcda3d9dd4e96a138"
  end

  resource "littletable" do
    url "https://files.pythonhosted.org/packages/2c/b6/69f9ef54d793292b1a63260356e23bf544268e775bce32b7c8f84383090c/littletable-2.0.4.tar.gz"
    sha256 "b25d8e962859a3461ea21a46728daa99c96078d923bfd4429cb8b024c17958a4"
  end
  
  resource "loguru" do
    url "https://files.pythonhosted.org/packages/6d/25/0d65383fc7b4f4ce9505d16773b2b2a9f0f465ef00ab337d66afff47594a/loguru-0.5.3.tar.gz"
    sha256 "b28e72ac7a98be3d28ad28570299a393dfcd32e5e3f6a353dec94675767b6319"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/bf/10/ff66fea6d1788c458663a84d88787bae15d45daa16f6b3ef33322a51fc7e/MarkupSafe-2.0.1.tar.gz"
    sha256 "594c67807fb16238b30c44bdf74f36c02cdf22d1c8cda91ef8a0ed8dabf5620a"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/86/aef78bab3afd461faecf9955a6501c4999933a48394e90f03cd512aad844/packaging-21.0.tar.gz"
    sha256 "7dc96269f53a4ccec5c0670940a4281106dd0bb343f47b7471f779df49c2fbe7"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/a1/16/db2d7de3474b6e37cbb9c008965ee63835bba517e22cdb8c35b5116b5ce1/pluggy-1.0.0.tar.gz"
    sha256 "4224373bacce55f955a878bf9cfa763c1e360858e330072059e10bad68531159"
  end

  resource "py" do
    url "https://files.pythonhosted.org/packages/0d/8c/50e9f3999419bb7d9639c37e83fa9cdcf0f601a9d407162d6c37ad60be71/py-1.10.0.tar.gz"
    sha256 "21b81bda15b66ef5e1a777a21c4dcd9c20ad3efd0b3f817e7a809035269e1bd3"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/c1/47/dfc9c342c9842bbe0036c7f763d2d6686bcf5eb1808ba3e170afdb282210/pyparsing-2.4.7.tar.gz"
    sha256 "c203ec8783bf771a155b207279b9bccb8dea02d8f0c9e5f8ead507bc3246ecc1"
  end

  resource "pytest" do
    url "https://files.pythonhosted.org/packages/4b/24/7d1f2d2537de114bdf1e6875115113ca80091520948d370c964b88070af2/pytest-6.2.5.tar.gz"
    sha256 "131b36680866a76e6781d13f101efb86cf674ebb9762eb70d3082b6f29889e89"
  end

  resource "pytest-forked" do
    url "https://files.pythonhosted.org/packages/62/92/2d418d7b0c9d68a2e885b66d7f6805f9678ce56ad2b3a77669437b2d139a/pytest-forked-1.3.0.tar.gz"
    sha256 "6aa9ac7e00ad1a539c41bec6d21011332de671e938c7637378ec9710204e37ca"
  end

  resource "pytest-xdist" do
    url "https://files.pythonhosted.org/packages/a0/07/d8af4634358e0fdd3968bb021c20fdfbe9c062e92765971f93eddeb7f828/pytest-xdist-2.4.0.tar.gz"
    sha256 "89b330316f7fc475f999c81b577c2b926c9569f3d397ae432c0c2e2496d61ff9"
  end
  
  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "win32-setctime" do
    url "https://files.pythonhosted.org/packages/a6/f4/4bdc0d636ef81a4e334e7c9e63f7755f6826ee0165712c0099241374e57a/win32_setctime-1.0.3.tar.gz"
    sha256 "4e88556c32fdf47f64165a2180ba4552f8bb32c1103a2fafd05723a0bd42bd4b"
  end
  
  def install
    virtualenv_install_with_resources
  end
end
