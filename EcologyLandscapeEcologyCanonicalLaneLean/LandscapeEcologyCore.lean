import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure LandscapePatch (α : Type u) where
  region : Set α
  connectivity : Prop
  patchArea : ℕ
  speciesRichness : ℕ

structure Metapopulation (α : Type u) where
  patches : List (LandscapePatch α)
  dispersalRate : ℝ
  localExtinctionRate : ℝ
  colonizationRate : ℝ

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse