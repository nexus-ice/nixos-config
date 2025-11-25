{pkgs, ...}:
{
  	users.users.corum = {
    		isNormalUser = true;
    		description = "corum";
    		extraGroups = [ "networkmanager" "wheel" ];
    		packages = with pkgs; [ ];
  	};
  	
}
