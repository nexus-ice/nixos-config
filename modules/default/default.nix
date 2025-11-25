{
	imports = [		
		./allowUnfreePackages.nix
		./enableFlakes.nix
		./git.nix
		./hosts.nix
		./keymap.nix
		./language.nix
		./packages.nix
		./network.nix
		./ssh.nix
		./timezone.nix
		./user.nix				
	];
  	system.stateVersion = "25.05"; # Did you read the comment?	
}
