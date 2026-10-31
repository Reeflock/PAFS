# PAFS - Perks & Attributes for Sale

A lightweight, highly configurable mod for **Cyberpunk 2077** that adds **Perk Point Shards**, **Attribute Point Shards**, and **Permanent Health Food** to vendor inventories across Night City, complete with real-time in-game customization via **Mod Settings**.

> [!IMPORTANT]
> ### ⏳ First Time Installing on an Existing Save?
> **You MUST advance in-game time by 24 hours for vendor stocks to refresh!**
> 
> *⚠️ **Note:** This refers to **IN-GAME time** (which takes 2 seconds using the fast-forward feature), **NOT** 24 real-world hours! Do not sit and wait in real life.*
> 
> In *Cyberpunk 2077*, vendor inventories are cached on a 24-hour cycle. When loading an existing save file after installing this mod, vendors you have already visited will **not** display the shards until their stock refreshes.
> 
> #### 🕒 How to Skip Time Instantly (Takes 2 Seconds):
> 1. Press **`I`** (or open the character/inventory hub menu).
> 2. Look at the bottom-left corner of the screen and click **"Skip Time"** (or press the button shown on your HUD).
> 3. Move the slider to **24 Hours** and confirm.
> 
> *(Alternatively, walk up to the bed in any of V's apartments and sleep for 24 in-game hours).*

---

## ✨ Features

- **Consumable Point Shards in Vendor Stocks:**
  - **Perk Point Shard:** Grants +1 Perk Point instantly upon purchase or use.
  - **Attribute Point Shard:** Grants +1 Attribute Point instantly upon purchase or use.
  - **Permanent Health Food:** Permanently increases max health.
- **Batch Purchasing Support:**
  - Safely buy items in bulk (e.g., 5 or 10 at once); shards automatically consume and apply points sequentially without inventory clutter or infinite loops.
- **In-Game Mod Settings Menu (Real-Time):**
  - **Quick Presets:** Switch between pre-balanced pricing tiers on the fly without restarting:
    - *Casual:* Perk Shard: 3,500 E$ | Attribute Shard: 5,000 E$
    - *Balanced:* Perk Shard: 20,000 E$ | Attribute Shard: 30,000 E$
    - *Expensive:* Perk Shard: 50,000 E$ | Attribute Shard: 65,000 E$
    - *Custom:* Unlocks individual price sliders.
  - **Advanced Prices:** Fine-tune individual prices from 0 to 100,000 E$ using step sliders.
  - **Item Availability:** Individual ON/OFF toggles for Perk Shards, Attribute Shards, and Permanent Health Food.
  - **Vendor Availability:** Choose exactly which vendor types stock modded items across Night City and Dogtown (Phantom Liberty):
    - Weapon Vendors (Gunsmiths)
    - Ripperdoc Clinics
    - Netrunner & Skill Trainers
    - Junk Shops, Pawnbrokers & Street Kiosks
    - Pharmacies / Medpoints
    - Diners, Food Stalls & Bars
    - Clothing & Apparel Stores
- **100% Safe Architecture:**
  - Vendor stocks are injected cleanly via TweakDB without mutating saved game structures or serializing invalid data into save files.
  - Real-time display filtering ensures toggling items or vendors in Mod Settings takes effect immediately with zero save bloat or crashes.

---

## 📋 Requirements

Ensure the following core framework mods are installed and updated for your Cyberpunk 2077 version:

1. [RED4ext](https://github.com/WopsS/RED4ext) (v1.13+)
2. [Redscript](https://github.com/jac3km4/redscript) (v0.5+)
3. [TweakXL](https://github.com/psiberx/cp2077-tweak-xl) (v1.8+)
4. [Mod Settings](https://github.com/jackhumbert/mod_settings) (v0.2+)

---

## 📥 Installation

### Method 1: Vortex / Mod Manager (Recommended)
Download and install the release archive through Vortex or your preferred mod manager.

### Method 2: Manual Installation
1. Download the latest release from the [Releases](https://github.com) page.
2. Extract the archive into your Cyberpunk 2077 root directory:
   ```text
   Cyberpunk 2077/
   └── r6/
       ├── scripts/
       │   └── PAFS/
       │       └── PAFS.reds
       └── tweaks/
           └── PAFS/
               └── pafs.yaml
   ```

### Method 3: WolvenKit
1. Clone this repository or open the project folder.
2. Open `PAFS.cpmodproj` in [WolvenKit](https://github.com/WolvenKit/WolvenKit).
3. Click **Install**.

> [!TIP]
> After installing, load your save, open the pause menu, and **Skip Time by 24 in-game hours** to refresh vendor inventories.

---

## 🗑️ Uninstallation

Delete the following directories from your game folder:
- `Cyberpunk 2077/r6/scripts/PAFS/`
- `Cyberpunk 2077/r6/tweaks/PAFS/`

*(Because this mod does not alter permanent save state structures, uninstalling is completely safe at any point).*

---

## ⚙️ Configuration

Open Cyberpunk 2077 $\rightarrow$ Pause Menu $\rightarrow$ **Mod Settings** $\rightarrow$ **PAFS - Perks & Attributes for Sale**:
- Adjust your preferred pricing preset or sliders.
- Toggle item availability and vendor distribution.
- Changes apply in real-time.

---

## 📜 License

This project is open-source under the [MIT License](LICENSE).
