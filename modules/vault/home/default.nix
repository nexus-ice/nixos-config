{ config, pkgs, ... }:
{
	home.username = "corum";
	home.homeDirectory = "/home/corum";
	imports = [ 
      		./neofetch.nix
    	];
	
	home.stateVersion = "25.05";
}
