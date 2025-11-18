{
    services.olivetin = {
	enable = true;
	settings.ListenAddressSingleHTTPFrontend = "192.168.2.2:10000";
	user = "corum";
	group = "users";
	path = ["pkgs.bash" "pkgs.ssh" "pkgs.openssh"];
	settings = {
	pageTitle = "MediaHive";
	actions = [
	    {
		title = "Shutdown MediaHive";
		shell = "echo ssh root@mediahive 'poweroff'";
		icon = "&#128250;";
		timeout = 10;
	    }
	    {
		title = "Restart MediaHive";
		exec = [ "echo" "bla" ];
		icon = "&#128250;";
		timeout = 10;
	    }
	    ];
	};
    };
    networking.firewall.allowedTCPPorts = [10000];
}
