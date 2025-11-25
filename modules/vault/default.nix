{
	imports = [ 
      		./hardware-configuration.nix # Include the results of the hardware scan.
      		../default #Include default config
      		../defaultserver #Include default Server config
      		./hostname.nix
      		./bootloader.nix
      		./filesystem.nix
      		./network.nix
    	];
}
