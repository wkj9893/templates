{
  description = "Rust Flake";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils, }:
    utils.lib.eachDefaultSystem (system: rec {
      pkgs = import nixpkgs { inherit system; };
      devShells.default = with pkgs; mkShell {
        buildInputs = [ cargo rustc ];
        RUST_SRC_PATH = rustPlatform.rustLibSrc;
      };
    });
}
