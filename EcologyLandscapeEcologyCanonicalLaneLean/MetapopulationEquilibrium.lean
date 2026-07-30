import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure MetapopulationEquilibriumPackage where
  extinctionRate : ℕ → ℝ
  colonizationRate : ℕ → ℝ → ℝ
  patchOccupancy : ℕ → ℝ
  extinctionColonizationBalance : Prop
  equilibriumExistence : Prop
  equilibriumStability : Prop

structure MetapopulationEquilibriumEvidence (M : MetapopulationEquilibriumPackage) where
  extinctionColonizationBalanceClosed : M.extinctionColonizationBalance
  equilibriumExistenceClosed : M.equilibriumExistence
  equilibriumStabilityClosed : M.equilibriumStability

def MetapopulationEquilibriumClosed (M : MetapopulationEquilibriumPackage) : Prop :=
  M.extinctionColonizationBalance ∧ M.equilibriumExistence ∧ M.equilibriumStability

theorem metapopulation_equilibrium_closed_from_evidence
    (M : MetapopulationEquilibriumPackage) (E : MetapopulationEquilibriumEvidence M) :
    MetapopulationEquilibriumClosed M := by
  exact And.intro E.extinctionColonizationBalanceClosed
    (And.intro E.equilibriumExistenceClosed E.equilibriumStabilityClosed)

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse