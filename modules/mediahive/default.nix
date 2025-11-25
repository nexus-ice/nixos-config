{
	imports = [ 
      		./hardware-configuration.nix # Include the results of the hardware scan.
      		../default #Include default config
      		../defaultserver #Include default Server config
      		./hostname.nix
      		./bootloader.nix
		./network.nix
		./filesystem.nix
		./jellyfin.nix
		./audiobookshelf.nix
    	];
}
