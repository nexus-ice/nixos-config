/*
Samba
*/
{ pkgs, lib, ... }:
{
	services.samba = { 
		enable = true;
		openFirewall = true;
		settings = {
  			global = {
 				"workgroup" = "WORKGROUP";
				"force user" = "corum";
				"guest account" = "corum";
				"map to guest" = "Bad User";
    			};
			Storage =  {
      				"path" = "/mnt/pool/";
      				"browseable" = "yes";
      				"writeable" = "yes";
				"public" = "yes";
      				"guest ok" = "yes";
				"force user" = "corum";
				"force group" = "users";
				"create mask" = "666";
				"directory mask" = "777";
    			};
  		};
  	};

	services.samba-wsdd = {
		enable = true;
		openFirewall = true;
	};
	
	networking.firewall.enable = false;
	networking.firewall.allowPing = true;
}
