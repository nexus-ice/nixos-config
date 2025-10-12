{ config, pkgs, home-manager,... }:
{
	home-manager.useGlobalPkgs = true;
	home-manager.useUserPackages = true;
	home-manager.users.corum = import ./home.nix;
}
