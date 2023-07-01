// Sample code for applying petrify (petrifiesis?) to a target

void main()
{
    // This is the Object to apply the effect to.
    object oTarget = OBJECT_SELF;

    // Create the effect to apply
    effect ePetrify = EffectPetrify();

    // Create the visual portion of the effect. This is instantly
    // applied and not persistent with whether or not we have the
    // above effect.
    effect eVis = EffectVisualEffect(VFX_IMP_HEAD_ODD);

    // Apply the visual effect to the target
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oTarget);
    // Apply the effect to the object
    ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePetrify, oTarget);
}

