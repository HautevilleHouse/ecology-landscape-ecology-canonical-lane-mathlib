import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure MetapopulationDynamicsPackage where
  patchDynamics : Type
  colonizationRate : Type
  extinctionRate : Type
  incidenceFunction : Prop
  metapopulationCapacity : Prop
  dynamicsEquilibrium : incidenceFunction ∧ metapopulationCapacity

structure MetapopulationDynamicsEvidence (M : MetapopulationDynamicsPackage) where
  incidenceFunctionClosed : M.incidenceFunction
  metapopulationCapacityClosed : M.metapopulationCapacity

def MetapopulationDynamicsClosed (M : MetapopulationDynamicsPackage) : Prop :=
  M.incidenceFunction ∧ M.metapopulationCapacity

theorem metapopulation_dynamics_closed_from_evidence (M : MetapopulationDynamicsPackage)
    (E : MetapopulationDynamicsEvidence M) : MetapopulationDynamicsClosed M := by
  exact And.intro E.incidenceFunctionClosed E.metapopulationCapacityClosed

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse