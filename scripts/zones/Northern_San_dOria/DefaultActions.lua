local ID = require("scripts/zones/Northern_San_dOria/IDs")

return {
    ['Abeaule']    = { text = ID.text.ABEAULE_DIALOG_THANKS },
    ['Abioleget']  = { text = ID.text.ABIOLEGET_DIALOG },
    ['Ailbeche']   = { event = 868 },
    ['Bacherume']  = { text = ID.text.BACHERUME_DIALOG },
    ['Chasalvige'] = { event = 6 },
    ['Dauperiat']  = { event = 641 },
    ['Eperdur']    = { event = 678 },
    ['Gilipese']   =
    {
        onTrigger = function(player, npc)
            if xi.events.starlightCelebration.isStarlightEnabled() ~= 0 then
                local npcID = npc:getID()
                local sender = player:getCharVar("[MerryMakers]Sender")
                local confirmed = player:getCharVar("[MerryMakers]Confirmed")

                if npcID == sender or npcID == confirmed then
                    xi.events.starlightCelebration.merryMakersNPCDeliverOnTrigger(player, npc, ID)
                    return
                end
            end

            player:showText(npc, ID.text.GILIPESE_DIALOG)
        end,
    },
    ['Guilerme']   = { text = ID.text.GUILERME_DIALOG },
    ['Helaku']     = { event = 541 },
    ['Kasaroro']   = { event = 548 },
    ['Maurinne']   = { text = ID.text.MAURINNE_DIALOG },
    ['Miageau']    = { event = 517 },
    ['Nouveil']    = { event = 574 },
    ['Olbergieut'] = { event = 612 },
    ['Pepigort']   = { text = ID.text.PEPIGORT_DIALOG },
    ['Rodaillece'] =
    {
        onTrigger = function(player, npc)
            if xi.events.starlightCelebration.isStarlightEnabled() ~= 0 then
                local npcID = npc:getID()
                local sender = player:getCharVar("[MerryMakers]Sender")
                local confirmed = player:getCharVar("[MerryMakers]Confirmed")

                if npcID == sender or npcID == confirmed then
                    xi.events.starlightCelebration.merryMakersNPCDeliverOnTrigger(player, npc, ID)
                    return
                end
            end

            player:showText(npc, ID.text.RODAILLECE_DIALOG)
        end,
    },
    ['Vamorcote']    = { event = 651 },
}
