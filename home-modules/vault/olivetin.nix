{ var , ... }:
{
	home.file."docker/olivetin/config/config.yaml".target = ../../dotfiles/${var.host}/olivetin/config.yaml;
}
