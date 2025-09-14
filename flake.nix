{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

  	};
  	outputs = inputs@{ nixpkgs, home-manager, ... }: {
    		nixosConfigurations = {
    			nexus = nixpkgs.lib.nixosSystem {
      				system = "x86_64-linux";
      				modules = [ 
      					./modules/nexus 
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
