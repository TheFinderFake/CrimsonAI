local groups = {
    'COP',
    'SWAT',
    'ARMY',
    'FBI',
    'NOOSE',
    'MEDIC',
    'FIREMAN',
    'PRIVATE_SECURITY',
    'SECURITY_GUARD',
    'CIVMALE',
    'CIVFEMALE',
    'HATES_PLAYER',
    'GANG_1',
    'GANG_2',
    'GANG_3',
    'GANG_4',
    'GANG_5',
    'GANG_6',
    'GANG_7',
    'GANG_8',
    'GANG_9',
    'GANG_10',
    'AMBIENT_GANG_LOST',
    'AMBIENT_GANG_VAGOS',
    'AMBIENT_GANG_BALLAS',
    'AMBIENT_GANG_FAMILY',
    'AMBIENT_GANG_MARABUNTE',
    'AMBIENT_GANG_CULT',
    'AMBIENT_GANG_SALVA',
    'DEALER',
    'ANIMAL',
    'WILD_ANIMAL',
    'COUGAR',
}

CreateThread(function()
    Wait(500)
    print("Setting ped relationship groups")

    local relationshipType = 1
    local playerGroup = GetHashKey("PLAYER")

    for _, group in ipairs(groups) do
        local groupHash = GetHashKey(group)
        SetRelationshipBetweenGroups(relationshipType, groupHash, playerGroup)
        SetRelationshipBetweenGroups(relationshipType, playerGroup, groupHash)
    end
end)