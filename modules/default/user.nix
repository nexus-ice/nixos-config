{var , pkgs , ...}:{
  	users.users.${var.user} = {
    		isNormalUser = true;
    		extraGroups = [ "networkmanager" "wheel" ];
  	};
  	home-manager.users."${var.user}" = import ../../home-modules;
}
