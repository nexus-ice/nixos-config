# Config for host mediahive
{ config, pkgs, ... }:
{
	imports = [ 
      		./hardware-configuration.nix # Include the results of the hardware scan.
      		../default #Include default config
		./network.nix
		./filesystem.nix
		./samba.nix
		./jellyfin.nix
		./docker.nix
		./audiobookshelf.nix
    	];
    	
    	networking.hostName = "mediahive"; # Define your hostname.
  
  	# Bootloader.
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
}
