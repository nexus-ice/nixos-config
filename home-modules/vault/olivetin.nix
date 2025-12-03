{ var , ... }:
{
	home.file."docker/olivetin/config/config.yaml".target = "nixos-config/dotfiles/${var.host}/olivetin/config.yaml";
}
