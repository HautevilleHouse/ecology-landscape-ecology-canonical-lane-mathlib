import EcologyLandscapeEcologyCanonicalLaneLean.LandscapeProcesses

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure SpatialScalingPackage (ℓ : LandscapeConnectivityPackage)
    (P : LandscapeProcessesPackage ℓ) where
  domainScale : ℝ
  characteristicPatchSize : ℝ
  scaleInvariance : Prop
  scalingRelationship : Prop

structure SpatialScalingEvidence (ℓ : LandscapeConnectivityPackage)
    (P : LandscapeProcessesPackage ℓ) (S : SpatialScalingPackage ℓ P) where
  scaleInvarianceClosed : S.scaleInvariance
  scalingRelationshipClosed : S.scalingRelationship

def SpatialScalingClosed (ℓ : LandscapeConnectivityPackage)
    (P : LandscapeProcessesPackage ℓ) (S : SpatialScalingPackage ℓ P) : Prop :=
  S.scaleInvariance ∧ S.scalingRelationship

theorem spatial_scaling_closed_from_evidence (ℓ : LandscapeConnectivityPackage)
    (P : LandscapeProcessesPackage ℓ) (S : SpatialScalingPackage ℓ P)
    (E : SpatialScalingEvidence ℓ P S) : SpatialScalingClosed ℓ P S := by
  exact And.intro E.scaleInvarianceClosed E.scalingRelationshipClosed

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse