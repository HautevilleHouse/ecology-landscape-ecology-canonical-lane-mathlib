import HautevilleHouse.EcologyLandscapeEcologyCanonicalLaneLean.LandscapeEcologyCore

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure DispersalKernel where
  meanDistance : ℝ
  variance : ℝ
  tailDecayExponent : ℝ

structure ConnectivityMatrix (α : Type u) where
  matrix : List (List ℝ)
  rows : ℕ
  cols : ℕ

def dispersal_closed (D : DispersalKernel) : Prop :=
  D.meanDistance > 0 ∧ D.variance > 0 ∧ D.tailDecayExponent > 0

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse