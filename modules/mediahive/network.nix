{
	networking = {
  		interfaces = {
    			enp4s0 = {
      				ipv4.addresses = [{
        				address = "192.168.2.2";
        				prefixLength = 24;
      				}];
      				wakeOnLan.enable = true;
    			};
  		};
  		defaultGateway.address = "192.168.2.1";
  		nameservers = ["1.1.1.1"];
  		firewall = {
    			allowedUDPPorts = [ 9 ];
  		};
	};
}
