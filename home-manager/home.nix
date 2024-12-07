{ config, pkgs, ... }: {
	imports = [
		./zsh.nix
		./modules/bundle.nix
	];
	home = {
		username = "agent";
		homeDirectory = "/home/agent";
		stateVersion = "24.11";
	};

	
}
