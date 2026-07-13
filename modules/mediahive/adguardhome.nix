{ config, pkgs, var, ... }:{
    services.adguardhome = {
        enable = true;
        openFirewall = true;
        mutableSettings = true;
        settings = {
			http = {
				address = "0.0.0.0:3000"; # Macht das Web-Interface im LAN erreichbar
			};
			dns = {
				bind_hosts = [ "0.0.0.0" ]; # Lauscht auf allen Netzwerkschnittstellen nach DNS-Anfragen
			};
		};
    };
	networking.firewall.allowedTCPPorts = [ 80 53 ];
	networking.firewall.allowedUDPPorts = [ 53 ];
	services.resolved.enable = false;
}