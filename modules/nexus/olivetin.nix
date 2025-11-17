{
  services.olivetin = {
    enable = true;
    settings.ListenAddressSingleHTTPFrontend = "192.168.2.110:11000";
    user = "corum";
    openFirewall = true;
  };
}
