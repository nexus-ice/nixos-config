{ pkgs, ... }:
{
	home.packages = with pkgs; [ keepassxc github-desktop thunderbird ];
	programs.firefox.enable = true;
}
