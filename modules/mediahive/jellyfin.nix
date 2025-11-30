{ var , pkgs , ... }:
{
	services.jellyfin = {
    		enable = true;
    		openFirewall = true;
    		user = "${var.user}";
    		group = "users";
  		};
  	environment.systemPackages = [
    		pkgs.jellyfin
    		pkgs.jellyfin-web
    		pkgs.jellyfin-ffmpeg
  	];
}
