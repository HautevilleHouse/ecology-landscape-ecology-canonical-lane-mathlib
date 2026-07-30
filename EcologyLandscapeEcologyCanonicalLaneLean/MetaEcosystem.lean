import EcologyLandscapeEcologyCanonicalLaneLean.SpatialScaling

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure MetaEcosystemPackage (ℓ : LandscapeConnectivityPackage)
    (P : LandscapeProcessesPackage ℓ) (S : SpatialScalingPackage ℓ P) where
  speciesPool : Type u
  trophicNetwork : SpeciesPool → SpeciesPool → Prop
  ecosystemFunction : Prop
  resilience : Prop
  metaEcosystemStability : Prop

structure MetaEcosystemEvidence (ℓ : LandscapeConnectivityPackage)
    (P : LandscapeProcessesPackage ℓ) (S : SpatialScalingPackage ℓ P)
    (M : MetaEcosystemPackage ℓ P S) where
  ecosystemFunctionClosed : M.ecosystemFunction
  resilienceClosed : M.resilience
  metaEcosystemStabilityClosed : M.metaEcosystemStability

def MetaEcosystemClosed (ℓ : LandscapeConnectivityPackage)
    (P : LandscapeProcessesPackage ℓ) (S : SpatialScalingPackage ℓ P)
    (M : MetaEcosystemPackage ℓ P S) : Prop :=
  M.ecosystemFunction ∧ M.resilience ∧ M.metaEcosystemStability

theorem meta_ecosystem_closed_from_evidence (ℓ : LandscapeConnectivityPackage)
    (P : LandscapeProcessesPackage ℓ) (S : SpatialScalingPackage ℓ P)
    (M : MetaEcosystemPackage ℓ P S) (E : MetaEcosystemEvidence ℓ P S M) :
    MetaEcosystemClosed ℓ P S M := by
  exact And.intro E.ecosystemFunctionClosed (And.intro E.resilienceClosed E.metaEcosystemStabilityClosed)

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse