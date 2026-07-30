import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure HabitatSuitabilityModelPackage where
  environmentalCovariates : Type
  suitabilityFunction : environmentalCovariates → ℝ
  thresholdSuitable : ℝ
  suitabilityAboveThreshold : Prop
  modelCalibrationValid : Prop
  spatialContiguity : Prop

structure HabitatSuitabilityModelEvidence (H : HabitatSuitabilityModelPackage) where
  suitabilityAboveThresholdClosed : H.suitabilityAboveThreshold
  modelCalibrationValidClosed : H.modelCalibrationValid
  spatialContiguityClosed : H.spatialContiguity

def HabitatSuitabilityModelClosed (H : HabitatSuitabilityModelPackage) : Prop :=
  H.suitabilityAboveThreshold ∧ H.modelCalibrationValid ∧ H.spatialContiguity

theorem habitat_suitability_model_closed_from_evidence
    (H : HabitatSuitabilityModelPackage) (E : HabitatSuitabilityModelEvidence H) :
    HabitatSuitabilityModelClosed H := by
  exact And.intro E.suitabilityAboveThresholdClosed
    (And.intro E.modelCalibrationValidClosed E.spatialContiguityClosed)

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse