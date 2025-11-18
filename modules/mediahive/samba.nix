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
				"map to guest" = "Bad User";
    			};
			Storage =  {
      				"path" = "/mnt/pool/";
      				"browseable" = "yes";
      				"writeable" = "yes";
				"public" = "yes";
      				"guest ok" = "yes";
    			};
  		};
  	};

	services.samba-wsdd = {
		enable = true;
		openFirewall = true;
	};
	
	networking.firewall.enable = true;
	networking.firewall.allowPing = true;
}
