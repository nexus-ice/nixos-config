{ config, pkgs, var, ... }:{
    services.adguardhome = {
        enable = true;
        openFirewall = true;
        mutableSettings = true;
    };
	networking.firewall.allowedTCPPorts = [ 8080 53 ];
	networking.firewall.allowedUDPPorts = [ 53 ];
	services.resolved.enable = false;
}