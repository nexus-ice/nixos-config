{
	imports = [ 
      		./hardware-configuration.nix # Include the results of the hardware scan.
      		../defaultserver #Include default Server config
      		./bootloader.nix
		./network.nix
		./filesystem.nix
		./jellyfin.nix
		./audiobookshelf.nix
		./docker.nix
		./kavita.nix
    	];
}
