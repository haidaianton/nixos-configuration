{ inputs, pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [
    "electron-35.7.5"
  ];

  programs.firefox = {
    enable = true;
    package = pkgs.firefox;
    nativeMessagingHosts.packages = [ pkgs.firefoxpwa ];
  };

  programs.steam.enable = true;
  programs.gamemode.enable = true;
  programs.zsh.enable = true;
  programs.direnv.enable = true;
  # programs.kdeconnect.enable = true;

  services.flatpak.enable = true;

  environment.systemPackages = with pkgs; [
    neovim
    wget
    home-manager
    polychromatic
    heroic
    openrazer-daemon
    git
    gcc
    python3
    protonup-qt
    bottles
    gnome-tweaks
    telegram-desktop
    viber
    discord
    obs-studio
    github-desktop
    kitty
    cmake
    meson
    ninja
    sdl3
    inputs.kwin-effects-forceblur.packages.${pkgs.system}.default
    pavucontrol
    zoom-us
    mesa-demos
    # gfn-electron
    mangohud
    davinci-resolve
    ffmpeg
    vlc
    kdePackages.kdenlive
    libreoffice-qt6-fresh
    cool-retro-term
    appeditor
    firefoxpwa
    google-chrome
    wineWowPackages.stable
    openrgb-with-all-plugins
#    inputs.ayugram-desktop.packages.${pkgs.system}.ayugram-desktop
  ];
}
