/*
network
*/
{ pkgs, lib, config, ... }:
{
networking = {
  interfaces.enp2s0 = {
    ipv4.addresses = [{
      address = "192.168.2.3";
      prefixLength = 24;
    }];
  };
  defaultGateway.address = "192.168.2.1";
  nameservers = ["1.1.1.1"];
};
}
