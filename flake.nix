{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
		
		home-manager = {
			url = "github:nix-community/home-manager/release-25.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};


  	};  	
  	outputs = inputs@{ nixpkgs, home-manager, ... }: 
  	let
  			system = "x86_64-linux";
  			user = "corum";
  			base = "25.05";
  	in
  	{
    		nixosConfigurations = {
    			nexus = nixpkgs.lib.nixosSystem {
      				inherit system;
      				specialArgs = {
        				inherit inputs;
        				var = {
          					inherit user;
          					host = "nexus";
          					inherit base;
        				};
        			};
      				modules = [
      					./configuration.nix
      					home-manager.nixosModules.home-manager
      				];
    			};
    			vault = nixpkgs.lib.nixosSystem {
      				inherit system;
      				specialArgs = {
        				inherit inputs;
        				var = {
          					inherit user;
          					host = "vault";
          					inherit base;
        				};
        			};
      				modules = [
      					./configuration.nix
      					home-manager.nixosModules.home-manager
      				];
    			};
			mediahive = nixpkgs.lib.nixosSystem {
				inherit system;
      				specialArgs = {
        				inherit inputs;
        				var = {
          					inherit user;
          					host = "mediahive";
          					inherit base;
        				};
        			};
      				modules = [
      					./configuration.nix
      					home-manager.nixosModules.home-manager
      				];
			};
  		};
  	};
}
