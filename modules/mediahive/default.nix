{
	imports = [ 
      		./hardware-configuration.nix # Include the results of the hardware scan.
      		../server #Include default Server config
      		./bootloader.nix
		./network.nix
		./filesystem.nix
		./jellyfin.nix
		./audiobookshelf.nix
    	];
}
