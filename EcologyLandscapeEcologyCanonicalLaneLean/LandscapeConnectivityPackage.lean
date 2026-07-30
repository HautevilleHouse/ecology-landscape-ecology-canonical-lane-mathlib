import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure LandscapeConnectivityPackage where
  patchNetwork : Type u
  dispersalKernel : Type v
  habitatQuality : Type w
  connectivityMatrix : Type x
  graphConnected : Prop
  metapopulationPersistence : Prop
  sourceSinkDynamics : Prop
  corridorFunctionality : Prop

structure LandscapeConnectivityEvidence (L : LandscapeConnectivityPackage) where
  graphConnectedClosed : L.graphConnected
  metapopulationPersistenceClosed : L.metapopulationPersistence
  sourceSinkDynamicsClosed : L.sourceSinkDynamics
  corridorFunctionalityClosed : L.corridorFunctionality

def LandscapeConnectivityClosed (L : LandscapeConnectivityPackage) : Prop :=
  L.graphConnected ∧ L.metapopulationPersistence ∧ L.sourceSinkDynamics ∧ L.corridorFunctionality

theorem landscape_connectivity_closed_from_evidence (L : LandscapeConnectivityPackage)
    (E : LandscapeConnectivityEvidence L) : LandscapeConnectivityClosed L := by
  exact And.intro E.graphConnectedClosed
    (And.intro E.metapopulationPersistenceClosed
      (And.intro E.sourceSinkDynamicsClosed E.corridorFunctionalityClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse