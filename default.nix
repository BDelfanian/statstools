{ pkgs ? import <nixpkgs> {} }:

let
  statstools = pkgs.python3Packages.buildPythonPackage {
    pname = "statstools";
    version = "0.1.0";
    pyproject = true;

    src = pkgs.fetchgit {
      url = "https://github.com/BDelfanian/statstools.git";
      rev = "18655e6b5add4a254d599d5795a9d8e21429990f";
      sha256 = "sha256-DRy4hyQjj1UzOfJ0QDIpP1W1d1EbuxdM8PHQ7FkUXmA=";
    };

    buildInputs = [ pkgs.python3Packages.setuptools pkgs.python3Packages.wheel ];

    propagatedBuildInputs = with pkgs.python3Packages; [ numpy pytest ];
  };

in pkgs.mkShell {
  buildInputs = [
    pkgs.python3
    statstools
  ];

  shellHook = ''
    export PYTHONPATH=$PWD/src:$PYTHONPATH
    echo "Environment ready. You can now run pytest or import statstools."
  '';
}
