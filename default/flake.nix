{
  description = "Default Flake";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils, }: utils.lib.eachDefaultSystem (system: rec {
    pkgs = import nixpkgs { inherit system; };
    packages.default = pkgs.hello;
    devShells.default = pkgs.mkShell { buildInputs = with pkgs; [ ]; };
  });
}
