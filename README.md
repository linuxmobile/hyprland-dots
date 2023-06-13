- **Window Manager** • [Hyprland](https://github.com/hyprwm/Hyprland)🎨 Tiles
  Everywhere!
- **Shell** • [Zsh](https://www.zsh.org) 🐚 con
  [starship](https://github.com/starship/starship) Cross Shell Platform!
- **Terminal** • [WezTerm](https://github.com/wez/wezterm) 💻 A powerful term
  with gpu support!
- **Panel** • [Waybar](https://aur.archlinux.org/packages/waybar-hyprland-git)🍧
  Patched waybar following hyprland faq!
- **Notify Daemon** • [Dunst](https://github.com/dunst-project/dunst) 🍃
  Minimalist and functional!
- **Launcher** • [Rofi](https://github.com/davatorium/rofi) 🚀 Realmente rápido
  y customizable!
- **File Manager** • [Ranger](https://github.com/ranger/ranger)🔖 custom!
- **GUI Basic-IDE** • [NvChad-V2](https://github.com/linuxmobile/nvchad-v2) Rice
  IDE!

## 🌸 Setup

<img src="https://i.imgur.com/QopB79H.png">

### Install steps (Take care about it. Isn't a tutorial)

<details>

[Read Spanish Detailed Guide Here](https://aprendiendoaprogramar.netlify.app/configurando-hyprland-y-wayland/)

<summary><b>LONG READ DISCLAIMER</b></summary>

## INSTALLATION (Arch Based Only)

##### First of all, this is a cute disclaimer. All of this settings are installed in Artix and in wayland only! I don't know how it work in other distro.

<div align="left">

<details>
<summary><h3>Hyprland Stuff</h3></summary>

###### To get started, let's make sure we have all the necessary prerequisites. In this case, I'm using Paru as the AUR helper, but keep in mind that your system may require a different approach.

- Installation using paru

```sh
## Hyprland Stuff
paru -S hyprland-git hyprpicker-git waybar-hyprland-git \
dunst nwg-look wf-recorder wlogout wlsunset
```

```sh
## Related
paru -S hyprland-git hyprpicker-git waybar-hyprland-git \
dunst nwg-look wf-recorder wlogout wlsunset
```

</details>

<details>
<summary><h3>Dependencies</h3></summary>

- Installation using paru

```sh
## Dependencies
paru -S colord ffmpegthumbnailer gnome-keyring grimblast-git gtk-engine-murrine \
imagemagick kvantum pamixer playerctl polkit-kde-agent qt5-quickcontrols        \
qt5-quickcontrols2 qt5-wayland qt6-wayland sway-bg ttf-font-awesome tumbler     \
ttf-jetbrains-mono ttf-icomoon-feather xdg-desktop-portal-hyprland-git xdotool  \
xwaylandvideobridge-cursor-mode-2-git cliphist qt5-imageformats qt5ct
```

</details>

<details>
<summary><h3>Apps & More</h3></summary>

```sh
## CLI & Tools
paru -S btop cava neofetch noise-suppression-for-voice   \
rofi-lbonn-wayland-git rofi-emoji starship zsh viewnior
```

```sh
## Browser & File Explorer
paru -S brave-bin file-roller noto-fonts noto-fonts-cjk  \
noto-fonts-emoji thunar thunar-archive-plugin
```

```sh
# VSCode
paru -S code code-features code-marketplace
```

```sh
# Theme Based
paru -S catppuccin-gtk-theme papirus-icon-theme sddm-git swaylock-effects-git 
```

```sh
# Pipewire & OBS
paru -S obs-studio-rc ffmpeg-obs cef-minimal-obs-rc-bin   \
pipewire pipewire-alsa pipewire-audio pipewire-pulse      \
pipewire-jack wireplumber gst-plugin-pipewire pavucontrol
```

</details>

</div>

<div align="left">

###### To get started, let's make sure we have all the necessary prerequisites. In this case, I'm using Paru as the AUR helper, but keep in mind that your system may require a different approach. 

```sh
git clone https://github.com/linuxmobile/hyprland-dots $HOME/Downloads/hyprland-dots/
cd $HOME/Downloads/hyprland-dots/
rsync -avxHAXP --exclude '.git*' .* ~/
```

</div>

## Credits

_Beauty community: [r/unixporn](https://www.reddit.com/r/unixporn)._

**©** _Artist who make Wallpapers, graphics and more_

**©** _All of mantainers of this amazing and opensource tools :3_

---

© [Owl4ce](https://github.com/owl4ce) © [Ilham25](https://github.com/ilham25) ©
[Siduck](https://github.com/siduck) © [NvChad](https://github.com/NvChad) ©
[Rxyhn](https://github.com/rxyhn) © [AmitGold](https://github.com/AmitGolden)
