import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure SourceSinkMetapopulationPackage where
  sourceHabitatArea : ℝ
  sinkHabitatArea : ℝ
  emigrationRate : ℝ
  immigrationRate : ℝ
  carryingCapacitySource : ℝ

structure SourceSinkMetapopulationEvidence (S : SourceSinkMetapopulationPackage) where
  sourceHabitatAreaClosed : S.sourceHabitatArea > 0
  sinkHabitatAreaClosed : S.sinkHabitatArea > 0
  emigrationRateClosed : S.emigrationRate > 0
  immigrationRateClosed : S.immigrationRate > 0
  carryingCapacitySourceClosed : S.carryingCapacitySource > 0

def SourceSinkMetapopulationClosed (S : SourceSinkMetapopulationPackage) : Prop :=
  S.sourceHabitatArea > 0 ∧ S.sinkHabitatArea > 0 ∧
  S.emigrationRate > 0 ∧ S.immigrationRate > 0 ∧
  S.carryingCapacitySource > 0

theorem source_sink_metapopulation_closed_from_evidence
    (S : SourceSinkMetapopulationPackage) (E : SourceSinkMetapopulationEvidence S) :
    SourceSinkMetapopulationClosed S := by
  exact And.intro E.sourceHabitatAreaClosed
    (And.intro E.sinkHabitatAreaClosed
      (And.intro E.emigrationRateClosed
        (And.intro E.immigrationRateClosed E.carryingCapacitySourceClosed)))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse