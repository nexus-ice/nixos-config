{ var, inputs, ... }:{
	
	imports = [
  		inputs.home-manager.nixosModules.default
  		./modules
	];
	home-manager = {
		useGlobalPkgs = true;
		useUserPackages = true;
		#users.corum = import ./home-modules;
  		extraSpecialArgs = {
    			inherit inputs; 
    			inherit var;
  		};
  		backupFileExtension = "hm-backup";
		};

	#documentation.nixos.enable = false;
	system.stateVersion = "${var.base}";
}
