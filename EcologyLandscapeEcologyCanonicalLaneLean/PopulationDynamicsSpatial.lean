import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure PopulationDynamicsSpatialPackage (L : LandscapeHabitatStructurePackage) where
  dispersalKernel : Prop
  sourceSinkDynamics : Prop
  metapopulationEquilibrium : Prop
  AlleeEffectThreshold : Prop

structure PopulationDynamicsSpatialEvidence {L : LandscapeHabitatStructurePackage}
    (P : PopulationDynamicsSpatialPackage L) where
  dispersalKernelClosed : P.dispersalKernel
  sourceSinkDynamicsClosed : P.sourceSinkDynamics
  metapopulationEquilibriumClosed : P.metapopulationEquilibrium
  AlleeEffectThresholdClosed : P.AlleeEffectThreshold

def PopulationDynamicsSpatialClosed {L : LandscapeHabitatStructurePackage}
    (P : PopulationDynamicsSpatialPackage L) : Prop :=
  P.dispersalKernel ∧ P.sourceSinkDynamics ∧ P.metapopulationEquilibrium ∧ P.AlleeEffectThreshold

theorem population_dynamics_spatial_closed_from_evidence
    {L : LandscapeHabitatStructurePackage} (P : PopulationDynamicsSpatialPackage L)
    (E : PopulationDynamicsSpatialEvidence P) : PopulationDynamicsSpatialClosed P := by
  exact And.intro E.dispersalKernelClosed
    (And.intro E.sourceSinkDynamicsClosed
      (And.intro E.metapopulationEquilibriumClosed E.AlleeEffectThresholdClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse