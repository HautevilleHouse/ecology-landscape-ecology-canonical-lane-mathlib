import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure TrophicCascadeClosurePackage where
  trophicLevels : ℕ
  topPredatorPresent : Prop
  herbivoreControl : Prop
  primaryProducerResponse : Prop
  cascadeComplete : Prop

structure TrophicCascadeClosureEvidence (T : TrophicCascadeClosurePackage) where
  topPredatorPresentClosed : T.topPredatorPresent
  herbivoreControlClosed : T.herbivoreControl
  primaryProducerResponseClosed : T.primaryProducerResponse
  cascadeCompleteClosed : T.cascadeComplete

def TrophicCascadeClosureClosed (T : TrophicCascadeClosurePackage) : Prop :=
  T.topPredatorPresent ∧ T.herbivoreControl ∧ T.primaryProducerResponse ∧ T.cascadeComplete

theorem trophic_cascade_closure_closed_from_evidence
    (T : TrophicCascadeClosurePackage) (E : TrophicCascadeClosureEvidence T) :
    TrophicCascadeClosureClosed T := by
  exact And.intro E.topPredatorPresentClosed
    (And.intro E.herbivoreControlClosed
      (And.intro E.primaryProducerResponseClosed E.cascadeCompleteClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse