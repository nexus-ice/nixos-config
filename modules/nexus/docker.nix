{ pkgs, ... }:
{
	#virtualisation.docker.enable = true;
	virtualisation.docker.rootless = {
  		enable = true;
  		setSocketVariable = true;
	};

	environment.systemPackages = with pkgs; [
  		docker-compose  
	];

	users.users.corum.extraGroups = [ "docker" ];
	#networking.firewall.enable = false;
}
