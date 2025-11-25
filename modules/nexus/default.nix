{
	imports = [ 
      		./hardware-configuration.nix # Include the results of the hardware scan.
      		../default #Include default config
      		./hostname.nix
      		./bootloader.nix
      		./gnome.nix
      		./sound.nix
      		./printing.nix
      		./systemTimeLocal.nix
      		./flatpak.nix
    	];
}
