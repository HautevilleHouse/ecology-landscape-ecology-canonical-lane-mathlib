import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure MetapopulationModel where
  patches : List LandscapePatchType
  extinctionRate : Float
  colonizationRate : Float
  occupancy : List Bool

structure MetapopulationClosed (M : MetapopulationModel) : Prop where
  patchesClosed : ∀ p ∈ M.patches, landscapePatchClosed p
  ratesPositive : M.extinctionRate > 0.0 ∧ M.colonizationRate > 0.0
  occupancyLength : M.occupancy.length = M.patches.length

def metapopulationBridgeClosed (M : MetapopulationModel) : Prop :=
  (∀ p ∈ M.patches, landscapePatchClosed p) ∧
  (M.extinctionRate > 0.0 ∧ M.colonizationRate > 0.0) ∧
  (M.occupancy.length = M.patches.length)

theorem metapopulationBridge_from_model (M : MetapopulationModel) (h : MetapopulationClosed M) : metapopulationBridgeClosed M := by
  exact And.intro h.patchesClosed (And.intro h.ratesPositive h.occupancyLength)

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse