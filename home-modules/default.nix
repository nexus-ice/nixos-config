{ var, ... }:{
	imports = [		
		./default
		./${var.host}			
	];

	programs.home-manager.enable = true;

	home = {
  		username = ${var.user};
  		homeDirectory = "/home/${var.user}";  
  		stateVersion  = "${var.base}";
	};

}
