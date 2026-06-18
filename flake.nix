{
  description = "FernUni Hagen Lernzettel";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      config.permittedInsecurePackages = [
        "electron-38.8.4"
      ];
    };

    rPackages = with pkgs.rPackages; [
      knitr
      rmarkdown

      tidyverse
      ggplot2
      gmodels
      boot
      psych
      effectsize
      pwr
      Rmisc
      lm_beta
    ];

    myR = pkgs.rWrapper.override {
      packages = rPackages;
    };

    myRStudio = pkgs.rstudioWrapper.override {
      packages = rPackages;
    };
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = [
        myR
        myRStudio
        pkgs.quarto
      ];

      shellHook = ''
        export PATH="${myR}/bin:$PATH"
        export QUARTO_R="${myR}/bin/R"
      '';
    };
  };
}
