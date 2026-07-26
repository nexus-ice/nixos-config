{ var , ... }:{
	services.samba.settings = {
		"hidden_share$" = {
			"path" = "/home/${var.user}/.hidden_share/";
			"browseable" = "no";
			"writeable" = "yes";
		};
	};
}