{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    # github.com/NixOS/nixos-hardware/tree/master
    nixos-hardware.url = "github:NixOS/nixos-hardware";

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    impermanence = {
      url = "github:nix-community/impermanence";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixos-hardware, disko, home-manager, ... }:
  {
    nixosConfigurations.mobile-command-center = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = {
        inherit nixos-hardware;
      };

      modules = [
        disko.nixosModules.disko
        home-manager.nixosModules.home-manager
        
        ({ }: {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
        })

        ./hosts/trust/mobile-command-center/configuration.nix
      ];
    };
  };
}