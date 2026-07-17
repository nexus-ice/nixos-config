{
	services.navidrome = {
		enable = true;
		openFirewall = true; # Öffnet Port 4533 automatisch
		settings = {
			MusicFolder = "/mnt/pool/Musik";
			Address = "0.0.0.0";
			LogLevel = "info";
		};
	};
	networking.firewall.allowedTCPPorts = [ 4533 ];
}
