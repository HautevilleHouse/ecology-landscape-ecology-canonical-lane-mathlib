import EcologyLandscapeEcologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure LandscapeConnectivityPackage where
  landscapeType : Type u
  topology : TopologicalSpace landscapeType
  habitatPatches : Set landscapeType
  connectivityMetric : landscapeType → landscapeType → ℝ
  dispersalKernel : landscapeType → landscapeType → ℝ→ ℝ
  functionalConnectivity : Prop
  structuralConnectivity : Prop

structure LandscapeConnectivityEvidence (C : LandscapeConnectivityPackage) where
  patchesNonempty : C.habitatPatches.Nonempty
  connectivitySymmetric : ∀ x y, C.connectivityMetric x y = C.connectivityMetric y x
  functionalConnectivityClosed : C.functionalConnectivity

def LandscapeConnectivityClosed (C : LandscapeConnectivityPackage) : Prop :=
  C.functionalConnectivity ∧ C.structuralConnectivity

theorem landscape_connectivity_closed_from_evidence (C : LandscapeConnectivityPackage)
    (E : LandscapeConnectivityEvidence C) : LandscapeConnectivityClosed C := by
  exact And.intro E.functionalConnectivityClosed C.structuralConnectivity

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse