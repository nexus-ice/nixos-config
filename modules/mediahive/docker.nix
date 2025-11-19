{ pkgs, ... }:
{
	virtualisation.docker.enable = true;
	#virtualisation.docker.rootless = {
  	#	enable = true;
  	#	setSocketVariable = true;
	#};

	environment.systemPackages = with pkgs; [
		docker-compose
	];

	users.users.corum.extraGroups = [ "docker" ];
	networking.firewall.allowedTCPPorts = [10000];#olivetin port
	#networking.firewall.enable = false;
}
