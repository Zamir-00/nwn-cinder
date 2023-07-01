void main()
{
    // The placeable whose heartbeat event is ticking.
    object oPalantir = OBJECT_SELF;

    // Find the nearest living player to oPalantir.
    object oTarget = GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_IS_PC, oPalantir, 1, CREATURE_TYPE_IS_ALIVE, TRUE);

    // Abort the script at this point if the nearest living PC is nonexistent or too far away.
    if (oTarget == OBJECT_INVALID || GetDistanceBetween(oPalantir, oTarget) > 15.0)
        return;

    // Assigning a command to cast a spell:
    AssignCommand(oPalantir, ActionCastSpellAtObject(SPELL_BESTOW_CURSE, oTarget, METAMAGIC_ANY, TRUE, 0, PROJECTILE_PATH_TYPE_DEFAULT, TRUE));

    // Applying an effect at a location, instantly:
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_MAGICAL_VISION), GetLocation(oPalantir));

    // Applying an effect to an object, temporarily:
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectVisualEffect(VFX_DUR_PROT_PREMONITION), oPalantir, 5.0);
}
