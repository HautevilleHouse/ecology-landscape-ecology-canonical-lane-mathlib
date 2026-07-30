import canonicalLaneMathlib.AdmissibleClass
import EcologyLandscapeEcologyCanonicalLaneLean.LandscapeStructure

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure SpatialEcologyEvidence (L : LandscapePatch) where
  connectivityClosed : L.connectivity
  areaClosed : L.area
  shapeClosed : L.shape

def SpatialEcologyClosed (L : LandscapePatch) : Prop :=
  L.connectivity ∧ L.area ∧ L.shape

theorem spatial_ecology_closed_from_evidence (L : LandscapePatch) (E : SpatialEcologyEvidence L) :
    SpatialEcologyClosed L := by
  exact And.intro E.connectivityClosed (And.intro E.areaClosed E.shapeClosed)

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse