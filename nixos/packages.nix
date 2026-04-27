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

  programs.appimage = {
    enable = true;
    binfmt = true;
  };
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
    # bottles
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
    pavucontrol
    zoom-us
    mesa-demos
    mangohud
    # davinci-resolve
    ffmpeg
    vlc
    # kdePackages.kdenlive
    libreoffice-qt6-fresh
    cool-retro-term
    appeditor
    firefoxpwa
    wineWow64Packages.stable
    openrgb-with-all-plugins
    whatsapp-electron
    shaderc
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    sassc
    ayugram-desktop
    linux-wallpaperengine
    
    # Gnome Extensions
    gnomeExtensions.gsconnect
    gnomeExtensions.burn-my-windows
    gnomeExtensions.dash2dock-lite
    gnomeExtensions.appindicator
    gnomeExtensions.coverflow-alt-tab
    gnomeExtensions.user-themes
    gnomeExtensions.vitals
    gnomeExtensions.blur-my-shell
    gnomeExtensions.caffeine
    gnomeExtensions.compiz-windows-effect
    gnomeExtensions.compiz-alike-magic-lamp-effect
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.search-light
    gnomeExtensions.color-picker
    gnomeExtensions.desktop-icons-ng-ding
  ];
}
