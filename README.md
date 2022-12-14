* **Window Manager** • [Hyprland ](https://github.com/hyprwm/Hyprland)🎨 Tiles Everywhere!
* **Shell** • [Zsh ](https://www.zsh.org) 🐚 con [starship](https://github.com/starship/starship) Cross Shell Platform!
* **Terminal** • [WezTerm ](https://github.com/wez/wezterm) 💻 A powerful term with gpu support!
* **Panel** • [Waybar ](https://aur.archlinux.org/packages/waybar-hyprland-git)🍧 Patched waybar following hyprland faq!
* **Notify Daemon** • [Dunst ](https://github.com/dunst-project/dunst) 🍃 Minimalist and functional!
* **Launcher** • [Rofi ](https://github.com/davatorium/rofi) 🚀 Realmente rápido y customizable!
* **File Manager** • [Ranger ](https://github.com/ranger/ranger)🔖 custom!
* **GUI Basic-IDE** • [Nyoom ](https://github.com/nyoom-engineering/nyoom.nvim) Rice IDE!

## 🌸 Setup

<img src="https://i.imgur.com/FXfVoCT.png">

### Install steps (Take care about it. Isn't a full tutorial)
<details>

<summary><b>Manual</b></summary>

### Installation (Paq and deps)

    First of all, this is a cute disclaimer. All of this settings are installed in Artix and in wayland only! I don't know how it work in other distro.

#### Using paru as AUR helper 🆘

```sh
# install paru... 
echo "### Installing paru as AUR Helper"
mkdir $HOME/Downloads/_cloned-repos
cd $HOME/Downloads/_cloned-repos
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si  
```

#### Install dependencies 📦
	
```sh
echo "### Installing Required Packages"
paru -S hyprland-git polkit-gnome ffmpeg neovim viewnior dunst rofi pavucontrol ranger zsh starship wl-clipboard wf-recorder swaybg grimblast-git ffmpegthumbnailer tumbler playerctl noise-suppression-for-voice
```

**If you want a Graphical file-manager*
```sh
thunar thunar-archive-plugin 
ffmpegthumbnailer tumbler file-roller gvfs     
```


##### Clonamos y Copiamos

```sh 
git clone https://github.com/linuxmobile/hyprland-dots $HOME/Downloads/hyprland-dots/
cd $HOME/Downloads/hyprland-dots/
rsync -avxHAXP --exclude '.git*' .* ~/  
```

##### As fonts i'm using Cartograph CF (patched with nerdfont) It's a licensed font, then select any font you like :3
```sh
mkdir -p $HOME/Downloads/nerdfonts/
cd $HOME/Downloads/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/2.2.0-RC/CascadiaCode.zip
unzip '*.zip' -d $HOME/Downloads/nerdfonts/
rm -rf *.zip
sudo cp -R $HOME/Downloads/nerdfonts/ /usr/share/fonts/
```

##### Regenerate font cache
```sh 
fc-cache -rv  
```
### As gtk theme i'm using [RosePine](https://rosepinetheme.com/)

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