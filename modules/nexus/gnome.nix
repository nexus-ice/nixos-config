{ var , pkgs , ... }:{
	# Enable the X11 windowing system.
  	services.xserver.enable = true;

  	# Enable the GNOME Desktop Environment.
  	services.xserver.displayManager.gdm.enable = true;
  	services.xserver.desktopManager.gnome.enable = true;
  	
  	# Enable touchpad support (enabled default in most desktopManager).
  	# services.xserver.libinput.enable = true;

	# Enable automatic login for the user.
  	services.displayManager.autoLogin.enable = true;
  	services.displayManager.autoLogin.user = "${var.user}";

  	# Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  	systemd.services."getty@tty1".enable = false;
  	systemd.services."autovt@tty1".enable = false;
  	environment.gnome.excludePackages = (with pkgs; [
		atomix # puzzle game
		cheese # webcam tool
		epiphany # web browser
		evince # document viewer
		geary # email reader
		gedit # text editor
		gnome-characters
		gnome-music
		gnome-photos
		#gnome-terminal
		gnome-tour
		gnome-maps
		hitori # sudoku game
		iagno # go game
		tali # poker game
		totem # video player
		yelp # help viewer
	]);
}
