{ pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		mergerfs
	];
	fileSystems."/mnt/pool" = {
		fsType = "fuse.mergerfs";
		device = "/mnt/HDD*";
		options = ["defaults" "allow_other"];
	};
}
