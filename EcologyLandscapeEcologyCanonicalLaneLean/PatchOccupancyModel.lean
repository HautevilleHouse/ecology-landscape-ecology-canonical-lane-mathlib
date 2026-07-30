import canonicalLaneMathlib.AdmissibleClass
import EcologyLandscapeEcologyCanonicalLaneLean.MetapopulationTheory

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure PatchOccupancyModel {N : HabitatNetwork} (M : MetapopulationPackage N) where
  patchCarryingCapacity : Prop
  colonizationProbability : Prop
  extinctionProbability : Prop
  occupancyTimeSeries : Prop

structure PatchOccupancyEvidence {N : HabitatNetwork} {M : MetapopulationPackage N} (P : PatchOccupancyModel M) where
  patchCarryingCapacityClosed : P.patchCarryingCapacity
  colonizationProbabilityClosed : P.colonizationProbability
  extinctionProbabilityClosed : P.extinctionProbability
  occupancyTimeSeriesClosed : P.occupancyTimeSeries

def PatchOccupancyClosed {N : HabitatNetwork} {M : MetapopulationPackage N} (P : PatchOccupancyModel M) : Prop :=
  P.patchCarryingCapacity ∧ P.colonizationProbability ∧ P.extinctionProbability ∧ P.occupancyTimeSeries

theorem patch_occupancy_closed_from_evidence {N : HabitatNetwork} {M : MetapopulationPackage N} (P : PatchOccupancyModel M) (E : PatchOccupancyEvidence P) :
    PatchOccupancyClosed P := by
  exact And.intro E.patchCarryingCapacityClosed
    (And.intro E.colonizationProbabilityClosed
      (And.intro E.extinctionProbabilityClosed E.occupancyTimeSeriesClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse