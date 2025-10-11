{ pkgs ? import <nixpkgs> {} }:

let
  tex = (pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-full
      latexmk;
  });
in
pkgs.mkShell {
  buildInputs = [
    pkgs.pandoc
    tex

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
