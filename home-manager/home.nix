{
	imports = [
		./zsh.nix
    ./starting-scripts.nix
		./modules/bundle.nix
	];
	home = {
		username = "agent";
		homeDirectory = "/home/agent";
		stateVersion = "24.11";
	};
	
}
