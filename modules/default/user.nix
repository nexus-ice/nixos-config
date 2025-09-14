{pkgs, ...}:
{
	# Define a user account. Don't forget to set a password with ‘passwd’.
  	users.users.corum = {
    		isNormalUser = true;
    		description = "corum";
    		extraGroups = [ "networkmanager" "wheel" ];
    		packages = with pkgs; [ ];
  	};
  	
}
