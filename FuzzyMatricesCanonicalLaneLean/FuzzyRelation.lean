import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyMatricesCanonicalLaneLean.FuzzyMatrix

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyRelation (α : Type u) (β : Type v) where
  relation : α → β → ℝ
  rangeCondition : ∀ a b, 0 ≤ relation a b ∧ relation a b ≤ 1

def FuzzyRelation.toMatrix {α β : Type u} [Fintype α] [Fintype β] (R : FuzzyRelation α β) 
    : FuzzyMatrix (Fintype.card α) (Fintype.card β) :=
  { entries := λ i j => R.relation (Finset.choose α i) (Finset.choose β j),
    condition := λ i j => R.rangeCondition _ _
  }

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse
