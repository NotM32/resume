{
  description = "LaTeX Sources for my cv";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-22.11;
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs = { self, nixpkgs, flake-utils }:
    with flake-utils.lib; eachSystem allSystems (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
      tex = pkgs.texlive.combine {
        inherit (pkgs.texlive) scheme-minimal latex-bin latexmk;
      };
    in rec {
      packages = {
        document = pkgs.stdenvNoCC.mkDerivation rec {
          name = "m32-resume";
          src = self;
          buildInputs = [ pkgs.coreutils tex ];
          phases = [ "unpackPhase" "buildPhase" "installPhase" ];
          buildPhase = ''
            export PATH="${pkgs.lib.makeBinPath buildInputs}";
            mkdir -p .cache/texmf-var
            env TEXMFHOME=.cache TEXMFVAR=.cache/texmf-var \
              latexmk -interaction=nonstopmode -pdf -lualatex \
              resume.tex
          '';
          installPhase = ''
            mkdir -p $out
            cp resume.pdf $out/
          '';
        };
      };
      defaultPackage = packages.document;
    });
}
