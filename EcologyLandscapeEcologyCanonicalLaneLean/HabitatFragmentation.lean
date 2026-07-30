import HautevilleHouse.EcologyLandscapeEcologyCanonicalLaneLean.LandscapeEcologyCore

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure FragmentationMetrics where
  patchCount : ℕ
  totalEdgeLength : ℝ
  meanPatchArea : ℝ
  aggregationIndex : ℝ

def fragmentation_closed (M : FragmentationMetrics) : Prop :=
  M.patchCount > 0 ∧ M.totalEdgeLength > 0 ∧ M.meanPatchArea > 0 ∧ M.aggregationIndex ≥ 0 ∧ M.aggregationIndex ≤ 1

theorem fragmentation_nonempty (M : FragmentationMetrics) (h : M.patchCount > 0) : M.patchCount ≥ 1 := by
  omega

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse