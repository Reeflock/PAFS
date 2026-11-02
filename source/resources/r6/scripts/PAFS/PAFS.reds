// =================================================================
// PAFS - Perks & Attributes for Sale
// Real-Time Dynamic In-Game Mod Settings & Safe Native Transaction Core
// =================================================================

public enum PAFSPricePreset {
    Casual = 0,
    Balanced = 1,
    Expensive = 2,
    Custom = 3
}

public enum PAFSCWDistribution {
    RipperdocsOnly = 0,
    AllVendors = 1
}

public enum PAFSSkillShardTier {
    Tier1 = 0,
    Tier2 = 1,
    Tier3 = 2,
    Tier4 = 3,
    Tier5 = 4
}

public enum PAFSSkillDistribution {
    Specialized = 0,
    RipperdocsAndNetrunners = 1,
    AllVendors = 2
}

public class PAFSSettings extends ScriptableSystem {
    // -------------------------------------------------------------
    // Category 1: Quick Presets
    // -------------------------------------------------------------
    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Quick Presets")
    @runtimeProperty("ModSettings.category.order", "1")
    @runtimeProperty("ModSettings.displayName", "Price Preset")
    @runtimeProperty("ModSettings.description", "Quick economy scale (Casual, Balanced, Expensive). Select 'Custom' to use sliders below.")
    @runtimeProperty("ModSettings.displayValues.Casual", "Casual Preset")
    @runtimeProperty("ModSettings.displayValues.Balanced", "Balanced Preset (Default)")
    @runtimeProperty("ModSettings.displayValues.Expensive", "Expensive Preset")
    @runtimeProperty("ModSettings.displayValues.Custom", "Custom (Use Advanced Sliders)")
    public let pricePreset: PAFSPricePreset = PAFSPricePreset.Balanced;

    // -------------------------------------------------------------
    // Category 2: Advanced Prices
    // -------------------------------------------------------------
    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Advanced Prices")
    @runtimeProperty("ModSettings.category.order", "2")
    @runtimeProperty("ModSettings.displayName", "Perk Shard Price")
    @runtimeProperty("ModSettings.description", "Price in E$ for +1 Perk Point shard. (Custom preset only)")
    @runtimeProperty("ModSettings.step", "500")
    @runtimeProperty("ModSettings.min", "0")
    @runtimeProperty("ModSettings.max", "100000")
    public let perkShardPrice: Int32 = 20000;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Advanced Prices")
    @runtimeProperty("ModSettings.category.order", "2")
    @runtimeProperty("ModSettings.displayName", "Attribute Shard Price")
    @runtimeProperty("ModSettings.description", "Price in E$ for +1 Attribute Point shard. (Custom preset only)")
    @runtimeProperty("ModSettings.step", "500")
    @runtimeProperty("ModSettings.min", "0")
    @runtimeProperty("ModSettings.max", "100000")
    public let attributeShardPrice: Int32 = 30000;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Advanced Prices")
    @runtimeProperty("ModSettings.category.order", "2")
    @runtimeProperty("ModSettings.displayName", "Capacity Shard Price")
    @runtimeProperty("ModSettings.description", "Price in E$ for Cyberware Capacity shard. (Custom preset only)")
    @runtimeProperty("ModSettings.step", "500")
    @runtimeProperty("ModSettings.min", "0")
    @runtimeProperty("ModSettings.max", "100000")
    public let cwCapacityShardPrice: Int32 = 25000;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Advanced Prices")
    @runtimeProperty("ModSettings.category.order", "2")
    @runtimeProperty("ModSettings.displayName", "Skill Shard Price")
    @runtimeProperty("ModSettings.description", "Flat price in E$ for Skill Progression shards. (Custom preset only)")
    @runtimeProperty("ModSettings.step", "500")
    @runtimeProperty("ModSettings.min", "0")
    @runtimeProperty("ModSettings.max", "100000")
    public let skillShardPrice: Int32 = 12000;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Advanced Prices")
    @runtimeProperty("ModSettings.category.order", "2")
    @runtimeProperty("ModSettings.displayName", "Health Food Price")
    @runtimeProperty("ModSettings.description", "Price in E$ for Permanent Health Food (+5 HP). (Custom preset only)")
    @runtimeProperty("ModSettings.step", "500")
    @runtimeProperty("ModSettings.min", "0")
    @runtimeProperty("ModSettings.max", "100000")
    public let healthFoodPrice: Int32 = 10000;

    // -------------------------------------------------------------
    // Category 3: Item Availability
    // -------------------------------------------------------------
    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Item Availability")
    @runtimeProperty("ModSettings.category.order", "3")
    @runtimeProperty("ModSettings.displayName", "Perk Point Shards")
    @runtimeProperty("ModSettings.description", "Stock +1 Perk Point shards in shops. Learned instantly upon purchase.")
    public let enablePerkShards: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Item Availability")
    @runtimeProperty("ModSettings.category.order", "3")
    @runtimeProperty("ModSettings.displayName", "Attribute Point Shards")
    @runtimeProperty("ModSettings.description", "Stock +1 Attribute Point shards in shops. Learned instantly upon purchase.")
    public let enableAttributeShards: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Item Availability")
    @runtimeProperty("ModSettings.category.order", "3")
    @runtimeProperty("ModSettings.displayName", "Cyberware Capacity Shards")
    @runtimeProperty("ModSettings.description", "Stock Cyberware Capacity shards in shops. Stops selling when 450 cap is reached.")
    public let enableCWCapacityShards: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Item Availability")
    @runtimeProperty("ModSettings.category.order", "3")
    @runtimeProperty("ModSettings.displayName", "Capacity Shard Distribution")
    @runtimeProperty("ModSettings.description", "Ripperdocs Only restricts shards to clinics & Dogtown Stadium. All Vendors sells everywhere.")
    @runtimeProperty("ModSettings.displayValues.RipperdocsOnly", "Ripperdocs Only (Recommended)")
    @runtimeProperty("ModSettings.displayValues.AllVendors", "All Enabled PAFS Vendors")
    public let cwDistribution: PAFSCWDistribution = PAFSCWDistribution.RipperdocsOnly;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Item Availability")
    @runtimeProperty("ModSettings.category.order", "3")
    @runtimeProperty("ModSettings.displayName", "Capacity Bonus per Shard")
    @runtimeProperty("ModSettings.description", "Capacity granted per shard (+1 to +25). Clamped at 450 cap.")
    @runtimeProperty("ModSettings.step", "1")
    @runtimeProperty("ModSettings.min", "1")
    @runtimeProperty("ModSettings.max", "25")
    public let cwCapacityBonus: Int32 = 5;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Item Availability")
    @runtimeProperty("ModSettings.category.order", "3")
    @runtimeProperty("ModSettings.displayName", "Permanent Health Food")
    @runtimeProperty("ModSettings.description", "Stock Permanent Health Food (+5 Max Health) at diners and food stalls.")
    public let enableHealthFood: Bool = false;

    // -------------------------------------------------------------
    // Category 4: Skill Progression Shards
    // -------------------------------------------------------------
    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Skill Progression Shards")
    @runtimeProperty("ModSettings.category.order", "4")
    @runtimeProperty("ModSettings.displayName", "Skill Progression Shards")
    @runtimeProperty("ModSettings.description", "Stock custom skill shards (Solo, Shinobi, etc.). Stops selling capped skills (Lvl 60).")
    public let enableSkillShards: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Skill Progression Shards")
    @runtimeProperty("ModSettings.category.order", "4")
    @runtimeProperty("ModSettings.displayName", "Skill Shard Tier")
    @runtimeProperty("ModSettings.description", "Shard quality & XP: T1 (+500), T2 (+1k), T3 (+2k), T4 (+3.5k), T5 (+5k XP).")
    @runtimeProperty("ModSettings.displayValues.Tier1", "Tier 1: Basic (+500 XP)")
    @runtimeProperty("ModSettings.displayValues.Tier2", "Tier 2: Balanced (+1,000 XP) [Default]")
    @runtimeProperty("ModSettings.displayValues.Tier3", "Tier 3: Advanced (+2,000 XP)")
    @runtimeProperty("ModSettings.displayValues.Tier4", "Tier 4: Expert (+3,500 XP)")
    @runtimeProperty("ModSettings.displayValues.Tier5", "Tier 5: Master (+5,000 XP)")
    public let skillTier: PAFSSkillShardTier = PAFSSkillShardTier.Tier2;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Skill Progression Shards")
    @runtimeProperty("ModSettings.category.order", "4")
    @runtimeProperty("ModSettings.displayName", "Skill Shard Distribution")
    @runtimeProperty("ModSettings.description", "Specialized: Solo/Shinobi at Guns & Rippers; Netrunner at Runners; Engineer at Tech; all 5 in Dogtown Stadium.")
    @runtimeProperty("ModSettings.displayValues.Specialized", "Specialized Vendors (Lore-Friendly)")
    @runtimeProperty("ModSettings.displayValues.RipperdocsAndNetrunners", "Ripperdocs & Netrunners Only")
    @runtimeProperty("ModSettings.displayValues.AllVendors", "All Enabled PAFS Vendors")
    public let skillDistribution: PAFSSkillDistribution = PAFSSkillDistribution.Specialized;

    // -------------------------------------------------------------
    // Category 5: Vendor Availability
    // -------------------------------------------------------------
    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "5")
    @runtimeProperty("ModSettings.displayName", "Weapon Vendors")
    @runtimeProperty("ModSettings.description", "Firearms, melee weapon shops, and gunsmiths (e.g. Wilson, Arroyo, Coach Fred).")
    public let enableWeapons: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "5")
    @runtimeProperty("ModSettings.displayName", "Ripperdocs")
    @runtimeProperty("ModSettings.description", "Cyberware clinics across NC & Dogtown (e.g. Viktor, Fingers, Cassius, Farida).")
    public let enableRipperdocs: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "5")
    @runtimeProperty("ModSettings.displayName", "Netrunners & Trainers")
    @runtimeProperty("ModSettings.description", "Netrunner daemon specialists, tech stores, and trainers (e.g. Yoko, Nix, Pacifica).")
    public let enableNetrunners: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "5")
    @runtimeProperty("ModSettings.displayName", "Junk Shops & Kiosks")
    @runtimeProperty("ModSettings.description", "Pawnbrokers, kiosks, and black market dealers (e.g. Michał Kiciński in Dogtown Stadium).")
    public let enableJunk: Bool = false;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "5")
    @runtimeProperty("ModSettings.displayName", "Pharmacies / Medpoints")
    @runtimeProperty("ModSettings.description", "Neighborhood drugstores, med vendors, and medical clinics.")
    public let enableMedical: Bool = false;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "5")
    @runtimeProperty("ModSettings.displayName", "Food & Bars")
    @runtimeProperty("ModSettings.description", "Diners, street noodles, and nightlife bars (e.g. Afterlife, El Coyote Cojo).")
    public let enableFood: Bool = false;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "5")
    @runtimeProperty("ModSettings.displayName", "Clothing Stores")
    @runtimeProperty("ModSettings.description", "Apparel boutiques and thread shops (e.g. Jinguji, Stylishly).")
    public let enableClothing: Bool = false;

    public func GetPerkShardPrice() -> Int32 {
        if Equals(this.pricePreset, PAFSPricePreset.Casual) {
            return 3500;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Balanced) {
            return 20000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Expensive) {
            return 50000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Custom) {
            return this.perkShardPrice;
        }
        return 20000;
    }

    public func GetAttributeShardPrice() -> Int32 {
        if Equals(this.pricePreset, PAFSPricePreset.Casual) {
            return 5000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Balanced) {
            return 30000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Expensive) {
            return 65000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Custom) {
            return this.attributeShardPrice;
        }
        return 30000;
    }

    public func GetCWCapacityShardPrice() -> Int32 {
        if Equals(this.pricePreset, PAFSPricePreset.Casual) {
            return 4000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Balanced) {
            return 25000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Expensive) {
            return 55000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Custom) {
            return this.cwCapacityShardPrice;
        }
        return 25000;
    }

    public func GetHealthFoodPrice() -> Int32 {
        if Equals(this.pricePreset, PAFSPricePreset.Casual) {
            return 2500;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Balanced) {
            return 10000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Expensive) {
            return 30000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Custom) {
            return this.healthFoodPrice;
        }
        return 10000;
    }

    public func GetSkillShardXP() -> Int32 {
        if Equals(this.skillTier, PAFSSkillShardTier.Tier1) {
            return 500;
        }
        if Equals(this.skillTier, PAFSSkillShardTier.Tier2) {
            return 1000;
        }
        if Equals(this.skillTier, PAFSSkillShardTier.Tier3) {
            return 2000;
        }
        if Equals(this.skillTier, PAFSSkillShardTier.Tier4) {
            return 3500;
        }
        if Equals(this.skillTier, PAFSSkillShardTier.Tier5) {
            return 5000;
        }
        return 1000;
    }

    public func GetSkillShardPriceForTier(tier: PAFSSkillShardTier) -> Int32 {
        if Equals(this.pricePreset, PAFSPricePreset.Custom) {
            return this.skillShardPrice;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Casual) {
            if Equals(tier, PAFSSkillShardTier.Tier1) { return 1500; }
            if Equals(tier, PAFSSkillShardTier.Tier2) { return 3000; }
            if Equals(tier, PAFSSkillShardTier.Tier3) { return 5500; }
            if Equals(tier, PAFSSkillShardTier.Tier4) { return 8500; }
            if Equals(tier, PAFSSkillShardTier.Tier5) { return 12000; }
            return 3000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Balanced) {
            if Equals(tier, PAFSSkillShardTier.Tier1) { return 6000; }
            if Equals(tier, PAFSSkillShardTier.Tier2) { return 12000; }
            if Equals(tier, PAFSSkillShardTier.Tier3) { return 22000; }
            if Equals(tier, PAFSSkillShardTier.Tier4) { return 35000; }
            if Equals(tier, PAFSSkillShardTier.Tier5) { return 50000; }
            return 12000;
        }
        if Equals(this.pricePreset, PAFSPricePreset.Expensive) {
            if Equals(tier, PAFSSkillShardTier.Tier1) { return 15000; }
            if Equals(tier, PAFSSkillShardTier.Tier2) { return 28000; }
            if Equals(tier, PAFSSkillShardTier.Tier3) { return 45000; }
            if Equals(tier, PAFSSkillShardTier.Tier4) { return 60000; }
            if Equals(tier, PAFSSkillShardTier.Tier5) { return 75000; }
            return 28000;
        }
        return 12000;
    }

    public func GetSkillShardPrice() -> Int32 {
        return this.GetSkillShardPriceForTier(this.skillTier);
    }

    public func GetSkillShardPriceByTDB(tdbID: TweakDBID) -> Int32 {
        let tier: PAFSSkillShardTier = PAFSSettings.GetSkillShardTier(tdbID, this.skillTier);
        return this.GetSkillShardPriceForTier(tier);
    }

    public static func IsNetrunnerVendor(vendorID: TweakDBID, vendorType: gamedataVendorType) -> Bool {
        if Equals(vendorType, gamedataVendorType.TechJunk) {
            return true;
        }
        if vendorID == t"Vendors.wat_kab_netrunner_01" ||
           vendorID == t"Vendors.wat_lch_netrunner_01" ||
           vendorID == t"Vendors.wbr_jpn_netrunner_01" ||
           vendorID == t"Vendors.wbr_jpn_netrunner_02" ||
           vendorID == t"Vendors.hey_rey_netrunner_01" ||
           vendorID == t"Vendors.pac_cvi_techstore_01" ||
           vendorID == t"Vendors.NetrunnerTrainer" ||
           vendorID == t"Vendors.cz_stadium_netrunner_01" ||
           vendorID == t"Vendors.cz_con_netrunner_01" ||
           vendorID == t"Vendors.wat_kab_techstore_01" ||
           vendorID == t"Vendors.wbr_jpn_techstore_01" ||
           vendorID == t"Vendors.std_arr_techstore_01" ||
           vendorID == t"Vendors.std_rcr_techstore_01" ||
           vendorID == t"Vendors.Tech_Junk" ||
           vendorID == t"Vendors.Tech_Junk_EP1" {
            return true;
        }
        return false;
    }

    public static func IsMeleeTrainerVendor(vendorID: TweakDBID) -> Bool {
        if vendorID == t"Vendors.MeleeTrainer" ||
           vendorID == t"Vendors.wat_lch_melee_01" ||
           vendorID == t"Vendors.wat_lch_melee_02" ||
           vendorID == t"Vendors.wbr_jpn_melee_01" ||
           vendorID == t"Vendors.std_arr_melee_01" ||
           vendorID == t"Vendors.pac_cvi_melee_01" ||
           vendorID == t"Vendors.pac_wwd_melee_01" ||
           vendorID == t"Vendors.bls_ina_se5_melee_01" {
            return true;
        }
        return false;
    }

    public func IsVendorTypeEnabled(type: gamedataVendorType) -> Bool {
        if Equals(type, gamedataVendorType.Gunsmith) {
            return this.enableWeapons;
        }
        if Equals(type, gamedataVendorType.RipperDoc) {
            return this.enableRipperdocs;
        }
        if Equals(type, gamedataVendorType.SkillTrainer) {
            return this.enableNetrunners;
        }
        if Equals(type, gamedataVendorType.Junk) || Equals(type, gamedataVendorType.TechJunk) || Equals(type, gamedataVendorType.Kiosk) || Equals(type, gamedataVendorType.Market) {
            return this.enableJunk;
        }
        if Equals(type, gamedataVendorType.Medical) {
            return this.enableMedical;
        }
        if Equals(type, gamedataVendorType.Food) || Equals(type, gamedataVendorType.Drinks) || Equals(type, gamedataVendorType.GrilledFood) || Equals(type, gamedataVendorType.PackedFood) {
            return this.enableFood;
        }
        if Equals(type, gamedataVendorType.Clothes) || Equals(type, gamedataVendorType.Armorsmith) {
            return this.enableClothing;
        }
        if Equals(type, gamedataVendorType.VendingMachine) {
            return false;
        }
        return true;
    }

    public func IsVendorRecordEnabled(vendorID: TweakDBID, type: gamedataVendorType) -> Bool {
        // Dogtown Stadium Skill Shard Vendor (Michał Kiciński) is classified as Junkshop_HUB in TweakDB,
        // but acts as the primary skill shard / skillbook vendor in Phantom Liberty.
        // Enable him if either Netrunners & Trainers OR Junk Shops are enabled!
        if vendorID == t"Vendors.cz_stadium_junk_01_michal_k" {
            return this.enableNetrunners || this.enableJunk;
        }
        // Specific Netrunner & Tech shops belong to Netrunners & Trainers
        if PAFSSettings.IsNetrunnerVendor(vendorID, type) {
            return this.enableNetrunners;
        }
        // Melee weapon vendors & boxing trainers (Coach Fred) belong to Weapon Vendors
        if PAFSSettings.IsMeleeTrainerVendor(vendorID) {
            return this.enableWeapons;
        }
        return this.IsVendorTypeEnabled(type);
    }

    public func IsCWCapacityVendorAllowed(vendorID: TweakDBID, vendorType: gamedataVendorType, gi: GameInstance) -> Bool {
        if !this.enableCWCapacityShards {
            return false;
        }
        let player: ref<PlayerPuppet> = GetPlayer(gi);
        if IsDefined(player) {
            let statsSys: ref<StatsSystem> = GameInstance.GetStatsSystem(gi);
            if IsDefined(statsSys) {
                let capacity: Float = statsSys.GetStatValue(Cast<StatsObjectID>(player.GetEntityID()), gamedataStatType.Humanity);
                if capacity >= 450.0 {
                    return false; // Hard cap reached: Stop selling Cyberware Capacity Shards!
                }
            }
        }
        let vendorEnabled: Bool = this.IsVendorRecordEnabled(vendorID, vendorType);
        if !vendorEnabled {
            return false;
        }
        if Equals(this.cwDistribution, PAFSCWDistribution.AllVendors) {
            return true;
        }
        if Equals(vendorType, gamedataVendorType.RipperDoc) || vendorID == t"Vendors.cz_stadium_junk_01_michal_k" {
            return true;
        }
        return false;
    }

    public func IsSkillShardVendorAllowed(vendorID: TweakDBID, vendorType: gamedataVendorType, skillProf: gamedataProficiencyType, gi: GameInstance) -> Bool {
        if !this.enableSkillShards {
            return false;
        }

        // 1. Level 60 Cap Protection: If this proficiency is already maxed (>= 60), stop selling!
        let player: ref<PlayerPuppet> = GetPlayer(gi);
        if IsDefined(player) {
            let pds: ref<PlayerDevelopmentSystem> = GameInstance.GetScriptableSystemsContainer(gi).Get(n"PlayerDevelopmentSystem") as PlayerDevelopmentSystem;
            if IsDefined(pds) {
                let curLvl: Int32 = pds.GetProficiencyLevel(player, skillProf);
                if curLvl >= 60 {
                    return false;
                }
            }
        }

        // 2. Dogtown Stadium Black Market Dealer (Michał Kiciński) stocks all 5 if enabled!
        if vendorID == t"Vendors.cz_stadium_junk_01_michal_k" {
            return this.enableNetrunners || this.enableJunk;
        }

        // 3. General category enabled check
        if !this.IsVendorRecordEnabled(vendorID, vendorType) {
            return false;
        }

        // 4. Distribution check
        if Equals(this.skillDistribution, PAFSSkillDistribution.AllVendors) {
            return true;
        }

        let isRipper: Bool = Equals(vendorType, gamedataVendorType.RipperDoc);
        let isNetrunner: Bool = PAFSSettings.IsNetrunnerVendor(vendorID, vendorType) || Equals(vendorType, gamedataVendorType.SkillTrainer);
        let isGunsmith: Bool = Equals(vendorType, gamedataVendorType.Gunsmith);
        let isMelee: Bool = PAFSSettings.IsMeleeTrainerVendor(vendorID);
        let isJunk: Bool = Equals(vendorType, gamedataVendorType.Junk) || Equals(vendorType, gamedataVendorType.Market) || Equals(vendorType, gamedataVendorType.Kiosk);

        if Equals(this.skillDistribution, PAFSSkillDistribution.RipperdocsAndNetrunners) {
            return isRipper || isNetrunner;
        }

        if Equals(this.skillDistribution, PAFSSkillDistribution.Specialized) {
            // Solo: Weapon Vendors, Ripperdocs, and Melee Trainers (Coach Fred)
            if Equals(skillProf, gamedataProficiencyType.StrengthSkill) {
                return isGunsmith || isRipper || isMelee;
            }
            // Shinobi: Weapon Vendors, Ripperdocs, and Melee/Blade Trainers
            if Equals(skillProf, gamedataProficiencyType.ReflexesSkill) {
                return isGunsmith || isRipper || isMelee;
            }
            // Engineer: Gunsmiths, Techstores / Netrunner shops, and Junk vendors
            if Equals(skillProf, gamedataProficiencyType.TechnicalAbilitySkill) {
                return isGunsmith || isNetrunner || isJunk;
            }
            // Netrunner: Netrunner shops and Techstores
            if Equals(skillProf, gamedataProficiencyType.IntelligenceSkill) {
                return isNetrunner;
            }
            // Headhunter: Gunsmiths, Ripperdocs, and Melee/Skill Trainers
            if Equals(skillProf, gamedataProficiencyType.CoolSkill) {
                return isGunsmith || isRipper || isMelee;
            }
            return false;
        }

        return false;
    }

    public static func GetSkillShardTDB(prof: gamedataProficiencyType, tier: PAFSSkillShardTier) -> TweakDBID {
        if Equals(prof, gamedataProficiencyType.StrengthSkill) {
            if Equals(tier, PAFSSkillShardTier.Tier1) { return t"Items.PAFS_SoloShard_T1"; }
            if Equals(tier, PAFSSkillShardTier.Tier2) { return t"Items.PAFS_SoloShard_T2"; }
            if Equals(tier, PAFSSkillShardTier.Tier3) { return t"Items.PAFS_SoloShard_T3"; }
            if Equals(tier, PAFSSkillShardTier.Tier4) { return t"Items.PAFS_SoloShard_T4"; }
            if Equals(tier, PAFSSkillShardTier.Tier5) { return t"Items.PAFS_SoloShard_T5"; }
        }
        if Equals(prof, gamedataProficiencyType.ReflexesSkill) {
            if Equals(tier, PAFSSkillShardTier.Tier1) { return t"Items.PAFS_ShinobiShard_T1"; }
            if Equals(tier, PAFSSkillShardTier.Tier2) { return t"Items.PAFS_ShinobiShard_T2"; }
            if Equals(tier, PAFSSkillShardTier.Tier3) { return t"Items.PAFS_ShinobiShard_T3"; }
            if Equals(tier, PAFSSkillShardTier.Tier4) { return t"Items.PAFS_ShinobiShard_T4"; }
            if Equals(tier, PAFSSkillShardTier.Tier5) { return t"Items.PAFS_ShinobiShard_T5"; }
        }
        if Equals(prof, gamedataProficiencyType.TechnicalAbilitySkill) {
            if Equals(tier, PAFSSkillShardTier.Tier1) { return t"Items.PAFS_EngineerShard_T1"; }
            if Equals(tier, PAFSSkillShardTier.Tier2) { return t"Items.PAFS_EngineerShard_T2"; }
            if Equals(tier, PAFSSkillShardTier.Tier3) { return t"Items.PAFS_EngineerShard_T3"; }
            if Equals(tier, PAFSSkillShardTier.Tier4) { return t"Items.PAFS_EngineerShard_T4"; }
            if Equals(tier, PAFSSkillShardTier.Tier5) { return t"Items.PAFS_EngineerShard_T5"; }
        }
        if Equals(prof, gamedataProficiencyType.IntelligenceSkill) {
            if Equals(tier, PAFSSkillShardTier.Tier1) { return t"Items.PAFS_NetrunnerShard_T1"; }
            if Equals(tier, PAFSSkillShardTier.Tier2) { return t"Items.PAFS_NetrunnerShard_T2"; }
            if Equals(tier, PAFSSkillShardTier.Tier3) { return t"Items.PAFS_NetrunnerShard_T3"; }
            if Equals(tier, PAFSSkillShardTier.Tier4) { return t"Items.PAFS_NetrunnerShard_T4"; }
            if Equals(tier, PAFSSkillShardTier.Tier5) { return t"Items.PAFS_NetrunnerShard_T5"; }
        }
        if Equals(prof, gamedataProficiencyType.CoolSkill) {
            if Equals(tier, PAFSSkillShardTier.Tier1) { return t"Items.PAFS_HeadhunterShard_T1"; }
            if Equals(tier, PAFSSkillShardTier.Tier2) { return t"Items.PAFS_HeadhunterShard_T2"; }
            if Equals(tier, PAFSSkillShardTier.Tier3) { return t"Items.PAFS_HeadhunterShard_T3"; }
            if Equals(tier, PAFSSkillShardTier.Tier4) { return t"Items.PAFS_HeadhunterShard_T4"; }
            if Equals(tier, PAFSSkillShardTier.Tier5) { return t"Items.PAFS_HeadhunterShard_T5"; }
        }
        let fallbackID: TweakDBID;
        return fallbackID;
    }

    public func GetActiveSkillShardTDB(prof: gamedataProficiencyType) -> TweakDBID {
        return PAFSSettings.GetSkillShardTDB(prof, this.skillTier);
    }

    public static func IsPAFSSkillShard(tdbID: TweakDBID) -> Bool {
        if tdbID == t"Items.PAFS_SoloShard" || tdbID == t"Items.PAFS_SoloShard_T1" || tdbID == t"Items.PAFS_SoloShard_T2" || tdbID == t"Items.PAFS_SoloShard_T3" || tdbID == t"Items.PAFS_SoloShard_T4" || tdbID == t"Items.PAFS_SoloShard_T5" {
            return true;
        }
        if tdbID == t"Items.PAFS_ShinobiShard" || tdbID == t"Items.PAFS_ShinobiShard_T1" || tdbID == t"Items.PAFS_ShinobiShard_T2" || tdbID == t"Items.PAFS_ShinobiShard_T3" || tdbID == t"Items.PAFS_ShinobiShard_T4" || tdbID == t"Items.PAFS_ShinobiShard_T5" {
            return true;
        }
        if tdbID == t"Items.PAFS_EngineerShard" || tdbID == t"Items.PAFS_EngineerShard_T1" || tdbID == t"Items.PAFS_EngineerShard_T2" || tdbID == t"Items.PAFS_EngineerShard_T3" || tdbID == t"Items.PAFS_EngineerShard_T4" || tdbID == t"Items.PAFS_EngineerShard_T5" {
            return true;
        }
        if tdbID == t"Items.PAFS_NetrunnerShard" || tdbID == t"Items.PAFS_NetrunnerShard_T1" || tdbID == t"Items.PAFS_NetrunnerShard_T2" || tdbID == t"Items.PAFS_NetrunnerShard_T3" || tdbID == t"Items.PAFS_NetrunnerShard_T4" || tdbID == t"Items.PAFS_NetrunnerShard_T5" {
            return true;
        }
        if tdbID == t"Items.PAFS_HeadhunterShard" || tdbID == t"Items.PAFS_HeadhunterShard_T1" || tdbID == t"Items.PAFS_HeadhunterShard_T2" || tdbID == t"Items.PAFS_HeadhunterShard_T3" || tdbID == t"Items.PAFS_HeadhunterShard_T4" || tdbID == t"Items.PAFS_HeadhunterShard_T5" {
            return true;
        }
        return false;
    }

    public static func GetSkillShardTier(tdbID: TweakDBID, fallbackTier: PAFSSkillShardTier) -> PAFSSkillShardTier {
        if tdbID == t"Items.PAFS_SoloShard_T1" || tdbID == t"Items.PAFS_ShinobiShard_T1" || tdbID == t"Items.PAFS_EngineerShard_T1" || tdbID == t"Items.PAFS_NetrunnerShard_T1" || tdbID == t"Items.PAFS_HeadhunterShard_T1" {
            return PAFSSkillShardTier.Tier1;
        }
        if tdbID == t"Items.PAFS_SoloShard_T2" || tdbID == t"Items.PAFS_ShinobiShard_T2" || tdbID == t"Items.PAFS_EngineerShard_T2" || tdbID == t"Items.PAFS_NetrunnerShard_T2" || tdbID == t"Items.PAFS_HeadhunterShard_T2" {
            return PAFSSkillShardTier.Tier2;
        }
        if tdbID == t"Items.PAFS_SoloShard_T3" || tdbID == t"Items.PAFS_ShinobiShard_T3" || tdbID == t"Items.PAFS_EngineerShard_T3" || tdbID == t"Items.PAFS_NetrunnerShard_T3" || tdbID == t"Items.PAFS_HeadhunterShard_T3" {
            return PAFSSkillShardTier.Tier3;
        }
        if tdbID == t"Items.PAFS_SoloShard_T4" || tdbID == t"Items.PAFS_ShinobiShard_T4" || tdbID == t"Items.PAFS_EngineerShard_T4" || tdbID == t"Items.PAFS_NetrunnerShard_T4" || tdbID == t"Items.PAFS_HeadhunterShard_T4" {
            return PAFSSkillShardTier.Tier4;
        }
        if tdbID == t"Items.PAFS_SoloShard_T5" || tdbID == t"Items.PAFS_ShinobiShard_T5" || tdbID == t"Items.PAFS_EngineerShard_T5" || tdbID == t"Items.PAFS_NetrunnerShard_T5" || tdbID == t"Items.PAFS_HeadhunterShard_T5" {
            return PAFSSkillShardTier.Tier5;
        }
        return fallbackTier;
    }

    public static func GetSkillShardData(tdbID: TweakDBID, out prof: gamedataProficiencyType, out skillName: String, out xp: Int32) -> Bool {
        // Solo
        if tdbID == t"Items.PAFS_SoloShard_T1" { prof = gamedataProficiencyType.StrengthSkill; skillName = "Solo"; xp = 500; return true; }
        if tdbID == t"Items.PAFS_SoloShard_T2" { prof = gamedataProficiencyType.StrengthSkill; skillName = "Solo"; xp = 1000; return true; }
        if tdbID == t"Items.PAFS_SoloShard_T3" { prof = gamedataProficiencyType.StrengthSkill; skillName = "Solo"; xp = 2000; return true; }
        if tdbID == t"Items.PAFS_SoloShard_T4" { prof = gamedataProficiencyType.StrengthSkill; skillName = "Solo"; xp = 3500; return true; }
        if tdbID == t"Items.PAFS_SoloShard_T5" { prof = gamedataProficiencyType.StrengthSkill; skillName = "Solo"; xp = 5000; return true; }
        if tdbID == t"Items.PAFS_SoloShard" { prof = gamedataProficiencyType.StrengthSkill; skillName = "Solo"; xp = 1000; return true; }

        // Shinobi
        if tdbID == t"Items.PAFS_ShinobiShard_T1" { prof = gamedataProficiencyType.ReflexesSkill; skillName = "Shinobi"; xp = 500; return true; }
        if tdbID == t"Items.PAFS_ShinobiShard_T2" { prof = gamedataProficiencyType.ReflexesSkill; skillName = "Shinobi"; xp = 1000; return true; }
        if tdbID == t"Items.PAFS_ShinobiShard_T3" { prof = gamedataProficiencyType.ReflexesSkill; skillName = "Shinobi"; xp = 2000; return true; }
        if tdbID == t"Items.PAFS_ShinobiShard_T4" { prof = gamedataProficiencyType.ReflexesSkill; skillName = "Shinobi"; xp = 3500; return true; }
        if tdbID == t"Items.PAFS_ShinobiShard_T5" { prof = gamedataProficiencyType.ReflexesSkill; skillName = "Shinobi"; xp = 5000; return true; }
        if tdbID == t"Items.PAFS_ShinobiShard" { prof = gamedataProficiencyType.ReflexesSkill; skillName = "Shinobi"; xp = 1000; return true; }

        // Engineer
        if tdbID == t"Items.PAFS_EngineerShard_T1" { prof = gamedataProficiencyType.TechnicalAbilitySkill; skillName = "Engineer"; xp = 500; return true; }
        if tdbID == t"Items.PAFS_EngineerShard_T2" { prof = gamedataProficiencyType.TechnicalAbilitySkill; skillName = "Engineer"; xp = 1000; return true; }
        if tdbID == t"Items.PAFS_EngineerShard_T3" { prof = gamedataProficiencyType.TechnicalAbilitySkill; skillName = "Engineer"; xp = 2000; return true; }
        if tdbID == t"Items.PAFS_EngineerShard_T4" { prof = gamedataProficiencyType.TechnicalAbilitySkill; skillName = "Engineer"; xp = 3500; return true; }
        if tdbID == t"Items.PAFS_EngineerShard_T5" { prof = gamedataProficiencyType.TechnicalAbilitySkill; skillName = "Engineer"; xp = 5000; return true; }
        if tdbID == t"Items.PAFS_EngineerShard" { prof = gamedataProficiencyType.TechnicalAbilitySkill; skillName = "Engineer"; xp = 1000; return true; }

        // Netrunner
        if tdbID == t"Items.PAFS_NetrunnerShard_T1" { prof = gamedataProficiencyType.IntelligenceSkill; skillName = "Netrunner"; xp = 500; return true; }
        if tdbID == t"Items.PAFS_NetrunnerShard_T2" { prof = gamedataProficiencyType.IntelligenceSkill; skillName = "Netrunner"; xp = 1000; return true; }
        if tdbID == t"Items.PAFS_NetrunnerShard_T3" { prof = gamedataProficiencyType.IntelligenceSkill; skillName = "Netrunner"; xp = 2000; return true; }
        if tdbID == t"Items.PAFS_NetrunnerShard_T4" { prof = gamedataProficiencyType.IntelligenceSkill; skillName = "Netrunner"; xp = 3500; return true; }
        if tdbID == t"Items.PAFS_NetrunnerShard_T5" { prof = gamedataProficiencyType.IntelligenceSkill; skillName = "Netrunner"; xp = 5000; return true; }
        if tdbID == t"Items.PAFS_NetrunnerShard" { prof = gamedataProficiencyType.IntelligenceSkill; skillName = "Netrunner"; xp = 1000; return true; }

        // Headhunter
        if tdbID == t"Items.PAFS_HeadhunterShard_T1" { prof = gamedataProficiencyType.CoolSkill; skillName = "Headhunter"; xp = 500; return true; }
        if tdbID == t"Items.PAFS_HeadhunterShard_T2" { prof = gamedataProficiencyType.CoolSkill; skillName = "Headhunter"; xp = 1000; return true; }
        if tdbID == t"Items.PAFS_HeadhunterShard_T3" { prof = gamedataProficiencyType.CoolSkill; skillName = "Headhunter"; xp = 2000; return true; }
        if tdbID == t"Items.PAFS_HeadhunterShard_T4" { prof = gamedataProficiencyType.CoolSkill; skillName = "Headhunter"; xp = 3500; return true; }
        if tdbID == t"Items.PAFS_HeadhunterShard_T5" { prof = gamedataProficiencyType.CoolSkill; skillName = "Headhunter"; xp = 5000; return true; }
        if tdbID == t"Items.PAFS_HeadhunterShard" { prof = gamedataProficiencyType.CoolSkill; skillName = "Headhunter"; xp = 1000; return true; }

        return false;
    }

    public static func Get(gi: GameInstance) -> ref<PAFSSettings> {
        return GameInstance.GetScriptableSystemsContainer(gi).Get(n"PAFSSettings") as PAFSSettings;
    }

    @if(ModuleExists("ModSettingsModule"))
    public func OnAttach() -> Void {
        ModSettings.RegisterListenerToClass(this);
    }

    @if(!ModuleExists("ModSettingsModule"))
    public func OnAttach() -> Void {}

    @if(ModuleExists("ModSettingsModule"))
    public func OnDetach() -> Void {
        ModSettings.UnregisterListenerToClass(this);
    }

    @if(!ModuleExists("ModSettingsModule"))
    public func OnDetach() -> Void {}
}

// -----------------------------------------------------------------
// Vendor Dynamic Stock & Stock Management
// -----------------------------------------------------------------
@addMethod(Vendor)
private func SyncPAFSItemStock(tdbID: TweakDBID, allowed: Bool, existingIndex: Int32, transSystem: ref<TransactionSystem>) -> Void {
    if allowed {
        if existingIndex >= 0 {
            if this.m_stock[existingIndex].quantity < 5 {
                this.m_stock[existingIndex].quantity = 60;
                this.m_stock[existingIndex].isAvailable = true;
            }
        } else {
            let stack: SItemStack;
            stack.itemID = ItemID.FromTDBID(tdbID);
            stack.quantity = 60;
            stack.isAvailable = true;
            ArrayPush(this.m_stock, stack);
            if !ArrayContains(this.m_newItems, tdbID) {
                ArrayPush(this.m_newItems, tdbID);
            }
        }
        if IsDefined(transSystem) {
            let itemID: ItemID = ItemID.FromTDBID(tdbID);
            let qty: Int32 = transSystem.GetItemQuantity(this.m_vendorObject, itemID);
            if qty < 5 {
                let record: ref<Item_Record> = TweakDBInterface.GetItemRecord(tdbID);
                if IsDefined(record) {
                    transSystem.GiveItem(this.m_vendorObject, itemID, 60 - qty, record.Tags());
                } else {
                    transSystem.GiveItem(this.m_vendorObject, itemID, 60 - qty);
                }
            }
        }
    } else if IsDefined(transSystem) {
        let itemID: ItemID = ItemID.FromTDBID(tdbID);
        let qty: Int32 = transSystem.GetItemQuantity(this.m_vendorObject, itemID);
        if qty > 0 {
            transSystem.RemoveItem(this.m_vendorObject, itemID, qty);
        }
    }
}

@addMethod(Vendor)
private func EnsurePAFSStock(settings: ref<PAFSSettings>) -> Void {
    if !IsDefined(this.m_vendorObject) {
        return;
    }

    let vendorType: gamedataVendorType = this.GetVendorType();
    if Equals(vendorType, gamedataVendorType.DropPoint) || Equals(vendorType, gamedataVendorType.VendingMachine) {
        return;
    }

    // Ensure baseline stock and inventory are initialized before modifying
    this.LazyInitStock();
    this.FillVendorInventory(true);

    let vendorID: TweakDBID = this.GetVendorTweakID();
    let vendorEnabled: Bool = settings.IsVendorRecordEnabled(vendorID, vendorType);

    let perkTDB: TweakDBID = t"Items.PAFS_PerkShard";
    let attrTDB: TweakDBID = t"Items.PAFS_AttributeShard";
    let foodTDB: TweakDBID = t"Items.PAFS_HealthFood";
    let cwTDB: TweakDBID = t"Items.PAFS_CyberwareCapacityShard";
    let soloTDB: TweakDBID = settings.GetActiveSkillShardTDB(gamedataProficiencyType.StrengthSkill);
    let shinoTDB: TweakDBID = settings.GetActiveSkillShardTDB(gamedataProficiencyType.ReflexesSkill);
    let engTDB: TweakDBID = settings.GetActiveSkillShardTDB(gamedataProficiencyType.TechnicalAbilitySkill);
    let netTDB: TweakDBID = settings.GetActiveSkillShardTDB(gamedataProficiencyType.IntelligenceSkill);
    let headTDB: TweakDBID = settings.GetActiveSkillShardTDB(gamedataProficiencyType.CoolSkill);

    let allowPerk: Bool = vendorEnabled && settings.enablePerkShards;
    let allowAttr: Bool = vendorEnabled && settings.enableAttributeShards;
    let allowFood: Bool = vendorEnabled && settings.enableHealthFood;
    let allowCW: Bool = settings.IsCWCapacityVendorAllowed(vendorID, vendorType, this.m_gameInstance);
    let allowSolo: Bool = settings.IsSkillShardVendorAllowed(vendorID, vendorType, gamedataProficiencyType.StrengthSkill, this.m_gameInstance);
    let allowShino: Bool = settings.IsSkillShardVendorAllowed(vendorID, vendorType, gamedataProficiencyType.ReflexesSkill, this.m_gameInstance);
    let allowEng: Bool = settings.IsSkillShardVendorAllowed(vendorID, vendorType, gamedataProficiencyType.TechnicalAbilitySkill, this.m_gameInstance);
    let allowNet: Bool = settings.IsSkillShardVendorAllowed(vendorID, vendorType, gamedataProficiencyType.IntelligenceSkill, this.m_gameInstance);
    let allowHead: Bool = settings.IsSkillShardVendorAllowed(vendorID, vendorType, gamedataProficiencyType.CoolSkill, this.m_gameInstance);

    let transSystem: ref<TransactionSystem> = GameInstance.GetTransactionSystem(this.m_gameInstance);

    let perkIndex: Int32 = -1;
    let attrIndex: Int32 = -1;
    let foodIndex: Int32 = -1;
    let cwIndex: Int32 = -1;
    let soloIndex: Int32 = -1;
    let shinoIndex: Int32 = -1;
    let engIndex: Int32 = -1;
    let netIndex: Int32 = -1;
    let headIndex: Int32 = -1;
    let currentTDB: TweakDBID;
    let i: Int32 = 0;

    // Scan existing m_stock: deduplicate, track valid enabled items, remove disabled/obsolete ones
    while i < ArraySize(this.m_stock) {
        currentTDB = ItemID.GetTDBID(this.m_stock[i].itemID);
        if currentTDB == perkTDB {
            if allowPerk {
                if perkIndex < 0 { perkIndex = i; i += 1; } else { ArrayErase(this.m_stock, i); }
            } else { ArrayErase(this.m_stock, i); }
        } else if currentTDB == attrTDB {
            if allowAttr {
                if attrIndex < 0 { attrIndex = i; i += 1; } else { ArrayErase(this.m_stock, i); }
            } else { ArrayErase(this.m_stock, i); }
        } else if currentTDB == foodTDB {
            if allowFood {
                if foodIndex < 0 { foodIndex = i; i += 1; } else { ArrayErase(this.m_stock, i); }
            } else { ArrayErase(this.m_stock, i); }
        } else if currentTDB == cwTDB {
            if allowCW {
                if cwIndex < 0 { cwIndex = i; i += 1; } else { ArrayErase(this.m_stock, i); }
            } else { ArrayErase(this.m_stock, i); }
        } else if currentTDB == soloTDB {
            if allowSolo {
                if soloIndex < 0 { soloIndex = i; i += 1; } else { ArrayErase(this.m_stock, i); }
            } else { ArrayErase(this.m_stock, i); }
        } else if currentTDB == shinoTDB {
            if allowShino {
                if shinoIndex < 0 { shinoIndex = i; i += 1; } else { ArrayErase(this.m_stock, i); }
            } else { ArrayErase(this.m_stock, i); }
        } else if currentTDB == engTDB {
            if allowEng {
                if engIndex < 0 { engIndex = i; i += 1; } else { ArrayErase(this.m_stock, i); }
            } else { ArrayErase(this.m_stock, i); }
        } else if currentTDB == netTDB {
            if allowNet {
                if netIndex < 0 { netIndex = i; i += 1; } else { ArrayErase(this.m_stock, i); }
            } else { ArrayErase(this.m_stock, i); }
        } else if currentTDB == headTDB {
            if allowHead {
                if headIndex < 0 { headIndex = i; i += 1; } else { ArrayErase(this.m_stock, i); }
            } else { ArrayErase(this.m_stock, i); }
        } else if PAFSSettings.IsPAFSSkillShard(currentTDB) {
            // Purge inactive/obsolete tier shards from vendor inventory
            if IsDefined(transSystem) {
                let inactiveQty: Int32 = transSystem.GetItemQuantity(this.m_vendorObject, this.m_stock[i].itemID);
                if inactiveQty > 0 {
                    transSystem.RemoveItem(this.m_vendorObject, this.m_stock[i].itemID, inactiveQty);
                }
            }
            ArrayErase(this.m_stock, i);
        } else if currentTDB == t"Items.Custom_Infinite_PerkShard" || currentTDB == t"Items.Custom_Infinite_AttributeShard" || currentTDB == t"Items.Custom_Infinite_HealthFood" {
            ArrayErase(this.m_stock, i);
        } else {
            i += 1;
        }
    }

    // Sync all PAFS items to vendor stock and inventory
    this.SyncPAFSItemStock(perkTDB, allowPerk, perkIndex, transSystem);
    this.SyncPAFSItemStock(attrTDB, allowAttr, attrIndex, transSystem);
    this.SyncPAFSItemStock(foodTDB, allowFood, foodIndex, transSystem);
    this.SyncPAFSItemStock(cwTDB, allowCW, cwIndex, transSystem);
    this.SyncPAFSItemStock(soloTDB, allowSolo, soloIndex, transSystem);
    this.SyncPAFSItemStock(shinoTDB, allowShino, shinoIndex, transSystem);
    this.SyncPAFSItemStock(engTDB, allowEng, engIndex, transSystem);
    this.SyncPAFSItemStock(netTDB, allowNet, netIndex, transSystem);
    this.SyncPAFSItemStock(headTDB, allowHead, headIndex, transSystem);
}

// -----------------------------------------------------------------
// Vendor Display Filter Hook
// -----------------------------------------------------------------
@wrapMethod(Vendor)
public func GetItemsForSale(checkPlayerCanBuy: Bool) -> array<SItemStack> {
    let settings: ref<PAFSSettings> = PAFSSettings.Get(this.m_gameInstance);
    if IsDefined(settings) {
        this.EnsurePAFSStock(settings);
    }

    let items: array<SItemStack> = wrappedMethod(checkPlayerCanBuy);

    if !IsDefined(settings) {
        return items;
    }

    let vendorID: TweakDBID = this.GetVendorTweakID();
    let vendorType: gamedataVendorType = this.GetVendorType();
    let vendorEnabled: Bool = settings.IsVendorRecordEnabled(vendorID, vendorType);
    let allowPerk: Bool = vendorEnabled && settings.enablePerkShards;
    let allowAttr: Bool = vendorEnabled && settings.enableAttributeShards;
    let allowFood: Bool = vendorEnabled && settings.enableHealthFood;
    let allowCW: Bool = settings.IsCWCapacityVendorAllowed(vendorID, vendorType, this.m_gameInstance);
    let allowSolo: Bool = settings.IsSkillShardVendorAllowed(vendorID, vendorType, gamedataProficiencyType.StrengthSkill, this.m_gameInstance);
    let allowShino: Bool = settings.IsSkillShardVendorAllowed(vendorID, vendorType, gamedataProficiencyType.ReflexesSkill, this.m_gameInstance);
    let allowEng: Bool = settings.IsSkillShardVendorAllowed(vendorID, vendorType, gamedataProficiencyType.TechnicalAbilitySkill, this.m_gameInstance);
    let allowNet: Bool = settings.IsSkillShardVendorAllowed(vendorID, vendorType, gamedataProficiencyType.IntelligenceSkill, this.m_gameInstance);
    let allowHead: Bool = settings.IsSkillShardVendorAllowed(vendorID, vendorType, gamedataProficiencyType.CoolSkill, this.m_gameInstance);

    let filtered: array<SItemStack>;
    let perkTDB: TweakDBID = t"Items.PAFS_PerkShard";
    let attrTDB: TweakDBID = t"Items.PAFS_AttributeShard";
    let foodTDB: TweakDBID = t"Items.PAFS_HealthFood";
    let cwTDB: TweakDBID = t"Items.PAFS_CyberwareCapacityShard";
    let soloTDB: TweakDBID = settings.GetActiveSkillShardTDB(gamedataProficiencyType.StrengthSkill);
    let shinoTDB: TweakDBID = settings.GetActiveSkillShardTDB(gamedataProficiencyType.ReflexesSkill);
    let engTDB: TweakDBID = settings.GetActiveSkillShardTDB(gamedataProficiencyType.TechnicalAbilitySkill);
    let netTDB: TweakDBID = settings.GetActiveSkillShardTDB(gamedataProficiencyType.IntelligenceSkill);
    let headTDB: TweakDBID = settings.GetActiveSkillShardTDB(gamedataProficiencyType.CoolSkill);
    let itemTDB: TweakDBID;

    for stack in items {
        itemTDB = ItemID.GetTDBID(stack.itemID);
        if itemTDB == perkTDB {
            if allowPerk { ArrayPush(filtered, stack); }
        } else if itemTDB == attrTDB {
            if allowAttr { ArrayPush(filtered, stack); }
        } else if itemTDB == foodTDB {
            if allowFood { ArrayPush(filtered, stack); }
        } else if itemTDB == cwTDB {
            if allowCW { ArrayPush(filtered, stack); }
        } else if itemTDB == soloTDB {
            if allowSolo { ArrayPush(filtered, stack); }
        } else if itemTDB == shinoTDB {
            if allowShino { ArrayPush(filtered, stack); }
        } else if itemTDB == engTDB {
            if allowEng { ArrayPush(filtered, stack); }
        } else if itemTDB == netTDB {
            if allowNet { ArrayPush(filtered, stack); }
        } else if itemTDB == headTDB {
            if allowHead { ArrayPush(filtered, stack); }
        } else if PAFSSettings.IsPAFSSkillShard(itemTDB) {
            // Drop inactive / obsolete tier shards
        } else if itemTDB == t"Items.Custom_Infinite_PerkShard" || itemTDB == t"Items.Custom_Infinite_AttributeShard" || itemTDB == t"Items.Custom_Infinite_HealthFood" {
            // Drop obsolete clone items
        } else {
            ArrayPush(filtered, stack);
        }
    }

    return filtered;
}

// -----------------------------------------------------------------
// Price Hook
// -----------------------------------------------------------------
@wrapMethod(MarketSystem)
public static func GetBuyPrice(vendorObject: wref<GameObject>, itemID: ItemID) -> Int32 {
    if IsDefined(vendorObject) {
        let tdbID: TweakDBID = ItemID.GetTDBID(itemID);
        let settings: ref<PAFSSettings> = PAFSSettings.Get(vendorObject.GetGame());
        if IsDefined(settings) {
            if tdbID == t"Items.PAFS_PerkShard" {
                return settings.GetPerkShardPrice();
            }
            if tdbID == t"Items.PAFS_AttributeShard" {
                return settings.GetAttributeShardPrice();
            }
            if tdbID == t"Items.PAFS_CyberwareCapacityShard" {
                return settings.GetCWCapacityShardPrice();
            }
            if tdbID == t"Items.PAFS_HealthFood" {
                return settings.GetHealthFoodPrice();
            }
            if PAFSSettings.IsPAFSSkillShard(tdbID) {
                return settings.GetSkillShardPriceByTDB(tdbID);
            }
        }
    }

    return wrappedMethod(vendorObject, itemID);
}

// -----------------------------------------------------------------
// Multi-Consumption Hook (On Item Pickup / Vendor Purchase)
// -----------------------------------------------------------------
@wrapMethod(PlayerPuppet)
protected cb func OnItemAddedToInventory(evt: ref<ItemAddedEvent>) -> Bool {
    let tdbID: TweakDBID = ItemID.GetTDBID(evt.itemID);

    // 1. Cyberware Capacity Shard Multi-Consumption
    // Handled BEFORE wrappedMethod to prevent vanilla's hardcoded +6 world-drop effector from firing on the first item!
    if tdbID == t"Items.PAFS_CyberwareCapacityShard" {
        let transSystem: ref<TransactionSystem> = GameInstance.GetTransactionSystem(this.GetGame());
        let count: Int32 = transSystem.GetItemQuantity(this, evt.itemID);
        if count > 0 {
            transSystem.RemoveItem(this, evt.itemID, count);

            let settings: ref<PAFSSettings> = PAFSSettings.Get(this.GetGame());
            let bonusPerShard: Float = 5.0;
            if IsDefined(settings) {
                bonusPerShard = Cast<Float>(settings.cwCapacityBonus);
            }

            let statsSystem: ref<StatsSystem> = GameInstance.GetStatsSystem(this.GetGame());
            let currentCap: Float = 0.0;
            if IsDefined(statsSystem) {
                currentCap = statsSystem.GetStatValue(Cast<StatsObjectID>(this.GetEntityID()), gamedataStatType.Humanity);
            }

            if bonusPerShard > 0.0 && currentCap < 450.0 {
                let totalBonus: Float = bonusPerShard * Cast<Float>(count);
                if (currentCap + totalBonus) > 450.0 {
                    totalBonus = 450.0 - currentCap;
                }

                let modifier: ref<gameConstantStatModifierData> = new gameConstantStatModifierData();
                modifier.modifierType = gameStatModifierType.Additive;
                modifier.statType = gamedataStatType.Humanity;
                modifier.value = totalBonus;
                statsSystem.AddSavedModifier(Cast<StatsObjectID>(this.GetEntityID()), modifier);

                let bonusInt: Int32 = Cast<Int32>(totalBonus);
                let shardName: String = GetLocalizedTextByKey(TweakDBInterface.GetItemRecord(tdbID).DisplayName());
                if StrLen(shardName) == 0 {
                    shardName = "Cyberware Capacity Shard";
                }
                let notification_Message: String = shardName + "\n+" + ToString(bonusInt) + " Cyberware Capacity";
                if (currentCap + totalBonus) >= 450.0 {
                    notification_Message = notification_Message + " (Max 450 Reached)";
                }
                this.SetWarningMessage(notification_Message, SimpleMessageType.Neutral);
            } else if currentCap >= 450.0 {
                let shardName: String = GetLocalizedTextByKey(TweakDBInterface.GetItemRecord(tdbID).DisplayName());
                if StrLen(shardName) == 0 {
                    shardName = "Cyberware Capacity Shard";
                }
                let notification_Message: String = shardName + "\nMaximum Cyberware Capacity (450) Reached";
                this.SetWarningMessage(notification_Message, SimpleMessageType.Neutral);
            }
        }
        return true;
    }

    // 2. Permanent Health Food Multi-Consumption
    if tdbID == t"Items.PAFS_HealthFood" {
        let transSystem: ref<TransactionSystem> = GameInstance.GetTransactionSystem(this.GetGame());
        let count: Int32 = transSystem.GetItemQuantity(this, evt.itemID);
        if count > 0 {
            transSystem.RemoveItem(this, evt.itemID, count);

            let totalBonus: Float = 5.0 * Cast<Float>(count);
            let modifier: ref<gameConstantStatModifierData> = new gameConstantStatModifierData();
            modifier.modifierType = gameStatModifierType.Additive;
            modifier.statType = gamedataStatType.Health;
            modifier.value = totalBonus;
            GameInstance.GetStatsSystem(this.GetGame()).AddSavedModifier(Cast<StatsObjectID>(this.GetEntityID()), modifier);

            let notification_Message: String = (GetLocalizedText("LocKey#93104") + "\n") + GetLocalizedText("LocKey#93725");
            this.SetWarningMessage(notification_Message, SimpleMessageType.Neutral);
        }
        return true;
    }

    // 3. Skill Progression Shards Multi-Consumption
    if PAFSSettings.IsPAFSSkillShard(tdbID) {
        let transSystem: ref<TransactionSystem> = GameInstance.GetTransactionSystem(this.GetGame());
        let count: Int32 = transSystem.GetItemQuantity(this, evt.itemID);
        if count > 0 {
            transSystem.RemoveItem(this, evt.itemID, count);

            let profType: gamedataProficiencyType = gamedataProficiencyType.StrengthSkill;
            let skillName: String = "Solo";
            let xpPerShard: Int32 = 1000;

            if !PAFSSettings.GetSkillShardData(tdbID, profType, skillName, xpPerShard) {
                let settings: ref<PAFSSettings> = PAFSSettings.Get(this.GetGame());
                if IsDefined(settings) {
                    xpPerShard = settings.GetSkillShardXP();
                }
            }

            let pds: ref<PlayerDevelopmentSystem> = GameInstance.GetScriptableSystemsContainer(this.GetGame()).Get(n"PlayerDevelopmentSystem") as PlayerDevelopmentSystem;
            let curLvl: Int32 = 0;
            if IsDefined(pds) {
                curLvl = pds.GetProficiencyLevel(this, profType);
            }

            let shardTitle: String = GetLocalizedTextByKey(TweakDBInterface.GetItemRecord(tdbID).DisplayName());
            if StrLen(shardTitle) == 0 {
                shardTitle = "Skill Progression Shard: " + skillName;
            }

            if curLvl >= 60 {
                let notification_Message: String = shardTitle + "\nMaximum Level (60) Reached";
                this.SetWarningMessage(notification_Message, SimpleMessageType.Neutral);
            } else {
                let totalXP: Int32 = xpPerShard * count;
                if IsDefined(pds) {
                    let request: ref<AddExperience> = new AddExperience();
                    request.Set(this, totalXP, profType, false);
                    pds.QueueRequest(request);
                }

                let notification_Message: String = shardTitle + "\n+" + ToString(totalXP) + " XP";
                this.SetWarningMessage(notification_Message, SimpleMessageType.Neutral);
            }
        }
        return true;
    }

    let result: Bool = wrappedMethod(evt);

    // 4. Perk & Attribute Multi-Consumption
    let itemRecord: ref<Item_Record> = TweakDBInterface.GetItemRecord(tdbID);
    if IsDefined(itemRecord) && Equals(itemRecord.ItemType().Type(), gamedataItemType.Con_Skillbook) {
        let transSystem: ref<TransactionSystem> = GameInstance.GetTransactionSystem(this.GetGame());
        let remaining: Int32 = transSystem.GetItemQuantity(this, evt.itemID);
        
        while remaining > 0 {
            ItemActionsHelper.LearnItem(this, evt.itemID, true);
            let newRemaining: Int32 = transSystem.GetItemQuantity(this, evt.itemID);
            if newRemaining >= remaining {
                break; // Safeguard against infinite loops
            }
            remaining = newRemaining;
        }
    }

    return result;
}

// -----------------------------------------------------------------
// Manual Consumption Hook (Backpack Item Action)
// -----------------------------------------------------------------
@wrapMethod(ConsumeAction)
public func CompleteAction(gameInstance: GameInstance) -> Void {
    wrappedMethod(gameInstance);

    let tdbID: TweakDBID = ItemID.GetTDBID(this.GetItemData().GetID());
    if tdbID == t"Items.PAFS_HealthFood" {
        let player: ref<PlayerPuppet> = GetPlayer(gameInstance);
        if IsDefined(player) {
            let modifier: ref<gameConstantStatModifierData> = new gameConstantStatModifierData();
            modifier.modifierType = gameStatModifierType.Additive;
            modifier.statType = gamedataStatType.Health;
            modifier.value = 5.0;
            GameInstance.GetStatsSystem(gameInstance).AddSavedModifier(Cast<StatsObjectID>(player.GetEntityID()), modifier);

            let notification_Message: String = (GetLocalizedText("LocKey#93104") + "\n") + GetLocalizedText("LocKey#93725");
            player.SetWarningMessage(notification_Message, SimpleMessageType.Neutral);
        }
    }
}
