import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure SpatialEcologyPackage where
  landscapeStructure : Type u
  speciesDistribution : Type v
  habitatSuitability : Type w
  fragmentationMetrics : Type x
  edgeEffects : Prop
  coreAreaFunction : Prop
  patchShapeIndex : Prop
  landscapeHeterogeneity : Prop

structure SpatialEcologyEvidence (S : SpatialEcologyPackage) where
  edgeEffectsClosed : S.edgeEffects
  coreAreaFunctionClosed : S.coreAreaFunction
  patchShapeIndexClosed : S.patchShapeIndex
  landscapeHeterogeneityClosed : S.landscapeHeterogeneity

def SpatialEcologyClosed (S : SpatialEcologyPackage) : Prop :=
  S.edgeEffects ∧ S.coreAreaFunction ∧ S.patchShapeIndex ∧ S.landscapeHeterogeneity

theorem spatial_ecology_closed_from_evidence (S : SpatialEcologyPackage)
    (E : SpatialEcologyEvidence S) : SpatialEcologyClosed S := by
  exact And.intro E.edgeEffectsClosed
    (And.intro E.coreAreaFunctionClosed
      (And.intro E.patchShapeIndexClosed E.landscapeHeterogeneityClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse