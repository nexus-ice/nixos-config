{ config, pkgs, var, ... }:{
    services.adguardhome = {
            enable = true;
            openFirewall = true;
            mutableSettings = true;
            #settings = {
            #  http = {
            #    address = "0.0.0.0:3000";
            #  };
            #};
    };
	networking.firewall.allowedTCPPorts = [ 80 53 ];
}
