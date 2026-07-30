import canonicalLaneMathlib.AdmissibleClass
import EcologyLandscapeEcologyCanonicalLaneLean.LandscapeStructure

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure EcosystemServiceModel (E : EcosystemService) where
  provisioningService : Prop
  regulatingService : Prop
  culturalService : Prop
  supportingService : Prop

structure EcosystemServiceEvidence (E : EcosystemService) (M : EcosystemServiceModel E) where
  provisioningServiceClosed : M.provisioningService
  regulatingServiceClosed : M.regulatingService
  culturalServiceClosed : M.culturalService
  supportingServiceClosed : M.supportingService

def EcosystemServiceClosed (E : EcosystemService) (M : EcosystemServiceModel E) : Prop :=
  M.provisioningService ∧ M.regulatingService ∧ M.culturalService ∧ M.supportingService

theorem ecosystem_service_closed_from_evidence (E : EcosystemService) (M : EcosystemServiceModel E) (Ev : EcosystemServiceEvidence E M) :
    EcosystemServiceClosed E M := by
  exact And.intro Ev.provisioningServiceClosed
    (And.intro Ev.regulatingServiceClosed
      (And.intro Ev.culturalServiceClosed Ev.supportingServiceClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse