{ var , pkgs , ... }:{
	virtualisation.docker.enable = true;
	environment.systemPackages = with pkgs; [ docker-compose ];
	users.users.${var.user}.extraGroups = [ "docker" ];
}
