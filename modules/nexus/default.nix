# Config for host nexus
{ config, pkgs, ... }:
{
	imports = [ 
      		./hardware-configuration.nix # Include the results of the hardware scan.
      		../default #Include default config
      		./gnome.nix
      		./sound.nix
      		./printing.nix
      		./systemTimeLocal.nix
      		#./packages.nix
    	];
    	
    	networking.hostName = "nexus"; # Define your hostname.

  	# Bootloader.
  	boot.loader.systemd-boot.enable = true;
  	boot.loader.efi.canTouchEfiVariables = true;
}
