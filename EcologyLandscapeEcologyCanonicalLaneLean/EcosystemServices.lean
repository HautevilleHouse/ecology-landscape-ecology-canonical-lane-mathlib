import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure EcosystemServicesPackage where
  serviceTypes : Type
  landscapeUnits : Type
  serviceFlows : Type
  provisionCapacity : Prop
  demandRegulation : Prop
  serviceSustainability : provisionCapacity ∧ demandRegulation

structure EcosystemServicesEvidence (E : EcosystemServicesPackage) where
  provisionCapacityClosed : E.provisionCapacity
  demandRegulationClosed : E.demandRegulation

def EcosystemServicesClosed (E : EcosystemServicesPackage) : Prop :=
  E.provisionCapacity ∧ E.demandRegulation

theorem ecosystem_services_closed_from_evidence (E : EcosystemServicesPackage)
    (Ev : EcosystemServicesEvidence E) : EcosystemServicesClosed E := by
  exact And.intro Ev.provisionCapacityClosed Ev.demandRegulationClosed

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse