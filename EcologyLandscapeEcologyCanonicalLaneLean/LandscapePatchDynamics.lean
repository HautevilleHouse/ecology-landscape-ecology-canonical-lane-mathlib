import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure PatchDynamicsPackage where
  patchArea : ℝ
  carryingCapacity : ℝ
  growthRate : ℝ
  competitionCoefficient : ℝ

structure PatchDynamicsEvidence (P : PatchDynamicsPackage) where
  patchAreaClosed : P.patchArea > 0
  carryingCapacityClosed : P.carryingCapacity > 0
  growthRateClosed : P.growthRate > 0
  competitionCoefficientClosed : P.competitionCoefficient ≥ 0

def PatchDynamicsClosed (P : PatchDynamicsPackage) : Prop :=
  P.patchArea > 0 ∧ P.carryingCapacity > 0 ∧ P.growthRate > 0 ∧ P.competitionCoefficient ≥ 0

theorem patch_dynamics_closed_from_evidence (P : PatchDynamicsPackage)
    (E : PatchDynamicsEvidence P) : PatchDynamicsClosed P := by
  exact And.intro E.patchAreaClosed
    (And.intro E.carryingCapacityClosed
      (And.intro E.growthRateClosed E.competitionCoefficientClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse