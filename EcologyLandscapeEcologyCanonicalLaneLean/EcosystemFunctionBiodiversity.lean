import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure EcosystemFunctionBiodiversityPackage (L : LandscapeHabitatStructurePackage) where
  speciesRichnessGradient : Prop
  functionalTraitDiversity : Prop
  nutrientCyclingRate : Prop
  primaryProductivity : Prop

structure EcosystemFunctionBiodiversityEvidence {L : LandscapeHabitatStructurePackage}
    (E : EcosystemFunctionBiodiversityPackage L) where
  speciesRichnessGradientClosed : E.speciesRichnessGradient
  functionalTraitDiversityClosed : E.functionalTraitDiversity
  nutrientCyclingRateClosed : E.nutrientCyclingRate
  primaryProductivityClosed : E.primaryProductivity

def EcosystemFunctionBiodiversityClosed {L : LandscapeHabitatStructurePackage}
    (E : EcosystemFunctionBiodiversityPackage L) : Prop :=
  E.speciesRichnessGradient ∧ E.functionalTraitDiversity ∧ E.nutrientCyclingRate ∧ E.primaryProductivity

theorem ecosystem_function_biodiversity_closed_from_evidence
    {L : LandscapeHabitatStructurePackage} (E : EcosystemFunctionBiodiversityPackage L)
    (Ev : EcosystemFunctionBiodiversityEvidence E) : EcosystemFunctionBiodiversityClosed E := by
  exact And.intro Ev.speciesRichnessGradientClosed
    (And.intro Ev.functionalTraitDiversityClosed
      (And.intro Ev.nutrientCyclingRateClosed Ev.primaryProductivityClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse