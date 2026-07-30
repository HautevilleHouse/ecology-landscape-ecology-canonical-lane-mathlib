import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure PatchDynamicsPackage where
  patchArea : Type u
  patchIsolation : Type v
  colonizationRate : Type w
  extinctionRate : Type x
  islandBiogeography : Prop
  metapopulationCapacity : Prop
  extinctionDebt : Prop
  equilibriumSpeciesRichness : Prop

structure PatchDynamicsEvidence (P : PatchDynamicsPackage) where
  islandBiogeographyClosed : P.islandBiogeography
  metapopulationCapacityClosed : P.metapopulationCapacity
  extinctionDebtClosed : P.extinctionDebt
  equilibriumSpeciesRichnessClosed : P.equilibriumSpeciesRichness

def PatchDynamicsClosed (P : PatchDynamicsPackage) : Prop :=
  P.islandBiogeography ∧ P.metapopulationCapacity ∧ P.extinctionDebt ∧ P.equilibriumSpeciesRichness

theorem patch_dynamics_closed_from_evidence (P : PatchDynamicsPackage)
    (E : PatchDynamicsEvidence P) : PatchDynamicsClosed P := by
  exact And.intro E.islandBiogeographyClosed
    (And.intro E.metapopulationCapacityClosed
      (And.intro E.extinctionDebtClosed E.equilibriumSpeciesRichnessClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse