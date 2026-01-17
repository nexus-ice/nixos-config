{ var , ... }:{
	services.samba = { 
		enable = true;
		openFirewall = true;
		settings = {
  			global = {
 				"workgroup" = "WORKGROUP";
				"force user" = "${var.user}";
				"guest account" = "${var.user}";
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

	networking.firewall.allowPing = true;
}
