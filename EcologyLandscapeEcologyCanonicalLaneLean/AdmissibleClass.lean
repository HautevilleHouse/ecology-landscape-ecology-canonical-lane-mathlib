import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure LandscapeAdmittedObject where
  landscape : Type u
  topology : TopologicalSpace landscape
  ecosystemClosed : Prop
  functionalConnectivity : Prop
  conclusion : ecosystemClosed ∧ functionalConnectivity

structure AdmissibleClass where
  object : LandscapeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.ecosystemClosed ∧ A.object.functionalConnectivity) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse