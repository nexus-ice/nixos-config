{ pkgs, ... }:
{
	home.packages = with pkgs; [ keepassxc github-desktop thunderbird wakeonlan geany ];
	programs.firefox.enable = true;
}
