{
	description = "System Conf";
	inputs = {

		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};

	};
	outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ... }@inputs:

		let
		system = "x86_64-linux";
	in {

# nixos - system hostname
		nixosConfigurations.peesee = nixpkgs.lib.nixosSystem {
			specialArgs = {
				pkgs-stable = import nixpkgs-stable {
            inherit system;
            config.allowUnfree = true;
            config.android_sdk.accept_license = true;
				};
				inherit inputs system;
			};
			modules = [
				./nixos/configuration.nix
					inputs.nixvim.nixosModules.nixvim
			];
		};

		homeConfigurations.agent = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ ./home-manager/home.nix ];
		};
	};
}
