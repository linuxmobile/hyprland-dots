* **Window Manager** • [Hyprland ](https://github.com/hyprwm/Hyprland)🎨 Tiles Everywhere!
* **Shell** • [Zsh ](https://www.zsh.org) 🐚 con [starship](https://github.com/starship/starship) Cross Shell Platform!
* **Terminal** • [WezTerm ](https://github.com/wez/wezterm) 💻 A powerful term with gpu support!
* **Panel** • [Waybar ](https://aur.archlinux.org/packages/waybar-hyprland-git)🍧 Patched waybar following hyprland faq!
* **Notify Daemon** • [Dunst ](https://github.com/dunst-project/dunst) 🍃 Minimalist and functional!
* **Launcher** • [Rofi ](https://github.com/davatorium/rofi) 🚀 Realmente rápido y customizable!
* **File Manager** • [Ranger ](https://github.com/ranger/ranger)🔖 custom!
* **GUI Basic-IDE** • [NvChad-V2 ](https://github.com/linuxmobile/nvchad-v2) Rice IDE!

## 🌸 Setup

<img src="https://i.imgur.com/QopB79H.png">

### Install steps (Take care about it. Isn't a full tutorial)
<details>

[Read Spanish Detailed Guide Here](https://aprendiendoaprogramar.netlify.app/configurando-hyprland-y-wayland/)

<summary><b>LONG READ</b></summary>

### Installation (Paq and deps)

    First of all, this is a cute disclaimer. All of this settings are installed in Artix and in wayland only! I don't know how it work in other distro.

#### Using paru as AUR helper 🆘

```sh
# install paru... 
mkdir $HOME/Downloads/_cloned-repos
cd $HOME/Downloads/_cloned-repos
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si  
```

#### Installing needed dependencies 📦
	
```sh
paru -S hyprland-git polkit-kde-agent dunst grimblast rofi rofi-emoji       \
wl-clipboard wf-recorder wlogout grimblast-git hyprpicker-git hyprpaper-git \
xdg-desktop-portal-hyprland-git ffmpegthumbnailer tumbler wtype colord      \
imagemagick swaylock-effects qt5-wayland qt6-wayland ripgrep waybar-hyprland-git
```

**Extras*
```sh
# themes
paru -S catppuccin-gtk-theme-mocha catppuccin-cursors-mocha catppuccin-mocha-grub-theme-git nwg-look

# apps
paru -S cava pavucontrol ranger zsh starship neovim viewnior noise-suppression-for-voice
```

**If you want a Graphical file-manager*
```sh
thunar thunar-archive-plugin file-roller   
```


##### Clone Repo

```sh 
git clone https://github.com/linuxmobile/hyprland-dots $HOME/Downloads/hyprland-dots/
cd $HOME/Downloads/hyprland-dots/
rsync -avxHAXP --exclude '.git*' .* ~/
```

#### As fonts i'm using **Cartograph CF** (patched with nerdfont) It's a licensed font, then select any font you like :3
```sh
mkdir -p $HOME/Downloads/nerdfonts/
cd $HOME/Downloads/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.1/CascadiaCode.zip
unzip '*.zip' -d $HOME/Downloads/nerdfonts/
rm -rf *.zip
sudo cp -R $HOME/Downloads/nerdfonts/ /usr/share/fonts/
```

##### Regenerate font cache
```sh 
fc-cache -rv  
```
### As gtk theme i'm using [Gruvbox](https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme)

## Credits

_Beauty community: [r/unixporn](https://www.reddit.com/r/unixporn)._

**©** _Artist who make Wallpapers, graphics and more_

**©** _All of mantainers of this amazing and opensource tools :3_

---


© [Owl4ce](https://github.com/owl4ce)
© [Ilham25](https://github.com/ilham25)
© [Siduck](https://github.com/siduck)
© [NvChad](https://github.com/NvChad) 
© [Rxyhn](https://github.com/rxyhn)
© [AmitGold](https://github.com/AmitGolden)
