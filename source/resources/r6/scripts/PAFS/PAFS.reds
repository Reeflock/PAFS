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

    public func IsVendorRecordEnabled(vendorID: TweakDBID, type: gamedataVendorType) -> Bool {
        // Dogtown Stadium Skill Shard Vendor (Michał Kiciński) is classified as Junkshop_HUB in TweakDB,
        // but acts as the primary skill shard / skillbook vendor in Phantom Liberty.
        // Enable him if either Netrunners & Trainers OR Junk Shops are enabled!
        if vendorID == t"Vendors.cz_stadium_junk_01_michal_k" {
            return this.enableNetrunners || this.enableJunk;
        }
        return this.IsVendorTypeEnabled(type);
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
    let legacyPerkTDB: TweakDBID = t"Items.Custom_Infinite_PerkShard";
    let legacyAttrTDB: TweakDBID = t"Items.Custom_Infinite_AttributeShard";
    let legacyFoodTDB: TweakDBID = t"Items.Custom_Infinite_HealthFood";

    let allowPerk: Bool = vendorEnabled && settings.enablePerkShards;
    let allowAttr: Bool = vendorEnabled && settings.enableAttributeShards;
    let allowFood: Bool = vendorEnabled && settings.enableHealthFood;

    let transSystem: ref<TransactionSystem> = GameInstance.GetTransactionSystem(this.m_gameInstance);

    let perkIndex: Int32 = -1;
    let attrIndex: Int32 = -1;
    let foodIndex: Int32 = -1;
    let currentTDB: TweakDBID;
    let i: Int32 = 0;

    // Scan existing m_stock: deduplicate, keep valid enabled items, remove disabled ones
    while i < ArraySize(this.m_stock) {
        currentTDB = ItemID.GetTDBID(this.m_stock[i].itemID);
        if currentTDB == perkTDB || currentTDB == legacyPerkTDB {
            if allowPerk {
                if perkIndex < 0 {
                    perkIndex = i;
                    i += 1;
                } else {
                    ArrayErase(this.m_stock, i);
                }
            } else {
                ArrayErase(this.m_stock, i);
            }
        } else if currentTDB == attrTDB || currentTDB == legacyAttrTDB {
            if allowAttr {
                if attrIndex < 0 {
                    attrIndex = i;
                    i += 1;
                } else {
                    ArrayErase(this.m_stock, i);
                }
            } else {
                ArrayErase(this.m_stock, i);
            }
        } else if currentTDB == foodTDB || currentTDB == legacyFoodTDB {
            if allowFood {
                if foodIndex < 0 {
                    foodIndex = i;
                    i += 1;
                } else {
                    ArrayErase(this.m_stock, i);
                }
            } else {
                ArrayErase(this.m_stock, i);
            }
        } else {
            i += 1;
        }
    }

    // 1. Perk Point Shard
    if allowPerk {
        if perkIndex >= 0 {
            if this.m_stock[perkIndex].quantity < 5 {
                this.m_stock[perkIndex].quantity = 60;
                this.m_stock[perkIndex].isAvailable = true;
            }
        } else {
            let perkStack: SItemStack;
            perkStack.itemID = ItemID.FromTDBID(perkTDB);
            perkStack.quantity = 60;
            perkStack.isAvailable = true;
            ArrayPush(this.m_stock, perkStack);
            if !ArrayContains(this.m_newItems, perkTDB) {
                ArrayPush(this.m_newItems, perkTDB);
            }
        }
        if IsDefined(transSystem) {
            let perkItemID: ItemID = ItemID.FromTDBID(perkTDB);
            let pQty: Int32 = transSystem.GetItemQuantity(this.m_vendorObject, perkItemID);
            if pQty < 5 {
                let pRecord: ref<Item_Record> = TweakDBInterface.GetItemRecord(perkTDB);
                if IsDefined(pRecord) {
                    transSystem.GiveItem(this.m_vendorObject, perkItemID, 60 - pQty, pRecord.Tags());
                } else {
                    transSystem.GiveItem(this.m_vendorObject, perkItemID, 60 - pQty);
                }
            }
        }
    } else if IsDefined(transSystem) {
        let perkItemID: ItemID = ItemID.FromTDBID(perkTDB);
        let pQty: Int32 = transSystem.GetItemQuantity(this.m_vendorObject, perkItemID);
        if pQty > 0 {
            transSystem.RemoveItem(this.m_vendorObject, perkItemID, pQty);
        }
    }

    // 2. Attribute Point Shard
    if allowAttr {
        if attrIndex >= 0 {
            if this.m_stock[attrIndex].quantity < 5 {
                this.m_stock[attrIndex].quantity = 60;
                this.m_stock[attrIndex].isAvailable = true;
            }
        } else {
            let attrStack: SItemStack;
            attrStack.itemID = ItemID.FromTDBID(attrTDB);
            attrStack.quantity = 60;
            attrStack.isAvailable = true;
            ArrayPush(this.m_stock, attrStack);
            if !ArrayContains(this.m_newItems, attrTDB) {
                ArrayPush(this.m_newItems, attrTDB);
            }
        }
        if IsDefined(transSystem) {
            let attrItemID: ItemID = ItemID.FromTDBID(attrTDB);
            let aQty: Int32 = transSystem.GetItemQuantity(this.m_vendorObject, attrItemID);
            if aQty < 5 {
                let aRecord: ref<Item_Record> = TweakDBInterface.GetItemRecord(attrTDB);
                if IsDefined(aRecord) {
                    transSystem.GiveItem(this.m_vendorObject, attrItemID, 60 - aQty, aRecord.Tags());
                } else {
                    transSystem.GiveItem(this.m_vendorObject, attrItemID, 60 - aQty);
                }
            }
        }
    } else if IsDefined(transSystem) {
        let attrItemID: ItemID = ItemID.FromTDBID(attrTDB);
        let aQty: Int32 = transSystem.GetItemQuantity(this.m_vendorObject, attrItemID);
        if aQty > 0 {
            transSystem.RemoveItem(this.m_vendorObject, attrItemID, aQty);
        }
    }

    // 3. Permanent Health Food
    if allowFood {
        if foodIndex >= 0 {
            if this.m_stock[foodIndex].quantity < 5 {
                this.m_stock[foodIndex].quantity = 60;
                this.m_stock[foodIndex].isAvailable = true;
            }
        } else {
            let foodStack: SItemStack;
            foodStack.itemID = ItemID.FromTDBID(foodTDB);
            foodStack.quantity = 60;
            foodStack.isAvailable = true;
            ArrayPush(this.m_stock, foodStack);
            if !ArrayContains(this.m_newItems, foodTDB) {
                ArrayPush(this.m_newItems, foodTDB);
            }
        }
        if IsDefined(transSystem) {
            let foodItemID: ItemID = ItemID.FromTDBID(foodTDB);
            let fQty: Int32 = transSystem.GetItemQuantity(this.m_vendorObject, foodItemID);
            if fQty < 5 {
                let fRecord: ref<Item_Record> = TweakDBInterface.GetItemRecord(foodTDB);
                if IsDefined(fRecord) {
                    transSystem.GiveItem(this.m_vendorObject, foodItemID, 60 - fQty, fRecord.Tags());
                } else {
                    transSystem.GiveItem(this.m_vendorObject, foodItemID, 60 - fQty);
                }
            }
        }
    } else if IsDefined(transSystem) {
        let foodItemID: ItemID = ItemID.FromTDBID(foodTDB);
        let fQty: Int32 = transSystem.GetItemQuantity(this.m_vendorObject, foodItemID);
        if fQty > 0 {
            transSystem.RemoveItem(this.m_vendorObject, foodItemID, fQty);
        }
    }
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
    let vendorEnabled: Bool = settings.IsVendorRecordEnabled(vendorID, this.GetVendorType());
    let allowPerk: Bool = vendorEnabled && settings.enablePerkShards;
    let allowAttr: Bool = vendorEnabled && settings.enableAttributeShards;
    let allowFood: Bool = vendorEnabled && settings.enableHealthFood;

    if allowPerk && allowAttr && allowFood {
        return items;
    }

    let filtered: array<SItemStack>;
    let perkTDB: TweakDBID = t"Items.PAFS_PerkShard";
    let attrTDB: TweakDBID = t"Items.PAFS_AttributeShard";
    let foodTDB: TweakDBID = t"Items.PAFS_HealthFood";
    let legacyPerkTDB: TweakDBID = t"Items.Custom_Infinite_PerkShard";
    let legacyAttrTDB: TweakDBID = t"Items.Custom_Infinite_AttributeShard";
    let legacyFoodTDB: TweakDBID = t"Items.Custom_Infinite_HealthFood";
    let itemTDB: TweakDBID;

    for stack in items {
        itemTDB = ItemID.GetTDBID(stack.itemID);
        if itemTDB == perkTDB || itemTDB == legacyPerkTDB {
            if allowPerk {
                ArrayPush(filtered, stack);
            }
        } else if itemTDB == attrTDB || itemTDB == legacyAttrTDB {
            if allowAttr {
                ArrayPush(filtered, stack);
            }
        } else if itemTDB == foodTDB || itemTDB == legacyFoodTDB {
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
