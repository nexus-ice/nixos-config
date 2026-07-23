{ var , ... }:{
	services.samba = { 
		settings = {
			cups$ = {
					"path" = "/home/${var.user}/.hidden_share/";
					"browseable" = "no";
      				"writeable" = "yes";
			};
		};
	};
}
