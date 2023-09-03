{ pkgs, ... }:
{
  # used to set up system wide configuration, actual configuration happens in
  # home-manager
  programs.sway = {
    enable = true;
    extraPackages = [ ];
  };

  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-wlr
        xdg-desktop-portal-gtk
      ];
    };
  };

  # sway complains now that wlr and sway portal are active at the same time
  # xdg.portal.wlr.enable = true;
  security.polkit.enable = true;
  /* security.rtkit.enable = true; */
  /* services.pipewire = { */
  /*   enable = true; */
  /*   alsa.enable = true; */
  /*   pulse.enable = true; */
  /* }; */
  /* security.pam.services.swaylock = { }; */
  /**/
  /* services.greetd = { */
  /*   enable = true; */
  /*   settings = { */
  /*     default_session = { */
  /*       command = "${pkgs.greetd.greetd}/bin/agreety --cmd sway"; */
  /*     }; */
  /*   }; */
  /* }; */
}
