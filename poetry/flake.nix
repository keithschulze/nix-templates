{
  description = "A simple flake for a Python Poetry project";

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
          name = "simple-poetry";
          pkgs = nixpkgs.legacyPackages.${system};
        in
          {
            devShells.default = pkgs.mkShell rec {
              buildInputs = with pkgs; [
                python311
                poetry
                bashInteractive
              ];

              shellHook = ''
                set +e
                if [[ ! -d .venv ]]; then
                  python -m venv .venv
                fi

                [[ -f poerty.lock ]] && poetry install
              '';
            };
          }
        );
}
