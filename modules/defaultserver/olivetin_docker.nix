{ var , pkgs , ... }:{
	systemd.services.olivetin = {
  		wantedBy = ["multi-user.target"];
  		after = ["docker.service" "docker.socket"];
  		path = [pkgs.docker];
  		script = '' docker compose -f /home/corum/nixos-config/docker-compose/olivetin/docker-compose.yml up '';
  		#restartTriggers = [ "/home/corum/nixos-config/docker-compose/olivetin/docker-compose.yml".source ];
	};
}
