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
    			};
    			nixconfig = {
      				"path" = "/home/corum/.nixconfig";
      				"browseable" = "yes";
      				"writeable" = "yes";
      				"guest ok" = "yes";
    			};
				Storage =  {
      				"path" = "/mnt/pool/";
      				"browseable" = "yes";
      				"writeable" = "yes";
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
