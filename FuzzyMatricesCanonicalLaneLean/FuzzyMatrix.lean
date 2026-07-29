import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrix (n m : ℕ) where
  entries : Fin n → Fin m → ℝ
  condition : ∀ i j, 0 ≤ entries i j ∧ entries i j ≤ 1

def FuzzyMatrix.add {n m : ℕ} (A B : FuzzyMatrix n m) : FuzzyMatrix n m :=
  { entries := λ i j => min (A.entries i j + B.entries i j) 1,
    condition := λ i j => by
      have ha := A.condition i j
      have hb := B.condition i j
      constructor
      · exact min_le_left _ _
      · exact min_le_right _ _
  }

def FuzzyMatrix.mul {n m p : ℕ} (A : FuzzyMatrix n m) (B : FuzzyMatrix m p) : FuzzyMatrix n p :=
  { entries := λ i k => max_over_j (λ j => min (A.entries i j) (B.entries j k)),
    condition := λ i k => by
      -- property: max-min composition yields entry in [0,1]
      refine ⟨?_, ?_⟩
      · apply le_max_of_le_all; intro j; exact min_le_left _ _
      · apply max_le; intro j; apply min_le_right _ _
  }

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse
