{ pkgs, ... }:
{
	home.packages = with pkgs; [ keepassxc github-desktop thunderbird wakeonlan ];
	programs.firefox.enable = true;
}
