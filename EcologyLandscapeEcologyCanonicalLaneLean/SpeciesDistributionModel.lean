import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure SpeciesDistributionModelPackage where
  environmentalPredictors : Type
  occurrenceData : Type
  nicheEnvelope : Type
  habitatSuitability : Prop
  spatialPrediction : Prop
  distributionMap : habitatSuitability ∧ spatialPrediction

structure SpeciesDistributionModelEvidence (S : SpeciesDistributionModelPackage) where
  habitatSuitabilityClosed : S.habitatSuitability
  spatialPredictionClosed : S.spatialPrediction

def SpeciesDistributionModelClosed (S : SpeciesDistributionModelPackage) : Prop :=
  S.habitatSuitability ∧ S.spatialPrediction

theorem species_distribution_model_closed_from_evidence (S : SpeciesDistributionModelPackage)
    (E : SpeciesDistributionModelEvidence S) : SpeciesDistributionModelClosed S := by
  exact And.intro E.habitatSuitabilityClosed E.spatialPredictionClosed

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse