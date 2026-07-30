import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure SpeciesDispersalKernelPackage where
  species : Type u
  distanceDecayFunction : species → ℝ → ℝ
  longDistanceDispersal : species → Prop
  dispersalKernelNormalized : Prop
  kernelIntegratesToOne : Prop
  fatTailCaptured : Prop

structure SpeciesDispersalKernelEvidence (K : SpeciesDispersalKernelPackage) where
  kernelIntegratesToOneClosed : K.kernelIntegratesToOne
  fatTailCapturedClosed : K.fatTailCaptured
  dispersalKernelNormalizedClosed : K.dispersalKernelNormalized

def SpeciesDispersalKernelClosed (K : SpeciesDispersalKernelPackage) : Prop :=
  K.dispersalKernelNormalized ∧ K.kernelIntegratesToOne ∧ K.fatTailCaptured

theorem species_dispersal_kernel_closed_from_evidence
    (K : SpeciesDispersalKernelPackage) (E : SpeciesDispersalKernelEvidence K) :
    SpeciesDispersalKernelClosed K := by
  exact And.intro E.dispersalKernelNormalizedClosed
    (And.intro E.kernelIntegratesToOneClosed E.fatTailCapturedClosed)

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse