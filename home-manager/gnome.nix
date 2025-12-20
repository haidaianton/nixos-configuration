{ pkgs, ... }:

{
  programs.gnome-shell = {
    enable = true;
    extensions = [
      { package = pkgs.gnomeExtensions.gsconnect; }
      { package = pkgs.gnomeExtensions.burn-my-windows; }
      { package = pkgs.gnomeExtensions.dash2dock-lite; }
      { package = pkgs.gnomeExtensions.appindicator; }
      { package = pkgs.gnomeExtensions.coverflow-alt-tab; }
      { package = pkgs.gnomeExtensions.user-themes; }
      { package = pkgs.gnomeExtensions.vitals; }
      { package = pkgs.gnomeExtensions.blur-my-shell; }
      { package = pkgs.gnomeExtensions.caffeine; }
      { package = pkgs.gnomeExtensions.compiz-windows-effect; }
      { package = pkgs.gnomeExtensions.compiz-alike-magic-lamp-effect; }
    ];
  };

  dconf.settings = {
    "org/gnome/desktop/input-sources".xkb-options = [ "grp:win_space_toggle" ];
  };
}
