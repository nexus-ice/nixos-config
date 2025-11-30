{
	imports = [ 
      		./hardware-configuration.nix # Include the results of the hardware scan.
      		../server #Include default Server config
      		./bootloader.nix
      		./filesystem.nix
      		./network.nix
    	];
}
