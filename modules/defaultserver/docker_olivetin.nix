{ var , pkgs , ... }:
let
	dir = "stacks/olivetin";
in {
	environment.etc."${dir}/docker-compose.yml".text =
		/*
		yaml
      		*/
      		''services:
                 olivetin:
                  container_name: olivetin
                  image: jamesread/olivetin
                  volumes:
                   - /home/${var.user}/docker/olivetin/config:/config
                   - /home/${var.user}/docker/olivetin/ssh:/ssh
                  ports:
                   - 10000:1337
                  restart: unless-stopped '';
 
	systemd.services.olivetin = {
      		wantedBy = ["multi-user.target"];
      		after = ["docker.service" "docker.socket"];
      		path = [pkgs.docker];
      		script = '' docker compose -f /etc/${dir}/docker-compose.yml up '';
      		restartTriggers = [ "/etc/${dir}/docker-compose.yml" ];
    };
}
