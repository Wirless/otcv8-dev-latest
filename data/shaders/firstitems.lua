local firstItems = {
    {itemid = 2457, slot = CONST_SLOT_HEAD},    -- steel helmet
    {itemid = 2463, slot = CONST_SLOT_ARMOR},   -- plate armor
    {itemid = 2647, slot = CONST_SLOT_LEGS},    -- plate legs
    {itemid = 2195, slot = CONST_SLOT_FEET},    -- boots of haste
    {itemid = 2525, slot = CONST_SLOT_LEFT},    -- dwarven shield
    {itemid = 1998, slot = CONST_SLOT_BACKPACK} -- backpack
}

local vocationItems = {
    -- Knight items (ID: 4)
    [4] = {
        {itemid = 2421, slot = CONST_SLOT_RIGHT}, -- thunder hammer
        {itemid = 2408},                           -- warlord sword (inventory)
        {itemid = 2415}                            -- great axe (inventory)
    },
    -- Paladin items (ID: 3) 
    [3] = {
        {itemid = 2455, slot = CONST_SLOT_RIGHT}, -- crossbow
        {itemid = 2389}                           -- spear (inventory)
    },
    -- Sorcerer items (ID: 1)
    [1] = {
        {itemid = 2190, slot = CONST_SLOT_RIGHT}, -- wand
        {itemid = 2323}                           -- hat/other (inventory)
    },
    -- Druid items (ID: 2)
    [2] = {
        {itemid = 2182, slot = CONST_SLOT_RIGHT}, -- rod
        {itemid = 2323}                           -- hat/other (inventory)
    }
}

function onLogin(player)
    if player:getLastLoginSaved() == 0 then
        -- Give base items to all players
        for i = 1, #firstItems do
            local item = firstItems[i]
            if item.slot then
                player:addItem(item.itemid, 1, true, 1, item.slot)
            else
                player:addItem(item.itemid, 1)
            end
        end
        
        -- Give vocation-specific items
        local vocation = player:getVocation():getId()
        if vocationItems[vocation] then
            for i = 1, #vocationItems[vocation] do
                local item = vocationItems[vocation][i]
                if item.slot then
                    player:addItem(item.itemid, 1, true, 1, item.slot)
                else
                    player:addItem(item.itemid, 1)
                end
            end
        end
        
        -- Give gender-specific outfit
        player:addItem(player:getSex() == 0 and 2651 or 2650, 1)
        
        -- Give bag with axe
        local bag = player:addItem(ITEM_BAG, 1)
        if bag then
            bag:addItem(2674, 1)
        end
    end
    return true
end 