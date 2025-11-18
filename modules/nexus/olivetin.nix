{
  services.olivetin = {
    enable = true;
    settings.ListenAddressSingleHTTPFrontend = "192.168.2.110:11000";
    user = "corum";
    settings = {
    	actions = [
    		{
  		title = "Hello world!";
    		shell = "echo 'Hello World!'";
    		}
    		{
  		title = "Hello world!2";
    		shell = "echo 'Hello World!'";
    		}
    	];
    };
  };
  networking.firewall.allowedTCPPorts = [11000];
}
