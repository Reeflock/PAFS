public enum PAFSPricePreset {
    Casual = 0,
    Balanced = 1,
    Expensive = 2,
    Custom = 3
}

public class PAFSSettings extends ScriptableSystem {
    // -------------------------------------------------------------
    // Category 1: Quick Presets
    // -------------------------------------------------------------
    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Quick Presets")
    @runtimeProperty("ModSettings.category.order", "1")
    @runtimeProperty("ModSettings.displayName", "Price Preset")
    @runtimeProperty("ModSettings.description", "Quick pricing preset. Select 'Custom' to use the individual sliders under Advanced.")
    @runtimeProperty("ModSettings.displayValues.Casual", "Casual (3,500 / 5,000 E$)")
    @runtimeProperty("ModSettings.displayValues.Balanced", "Balanced (20,000 / 30,000 E$)")
    @runtimeProperty("ModSettings.displayValues.Expensive", "Expensive (50,000 / 65,000 E$)")
    @runtimeProperty("ModSettings.displayValues.Custom", "Custom (Use Advanced Sliders)")
    public let pricePreset: PAFSPricePreset = PAFSPricePreset.Balanced;

    // -------------------------------------------------------------
    // Category 2: Advanced Prices
    // -------------------------------------------------------------
    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Advanced Prices")
    @runtimeProperty("ModSettings.category.order", "2")
    @runtimeProperty("ModSettings.displayName", "Perk Shard Price")
    @runtimeProperty("ModSettings.description", "Price in E$ to buy Perk Shards (Active when preset is Custom)")
    @runtimeProperty("ModSettings.step", "500")
    @runtimeProperty("ModSettings.min", "0")
    @runtimeProperty("ModSettings.max", "100000")
    public let perkShardPrice: Int32 = 20000;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Advanced Prices")
    @runtimeProperty("ModSettings.category.order", "2")
    @runtimeProperty("ModSettings.displayName", "Attribute Shard Price")
    @runtimeProperty("ModSettings.description", "Price in E$ to buy Attribute Shards (Active when preset is Custom)")
    @runtimeProperty("ModSettings.step", "500")
    @runtimeProperty("ModSettings.min", "0")
    @runtimeProperty("ModSettings.max", "100000")
    public let attributeShardPrice: Int32 = 30000;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Advanced Prices")
    @runtimeProperty("ModSettings.category.order", "2")
    @runtimeProperty("ModSettings.displayName", "Health Food Price")
    @runtimeProperty("ModSettings.description", "Price in E$ to buy Permanent Health Food (Active when preset is Custom)")
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
    @runtimeProperty("ModSettings.description", "Allow Perk Point Shards to appear in enabled vendor shops.")
    public let enablePerkShards: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Item Availability")
    @runtimeProperty("ModSettings.category.order", "3")
    @runtimeProperty("ModSettings.displayName", "Attribute Point Shards")
    @runtimeProperty("ModSettings.description", "Allow Attribute Point Shards to appear in enabled vendor shops.")
    public let enableAttributeShards: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Item Availability")
    @runtimeProperty("ModSettings.category.order", "3")
    @runtimeProperty("ModSettings.displayName", "Permanent Health Food")
    @runtimeProperty("ModSettings.description", "Allow Permanent Health Food to appear in enabled vendor shops.")
    public let enableHealthFood: Bool = false;

    // -------------------------------------------------------------
    // Category 4: Vendor Availability
    // -------------------------------------------------------------
    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "4")
    @runtimeProperty("ModSettings.displayName", "Weapon Vendors")
    @runtimeProperty("ModSettings.description", "Stock items at gunsmiths and weapon shops (e.g. Wilson, 2nd Amendment).")
    public let enableWeapons: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "4")
    @runtimeProperty("ModSettings.displayName", "Ripperdocs")
    @runtimeProperty("ModSettings.description", "Stock items at Ripperdoc clinics (e.g. Viktor, Fingers, Cassius).")
    public let enableRipperdocs: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "4")
    @runtimeProperty("ModSettings.displayName", "Netrunners & Trainers")
    @runtimeProperty("ModSettings.description", "Stock items at netrunner shops and skill trainers (e.g. Yoko, Coach Fred).")
    public let enableNetrunners: Bool = true;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "4")
    @runtimeProperty("ModSettings.displayName", "Junk Shops & Kiosks")
    @runtimeProperty("ModSettings.description", "Stock items at junk shops, pawnbrokers, street markets, and kiosks.")
    public let enableJunk: Bool = false;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "4")
    @runtimeProperty("ModSettings.displayName", "Pharmacies / Medpoints")
    @runtimeProperty("ModSettings.description", "Stock items at medical clinics and drugstores.")
    public let enableMedical: Bool = false;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "4")
    @runtimeProperty("ModSettings.displayName", "Food & Bars")
    @runtimeProperty("ModSettings.description", "Stock items at diners, food stalls, and bars.")
    public let enableFood: Bool = false;

    @runtimeProperty("ModSettings.mod", "PAFS - Perks & Attributes for Sale")
    @runtimeProperty("ModSettings.category", "Vendor Availability")
    @runtimeProperty("ModSettings.category.order", "4")
    @runtimeProperty("ModSettings.displayName", "Clothing Stores")
    @runtimeProperty("ModSettings.description", "Stock items at clothing and apparel shops.")
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

    public func IsVendorTypeEnabled(type: gamedataVendorType) -> Bool {
        if Equals(type, gamedataVendorType.Gunsmith) {
            return this.enableWeapons;
        }
        if Equals(type, gamedataVendorType.RipperDoc) {
            return this.enableRipperdocs;
        }
        if Equals(type, gamedataVendorType.SkillTrainer) || Equals(type, gamedataVendorType.Tech) || Equals(type, gamedataVendorType.Cyberware) {
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
        if Equals(type, gamedataVendorType.Clothing) || Equals(type, gamedataVendorType.Clothes) || Equals(type, gamedataVendorType.Armorsmith) {
            return this.enableClothing;
        }
        if Equals(type, gamedataVendorType.DropPoint) || Equals(type, gamedataVendorType.VendingMachine) {
            return false;
        }
        return true;
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
// Vendor Display Filter Hook
// -----------------------------------------------------------------
@wrapMethod(Vendor)
public func GetItemsForSale(checkPlayerCanBuy: Bool) -> array<SItemStack> {
    let items: array<SItemStack> = wrappedMethod(checkPlayerCanBuy);

    let settings: ref<PAFSSettings> = PAFSSettings.Get(this.m_gameInstance);
    if !IsDefined(settings) {
        return items;
    }

    let vendorEnabled: Bool = settings.IsVendorTypeEnabled(this.GetVendorType());
    let allowPerk: Bool = vendorEnabled && settings.enablePerkShards;
    let allowAttr: Bool = vendorEnabled && settings.enableAttributeShards;
    let allowFood: Bool = vendorEnabled && settings.enableHealthFood;

    if allowPerk && allowAttr && allowFood {
        return items;
    }

    let filtered: array<SItemStack>;
    let perkID: ItemID = ItemID.FromTDBID(t"Items.PAFS_PerkShard");
    let attrID: ItemID = ItemID.FromTDBID(t"Items.PAFS_AttributeShard");
    let foodID: ItemID = ItemID.FromTDBID(t"Items.PAFS_HealthFood");
    let legacyPerkID: ItemID = ItemID.FromTDBID(t"Items.Custom_Infinite_PerkShard");
    let legacyAttrID: ItemID = ItemID.FromTDBID(t"Items.Custom_Infinite_AttributeShard");
    let legacyFoodID: ItemID = ItemID.FromTDBID(t"Items.Custom_Infinite_HealthFood");
    let currentID: ItemID;

    for stack in items {
        currentID = stack.itemID;
        if currentID == perkID || currentID == legacyPerkID {
            if allowPerk {
                ArrayPush(filtered, stack);
            }
        } else if currentID == attrID || currentID == legacyAttrID {
            if allowAttr {
                ArrayPush(filtered, stack);
            }
        } else if currentID == foodID || currentID == legacyFoodID {
            if allowFood {
                ArrayPush(filtered, stack);
            }
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
            if tdbID == t"Items.PAFS_PerkShard" || tdbID == t"Items.Custom_Infinite_PerkShard" {
                return settings.GetPerkShardPrice();
            }
            if tdbID == t"Items.PAFS_AttributeShard" || tdbID == t"Items.Custom_Infinite_AttributeShard" {
                return settings.GetAttributeShardPrice();
            }
            if tdbID == t"Items.PAFS_HealthFood" || tdbID == t"Items.Custom_Infinite_HealthFood" {
                return settings.GetHealthFoodPrice();
            }
        }
    }

    return wrappedMethod(vendorObject, itemID);
}

// -----------------------------------------------------------------
// Multi-Consumption Hook
// -----------------------------------------------------------------
@wrapMethod(PlayerPuppet)
protected cb func OnItemAddedToInventory(evt: ref<ItemAddedEvent>) -> Bool {
    let result: Bool = wrappedMethod(evt);

    let itemRecord: ref<Item_Record> = TweakDBInterface.GetItemRecord(ItemID.GetTDBID(evt.itemID));
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
