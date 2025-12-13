{ pkgs, ... }: {
  services.printing.enable = true;
  services.printing.drivers = with pkgs; [
    hplipWithPlugin
  ];

  services.avahi = {
    enable = true;
    nssmdns4 = true;
  };
}
