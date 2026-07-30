import canonicalLaneMathlib.AdmissibleClass
import EcologyLandscapeEcologyCanonicalLaneLean.LandscapeStructure

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure FragmentationIndex {N : HabitatNetwork} where
  patchDensity : Prop
  edgeDensity : Prop
  connectivityDeficit : Prop

structure FragmentationEvidence {N : HabitatNetwork} (F : FragmentationIndex N) where
  patchDensityClosed : F.patchDensity
  edgeDensityClosed : F.edgeDensity
  connectivityDeficitClosed : F.connectivityDeficit

def FragmentationClosed {N : HabitatNetwork} (F : FragmentationIndex N) : Prop :=
  F.patchDensity ∧ F.edgeDensity ∧ F.connectivityDeficit

theorem fragmentation_closed_from_evidence {N : HabitatNetwork} (F : FragmentationIndex N) (E : FragmentationEvidence F) :
    FragmentationClosed F := by
  exact And.intro E.patchDensityClosed (And.intro E.edgeDensityClosed E.connectivityDeficitClosed)

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse