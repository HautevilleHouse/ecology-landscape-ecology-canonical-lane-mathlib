import canonicalLaneMathlib.AdmissibleClass
import EcologyLandscapeEcologyCanonicalLaneLean.LandscapeStructure

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure MetapopulationPackage (N : HabitatNetwork) where
  colonizationDynamics : Prop
  extinctionDynamics : Prop
  equilibriumOccupancy : Prop
  persistenceThreshold : Prop

structure MetapopulationEvidence {N : HabitatNetwork} (M : MetapopulationPackage N) where
  colonizationDynamicsClosed : M.colonizationDynamics
  extinctionDynamicsClosed : M.extinctionDynamics
  equilibriumOccupancyClosed : M.equilibriumOccupancy
  persistenceThresholdClosed : M.persistenceThreshold

def MetapopulationClosed {N : HabitatNetwork} (M : MetapopulationPackage N) : Prop :=
  M.colonizationDynamics ∧ M.extinctionDynamics ∧ M.equilibriumOccupancy ∧ M.persistenceThreshold

theorem metapopulation_closed_from_evidence {N : HabitatNetwork} (M : MetapopulationPackage N) (E : MetapopulationEvidence M) :
    MetapopulationClosed M := by
  exact And.intro E.colonizationDynamicsClosed
    (And.intro E.extinctionDynamicsClosed
      (And.intro E.equilibriumOccupancyClosed E.persistenceThresholdClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse