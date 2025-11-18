{ pkgs, ... }:
{
  services.jellyfin = {
    enable = true;
    openFirewall = true;
    user = "corum";
  };
  environment.systemPackages = [
    pkgs.jellyfin
    pkgs.jellyfin-web
    pkgs.jellyfin-ffmpeg
  ];
}
