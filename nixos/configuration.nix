{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
      ./modules/bundle.nix
    ];

  boot.kernelPackages = pkgs.linuxPackages_zen;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  time.timeZone = "Europe/Kyiv";
  
  # PLASMA ENVIRONMENT
  # services.displayManager.sddm.enable = true;
  # services.desktopManager.plasma6.enable = true;

  # GNOME ENVIRONMENT
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # COSMIC ENVIRONMENT
  # services.displayManager.cosmic-greeter.enable = true;
  # services.desktopManager.cosmic.enable = true;

  # BUDGIE ENVIRONMENT
  # services.xserver.desktopManager.budgie.enable = true;
  # services.xserver.displayManager.lightdm.enable = true;


  system.stateVersion = "25.11";

}
