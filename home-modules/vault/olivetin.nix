{ var , ... }:
{
	home.file."docker/olivetin/config/config.yaml".source = /home/${var.user}/nixos-config/dotfiles/${var.host}/olivetin/config.yaml;
}
