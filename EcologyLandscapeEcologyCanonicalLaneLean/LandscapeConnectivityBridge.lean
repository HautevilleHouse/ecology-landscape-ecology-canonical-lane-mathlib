import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure ConnectivityPackage where
  overallConnectivity : ℝ
  graphConnectivity : ℝ
  percolationThreshold : ℝ
  functionalConnectivity : ℝ

structure ConnectivityEvidence (C : ConnectivityPackage) where
  overallConnectivityClosed : C.overallConnectivity > 0
  graphConnectivityClosed : C.graphConnectivity > 0
  percolationThresholdClosed : C.percolationThreshold < 1
  functionalConnectivityClosed : C.functionalConnectivity > 0

def ConnectivityClosed (C : ConnectivityPackage) : Prop :=
  C.overallConnectivity > 0 ∧ C.graphConnectivity > 0 ∧ C.percolationThreshold < 1 ∧ C.functionalConnectivity > 0

theorem connectivity_closed_from_evidence (C : ConnectivityPackage) (E : ConnectivityEvidence C) : ConnectivityClosed C := by
  exact And.intro E.overallConnectivityClosed
    (And.intro E.graphConnectivityClosed
      (And.intro E.percolationThresholdClosed E.functionalConnectivityClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse