# Default config for all hosts
{ config, pkgs, ... }:
{
	imports = [
		./timezone.nix
		./user.nix
		./enableFlakes.nix
		./allowUnfreePackages.nix
		./language.nix
		./keymap.nix
		./network.nix
		./ssh.nix
		./packages.nix
		./git.nix
		./hosts.nix
		
	];

  	system.stateVersion = "25.05"; # Did you read the comment?	
}
