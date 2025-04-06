{
  description = "UIowa Applied Topology Website";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {

    devShells.${system}.default = pkgs.mkShell {
      packages = [
        pkgs.hugo
        pkgs.just
        pkgs.tailwindcss
      ];

      shellHook = ''
        eval "$(just --completions bash)"
      '';
    };
  };
}
