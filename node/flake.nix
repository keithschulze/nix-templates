{
  description = "A simple flake for a NodeJS NPM project";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;

    flake-utils = {
      url = github:numtide/flake-utils;
    };
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          name = "simple-npm";
          pkgs = nixpkgs.legacyPackages.${system};
        in
          {
            devShells.default = pkgs.mkShell rec {
              buildInputs = with pkgs; [
                nodejs
                bashInteractive
              ];
            };
          }
        );
}
