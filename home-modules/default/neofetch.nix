{ var , pkgs , ... }:
{
	home.packages = with pkgs; [ neofetch ];
	programs.bash.enable = true;
  	programs.bash.initExtra = ''${pkgs.neofetch}/bin/neofetch'';
  	xdg.configFile."neofetch/config.conf".source = ../../dotfiles/default/neofetch/config.conf;
}
