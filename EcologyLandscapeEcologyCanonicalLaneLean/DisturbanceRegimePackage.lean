import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure DisturbanceRegimePackage (L : LandscapeHabitatStructurePackage) where
  fireReturnInterval : Prop
  windthrowPatchSize : Prop
  disturbanceGradient : Prop
  resilienceRecoveryRate : Prop

structure DisturbanceRegimeEvidence {L : LandscapeHabitatStructurePackage}
    (D : DisturbanceRegimePackage L) where
  fireReturnIntervalClosed : D.fireReturnInterval
  windthrowPatchSizeClosed : D.windthrowPatchSize
  disturbanceGradientClosed : D.disturbanceGradient
  resilienceRecoveryRateClosed : D.resilienceRecoveryRate

def DisturbanceRegimeClosed {L : LandscapeHabitatStructurePackage}
    (D : DisturbanceRegimePackage L) : Prop :=
  D.fireReturnInterval ∧ D.windthrowPatchSize ∧ D.disturbanceGradient ∧ D.resilienceRecoveryRate

theorem disturbance_regime_closed_from_evidence
    {L : LandscapeHabitatStructurePackage} (D : DisturbanceRegimePackage L)
    (E : DisturbanceRegimeEvidence D) : DisturbanceRegimeClosed D := by
  exact And.intro E.fireReturnIntervalClosed
    (And.intro E.windthrowPatchSizeClosed
      (And.intro E.disturbanceGradientClosed E.resilienceRecoveryRateClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse