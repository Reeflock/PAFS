# PAFS - Perks, Attributes & Skills for Sale

A lightweight, highly configurable progression and economy overhaul for **Cyberpunk 2077 (2.0+ & Phantom Liberty)** that adds **Perk Point Shards**, **Attribute Point Shards**, **Cyberware Capacity Shards**, **5-Tier Skill Progression Shards**, and **Permanent Health Food** to vendor inventories across Night City and Dogtown.

Complete with real-time in-game Mod Settings, authentic CDPR localization & icons, strict cap protections, and safe, save-friendly injection.

> [!IMPORTANT]
> ### ⏳ First Time Installing on an Existing Save?
> **You MUST advance in-game time by 24 hours for vendor stocks to refresh!**
> 
> *⚠️ **Note:** This refers to **IN-GAME time** (which takes 2 seconds using the fast-forward feature), **NOT** 24 real-world hours! Do not sit and wait in real life.*
> 
> In *Cyberpunk 2077*, vendor inventories are cached on a 24-hour cycle. When loading an existing save file after installing this mod, vendors you have already visited will **not** display new items until time advances.
> 
> #### 🕒 How to Skip Time Instantly (Takes 2 Seconds):
> 1. Press **`I`** (or open the character/inventory hub menu).
> 2. Look at the bottom-left corner of the screen and click **"Skip Time"** (or press the button shown on your HUD).
> 3. Move the slider to **24 Hours** and confirm.
> 
> *(Alternatively, walk up to the bed in any of V's apartments and sleep for 24 in-game hours).*

---

## ✨ Features

### 1. Progression Items in Vendor Stocks
* **Perk Point Shard:** Grants +1 Perk Point instantly upon purchase or use.
* **Attribute Point Shard:** Grants +1 Attribute Point instantly upon purchase or use.
* **Cyberware Capacity Shard:** Permanently increases Cyberware Capacity (Humanity).  
  * *Cap Protection:* Automatically stops selling once the engine hard cap of **450 Capacity** is reached.
  * *Configurable Bonus:* Adjustable from +1 to +25 capacity per shard (default: +5).
* **Skill Progression Shards (5 Skills $\times$ 5 Tiers):**  
  * Grants progression XP directly to **Solo**, **Shinobi**, **Engineer**, **Netrunner**, or **Headhunter**.
  * Features authentic CDPR localization keys and unique skillbook icons for each discipline.
  * *Cap Protection:* Vendors stop stocking shards for any skill that has reached the maximum level of **60**.
  * *Dynamic Tier Selection:* Switch the active tier on the fly via Mod Settings:
    * **Tier 1 (Basic):** +500 XP
    * **Tier 2 (Balanced - Default):** +1,000 XP
    * **Tier 3 (Advanced):** +2,000 XP
    * **Tier 4 (Expert):** +3,500 XP
    * **Tier 5 (Master):** +5,000 XP
* **Permanent Health Food (+7 Max Health):**  
  * Permanently increases V's maximum health pool by +7 per unit, mirroring Phantom Liberty's iconic consumables.

---

### 2. Lore-Friendly & Flexible Vendor Distribution
Configure which stores carry specific items or choose a lore-accurate distribution:

* **Skill Shard Distribution:**
  * **Specialized (Lore-Friendly - Default):**
    * *Gunsmiths & Firearms Shops:* Solo, Shinobi, Engineer, Headhunter.
    * *Melee Weapon Trainers (Coach Fred, etc.):* Solo, Shinobi, Headhunter.
    * *Ripperdocs:* Solo (Body chrome), Shinobi (Reflexes chrome), Headhunter (Cool/Stealth chrome).
    * *Netrunners & Tech Stores:* Netrunner daemons and Engineer hardware.
    * *Pharmacies / Medpoints:* Solo (Steroid stims) and Headhunter (Focus stims).
    * *Black Market Dealer (Michał Kiciński in Dogtown Stadium):* Stocks all 5 skill shards!
  * **Ripperdocs & Netrunners Only:** Concentrates progression items in tech and cyber clinics.
  * **All Enabled PAFS Vendors:** Stocks available skills everywhere PAFS items appear.
* **Cyberware Capacity Distribution:**
  * **Ripperdocs Only (Recommended - Default):** Restricts capacity shards to Ripperdoc clinics and the Dogtown Stadium dealer.
  * **All Enabled PAFS Vendors:** Sold at all enabled stores.

---

### 3. Dynamic HUD Feedback & Multi-Purchase Support
* **Multi-Stack Purchases:** Buy 1, 5, or 20 shards in bulk; the mod atomically removes the items from your backpack and applies the points sequentially on the exact same frame.
* **Scaled HUD Notifications:** The on-screen popup dynamically calculates and displays the exact total bonus gained (e.g., buying 3 Health Foods displays `+21 Max Health`; buying 5 Tier 2 shards displays `+5,000 XP`).
* **Zero Inventory Clutter:** Consumables apply immediately upon purchase, preventing ghost items, duplicate entries, or backpack clutter.

---

### 4. Real-Time In-Game Economy & Mod Settings
Switch between pre-balanced pricing presets on the fly or customize individual sliders from 0 to 100,000 E$:

| Item Type | Casual Preset | Balanced Preset (Default) | Expensive Preset | Custom Slider |
| :--- | :--- | :--- | :--- | :--- |
| **Perk Point Shard** | 3,500 E$ | 20,000 E$ | 50,000 E$ | 0 – 100,000 E$ |
| **Attribute Point Shard** | 5,000 E$ | 30,000 E$ | 65,000 E$ | 0 – 100,000 E$ |
| **Cyberware Capacity Shard** | 4,000 E$ | 25,000 E$ | 55,000 E$ | 0 – 100,000 E$ |
| **Permanent Health Food (+7 HP)** | 2,500 E$ | 10,000 E$ | 30,000 E$ | 0 – 100,000 E$ |
| **Skill Shards (Tier 1: +500 XP)** | 1,500 E$ | 6,000 E$ | 15,000 E$ | Flat Slider |
| **Skill Shards (Tier 2: +1,000 XP)** | 3,000 E$ | 12,000 E$ | 28,000 E$ | Flat Slider |
| **Skill Shards (Tier 3: +2,000 XP)** | 5,500 E$ | 22,000 E$ | 45,000 E$ | Flat Slider |
| **Skill Shards (Tier 4: +3,500 XP)** | 8,500 E$ | 35,000 E$ | 60,000 E$ | Flat Slider |
| **Skill Shards (Tier 5: +5,000 XP)** | 12,000 E$ | 50,000 E$ | 75,000 E$ | Flat Slider |

---

### 5. Robust & Safe Architecture
* **Single-Stack Clamping & Auto-Deduplication:** Dynamic vendor stock synchronization (`SyncPAFSItemStock`) strictly caps vendor stock at 60 units and erases duplicate stacks, completely preventing the inventory-doubling bug across all item types.
* **Non-Store Interactable Guards:** Early-exit optimization skips stock loops for Drop Points and Vending Machines, ensuring zero CPU overhead on world interactions.
* **Pure TweakDB & Redscript Integration:** Does not mutate permanent save file schemas or create orphaned script records. Completely safe to install or uninstall mid-playthrough.

---

## 📋 Requirements

Ensure the following core framework mods are installed and updated for your game version:

1. [RED4ext](https://github.com/WopsS/RED4ext) (v1.13+)
2. [Redscript](https://github.com/jac3km4/redscript) (v0.5+)
3. [TweakXL](https://github.com/psiberx/cp2077-tweak-xl) (v1.8+)
4. [Mod Settings](https://github.com/jackhumbert/mod_settings) (v0.2+)

---

## 📥 Installation

### Method 1: Vortex / Mod Manager (Recommended)
Download and install the release archive through Vortex or your preferred mod manager.

### Method 2: Manual Installation
1. Download the latest release `.zip`.
2. Extract the files into your Cyberpunk 2077 root directory:
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
1. Open the project folder or clone this repository.
2. Open `PAFS.cpmodproj` in [WolvenKit](https://github.com/WolvenKit/WolvenKit).
3. Click **Install**.

> [!TIP]
> After installing, load your save and **Skip Time by 24 in-game hours** to refresh vendor inventories!

---

## 🗑️ Uninstallation

Delete the following directories from your Cyberpunk 2077 installation:
* `Cyberpunk 2077/r6/scripts/PAFS/`
* `Cyberpunk 2077/r6/tweaks/PAFS/`

*(Because this mod does not alter permanent save file structures, uninstalling is safe at any time).*

---

## ⚙️ Mod Settings Overview

Open Cyberpunk 2077 $\rightarrow$ Pause Menu $\rightarrow$ **Mod Settings** $\rightarrow$ **PAFS - Perks & Attributes for Sale**:

* **Category 1: Quick Presets** — `Casual`, `Balanced (Default)`, `Expensive`, or `Custom`.
* **Category 2: Advanced Prices** — Individual price sliders (0 to 100,000 E$) for all 5 item categories when preset is set to `Custom`.
* **Category 3: Item Availability** — Independent toggles for Perk Shards, Attribute Shards, Capacity Shards (with distribution & bonus sliders), and Permanent Health Food.
* **Category 4: Skill Progression Shards** — Master toggle, Tier selection (T1 through T5), and Distribution mode (`Specialized`, `Ripperdocs & Netrunners`, `All Vendors`).
* **Category 5: Vendor Availability** — Granular vendor toggles: Weapons, Ripperdocs, Netrunners & Trainers, Junk Shops & Kiosks (enabled by default), Pharmacies, Food Stalls, and Clothing Stores.

---

## 📜 License

This project is open-source under the [MIT License](LICENSE).
