{
	imports = [ 
      		./hardware-configuration.nix # Include the results of the hardware scan.
      		../defaultserver #Include default Server config
      		./bootloader.nix
      		./filesystem.nix
      		./network.nix
    	];
}
