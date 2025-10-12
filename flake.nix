{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
		home-manager = {
			url = "github:nix-community/home-manager/release-25.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};

  	};
  	outputs = inputs@{ nixpkgs, home-manager, ... }: {
    		nixosConfigurations = {
    			nexus = nixpkgs.lib.nixosSystem {
      				system = "x86_64-linux";
      				modules = [ 
      					./modules/nexus
      					home-manager.nixosModules.home-manager
      					{
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;
						home-manager.users.corum = import ./modules/nexus/home.nix;
					}
      				];
    			};
    			vault = nixpkgs.lib.nixosSystem {
      				system = "x86_64-linux";
      				modules = [ 
      					./modules/vault 
      				];
    			};
  		};
  	};
}
