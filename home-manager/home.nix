{
	imports = [
		./zsh.nix
		./modules/bundle.nix
    ./starting-scripts.nix
	];
	home = {
		username = "agent";
		homeDirectory = "/home/agent";
		stateVersion = "24.11";
	};
	
}
