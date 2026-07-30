import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure EcosystemDynamicsPackage (A : AdmissibleClass) where
  trophicInteractions : Prop
  disturbanceRegime : Prop
  successionModel : Prop
  nutrientCycling : Prop

structure EcosystemDynamicsEvidence {A : AdmissibleClass} (E : EcosystemDynamicsPackage A) where
  trophicInteractionsClosed : E.trophicInteractions
  disturbanceRegimeClosed : E.disturbanceRegime
  successionModelClosed : E.successionModel
  nutrientCyclingClosed : E.nutrientCycling

def EcosystemDynamicsClosed {A : AdmissibleClass} (E : EcosystemDynamicsPackage A) : Prop :=
  E.trophicInteractions ∧ E.disturbanceRegime ∧ E.successionModel ∧ E.nutrientCycling

theorem ecosystem_dynamics_closed_from_evidence
    {A : AdmissibleClass} (E : EcosystemDynamicsPackage A)
    (Ev : EcosystemDynamicsEvidence E) : EcosystemDynamicsClosed E := by
  exact And.intro Ev.trophicInteractionsClosed
    (And.intro Ev.disturbanceRegimeClosed
      (And.intro Ev.successionModelClosed Ev.nutrientCyclingClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse