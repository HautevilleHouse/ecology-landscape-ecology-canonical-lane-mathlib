import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure MetapopulationCapacityPackage where
  extinctionThreshold : ℝ
  colonisationRate : ℝ
  occupancyInitial : ℝ
  equilibriumOccupancy : ℝ

structure MetapopulationCapacityEvidence (M : MetapopulationCapacityPackage) where
  extinctionThresholdClosed : M.extinctionThreshold > 0
  colonisationRateClosed : M.colonisationRate > 0
  equilibriumOccupancyClosed : M.equilibriumOccupancy = 1 - M.extinctionThreshold / M.colonisationRate

def MetapopulationCapacityClosed (M : MetapopulationCapacityPackage) : Prop :=
  M.extinctionThreshold > 0 ∧ M.colonisationRate > 0 ∧
  M.equilibriumOccupancy = 1 - M.extinctionThreshold / M.colonisationRate

theorem metapopulation_capacity_closed_from_evidence
    (M : MetapopulationCapacityPackage) (E : MetapopulationCapacityEvidence M) :
    MetapopulationCapacityClosed M := by
  exact And.intro E.extinctionThresholdClosed
    (And.intro E.colonisationRateClosed E.equilibriumOccupancyClosed)

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse