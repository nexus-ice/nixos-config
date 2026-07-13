{ var , ... }:{
    services.adguardhome = {
            enable = true;
            openFirewall = true;
            mutableSettings = true;
            port = 3000;
    };
}
