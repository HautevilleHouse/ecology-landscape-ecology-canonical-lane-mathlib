import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure LandscapeEcologyAdmittedObject where
  landscape : Type u
  topology : TopologicalSpace landscape
  spatialDomain : Prop
  ecologicalProcesses : Prop
  connectivityStructure : Prop
  conclusion : ecologicalProcesses ∧ connectivityStructure

structure AdmissibleClass where
  object : LandscapeEcologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.ecologicalProcesses ∧ A.object.connectivityStructure) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse