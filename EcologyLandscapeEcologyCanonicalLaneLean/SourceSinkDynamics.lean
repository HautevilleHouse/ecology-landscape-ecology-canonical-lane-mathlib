import HautevilleHouse.EcologyLandscapeEcologyCanonicalLaneLean.LandscapeEcologyCore

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure SourceHabitat (α : Type u) where
  patch : LandscapePatch α
  perCapitaGrowth : ℝ
  carryingCapacity : ℕ

structure SinkHabitat (α : Type u) where
  patch : LandscapePatch α
  immigrationRate : ℝ
  sinkQuality : ℝ

def source_sink_closed (src : SourceHabitat α) (snk : SinkHabitat α) : Prop :=
  src.perCapitaGrowth > 0 ∧ snk.sinkQuality > 0 ∧ snk.immigrationRate > 0

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse