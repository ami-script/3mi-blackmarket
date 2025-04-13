-- Resource rights reserved for 3mi
Config = {}
Config.Locale = Config.Locale or {}

-- General Settings
Config.Debug = false -- Set to true to show additional print messages for debugging help
Config.TargetDistance = 2.0
Config.TargetIcon = "fas fa-store" -- Slightly different icon
Config.TargetLabel = "Browse Goods"

-- Define Bots
Config.Bots = {
    {
        label = "Back Alley Dealer",
        coords = vector4(2193.95, 5594.18, 53.76, 341.55), -- Change these coordinates
        model = `csb_ramp_gang`,
        scenario = "WORLD_HUMAN_SMOKING",
        items = {
            -- Make sure 100% that 'name' here matches the item name in qb-core/shared/items.lua
            { name = "lockpick", label = "Lockpick", price = 1000, image = "lockpick.png", description = "Very useful if you lose your keys a lot.. or if you want to use it for something else...", info = {}, slot = nil },
            { name = "advancedlockpick", label = "Advanced Lockpick", price = 1000, image = "advancedlockpick.png", description = "If you lose your keys a lot this is very useful... Also useful to open your beers", info = {}, slot = nil },
            { name = "trojan_usb", label = "Trojan USB", price = 1000, image = "usb_device.png", description = "Handy software to shut down some systems", info = {}, slot = nil },
            { name = "electronickit", label = "Electronic Kit", price = 1000, image = "electronickit.png", description = "If you\'ve always wanted to build a robot you can maybe start here. Maybe you\'ll be the new Elon Musk?", info = {}, slot = nil },
            { name = "drill", label = "Drill", price = 1000, image = "drill.png", description = "The real deal...", info = {}, slot = nil },
            { name = "thermite", label = "Thermite", price = 1000, image = "thermite.png", description = "Sometimes you\'d wish for everything to burn", info = {}, slot = nil },
            { name = "security_card_01", label = "Security Card A", price = 1000, image = "security_card_01.png", description = "A security card... I wonder what it goes to", info = {}, slot = nil },
            { name = "security_card_02", label = "Security Card B", price = 1000, image = "security_card_02.png", description = "A security card... I wonder what it goes to", info = {}, slot = nil },
            -- Add more here
        }
    },
}

-- Notification Messages
Config.Locale = {
    ['not_enough_money'] = "You don't have enough cash!",
    ['purchase_successful'] = "Purchase successful!",
    ['inventory_full'] = "Failed to add item (Inventory full?).",
    ['item_not_found'] = "Error: Item not found in server config!",
    ['cart_empty'] = "Shopping cart is empty!",
    ['purchase_error'] = "An error occurred during purchase. Try again.",
    ['validation_failed'] = "Validation failed for some items.",
    ['payment_failed'] = "An error occurred during payment.",
    ['invalid_item_data'] = "Invalid item data in cart."
}

-- Translation function
function _L(key)
    return Config.Locale[key] or key
end

-- Debug print function (only works if Config.Debug = true)
function DebugPrint(...)
    if Config.Debug then
        local args = {...}
        local formattedArgs = {}
        for _, v in ipairs(args) do
            if type(v) == "table" or type(v) == "vector3" or type(v) == "vector4" then
                -- No robust default json library, use tostring
                 table.insert(formattedArgs, vim.inspect(v) or tostring(v)) -- vim.inspect provides better details if available
            else
                table.insert(formattedArgs, tostring(v))
            end
        end
        print(string.format("[3mi-BM Debug] %s", table.concat(formattedArgs, " ")))
    end
end