# Config for host vault
{ config, pkgs, ... }:
{
	imports = [ 
      		./hardware-configuration.nix # Include the results of the hardware scan.
      		../default #Include default config
      		./samba.nix
      		./filesystem.nix
      		./network.nix
    	];
    	
    	networking.hostName = "vault"; # Define your hostname.
  
  	# Bootloader.
  	boot.loader.grub.enable = true;
  	boot.loader.grub.device = "/dev/sdf";
  	boot.loader.grub.useOSProber = true;

	#virtualisation.docker.enable = true;
	#virtualisation.docker.rootless = {
  	#	enable = true;
  	#	setSocketVariable = true;
	#};

	#environment.systemPackages = with pkgs; [
  	#	docker-compose  
	#];

	#users.users.corum.extraGroups = [ "docker" ];
	#networking.firewall.enable = false;
}
