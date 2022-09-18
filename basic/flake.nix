{
  description = "A simple flake for a projects";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;

    flake-utils = {
      url = github:numtide/flake-utils;
    };

    flake-compat = {
      url = github:edolstra/flake-compat;
      flake = false;
    };
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          name = "simple-project";
          pkgs = nixpkgs.legacyPackages.${system};
        in
          {
            devShells.default = pkgs.mkShell rec {
              buildInputs = with pkgs; [
                bashInteractive
              ];

              shellHook = ''
              '';
            };
          }
        );
}
