import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure SpeciesDistributionPackage (A : AdmissibleClass) where
  species : Type u
  habitatSuitability : Prop
  occurrenceData : Prop
  spatialScale : Prop
  environmentalCovariates : Prop

structure SpeciesDistributionEvidence {A : AdmissibleClass} (S : SpeciesDistributionPackage A) where
  habitatSuitabilityClosed : S.habitatSuitability
  occurrenceDataClosed : S.occurrenceData
  spatialScaleClosed : S.spatialScale
  environmentalCovariatesClosed : S.environmentalCovariates

def SpeciesDistributionClosed {A : AdmissibleClass} (S : SpeciesDistributionPackage A) : Prop :=
  S.habitatSuitability ∧ S.occurrenceData ∧ S.spatialScale ∧ S.environmentalCovariates

theorem species_distribution_closed_from_evidence
    {A : AdmissibleClass} (S : SpeciesDistributionPackage A)
    (E : SpeciesDistributionEvidence S) : SpeciesDistributionClosed S := by
  exact And.intro E.habitatSuitabilityClosed
    (And.intro E.occurrenceDataClosed
      (And.intro E.spatialScaleClosed E.environmentalCovariatesClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse