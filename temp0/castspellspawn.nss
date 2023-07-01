void main()
{
    object oStatue = OBJECT_SELF;
    if(GetLastSpell() == SPELL_STONE_TO_FLESH   )
    {
     DestroyObject(oStatue, 0.5);
     SpeakString("As you finish casting the spell, the statue in front of you shatters to pieces and the room trembles with a roar of an angry dragon");
    int nObjectType = OBJECT_TYPE_CREATURE;
    string snw_drgred003 = "nw_drgred003";
    location lTarget = GetLocation(GetWaypointByTag("DRAGONSPAWN"));
    int bUseAppearAnimation = TRUE;
    CreateObject(nObjectType, snw_drgred003 , lTarget, bUseAppearAnimation);
    }
}

