import HautevilleHouse.EcologyLandscapeEcologyCanonicalLaneLean.LandscapeEcologyCore

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure IslandArchipelago (α : Type u) where
  islands : List (LandscapePatch α)
  distanceMatrix : Matrix (Fin (List.length islands)) (Fin (List.length islands)) ℝ

structure BiogeographyState (α : Type u) where
  islandArea : ℝ
  distanceToMainland : ℝ
  speciesCount : ℕ
  extinctionRate : ℝ
  immigrationRate : ℝ

def equilibrium_species (s : BiogeographyState α) : ℕ :=
  let numerator : ℝ := (s.immigrationRate : ℝ) * (s.islandArea : ℝ)
  let denominator : ℝ := numerator + (s.extinctionRate : ℝ) * (s.islandArea : ℝ)
  if denominator > 0 then (numerator / denominator).toNat else 0

theorem equilibrium_species_nonzero (s : BiogeographyState α) (hImmig : s.immigrationRate > 0) (hArea : s.islandArea > 0) (hExt : s.extinctionRate > 0) : equilibrium_species s > 0 := by
  sorry

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse