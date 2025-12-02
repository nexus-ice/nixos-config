{ var , pkgs , ... }:
let
	dir = "/home/${var.user}/nixos-config/docker-compose/olivetin";
in {
	systemd.services.olivetin = {
      		wantedBy = ["multi-user.target"];
      		after = ["docker.service" "docker.socket"];
      		path = [pkgs.docker];
      		script = '' docker compose -f ${dir}/docker-compose.yml up '';
      		restartTriggers = [ "${dir}/docker-compose.yml" ];
    };
}