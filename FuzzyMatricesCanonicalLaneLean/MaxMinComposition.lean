import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyMatricesCanonicalLaneLean.FuzzyMatrix
import HautevilleHouse.FuzzyMatricesCanonicalLaneLean.TNorm

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

def maxMinCompose {n m p : ℕ} (A : FuzzyMatrix n m) (B : FuzzyMatrix m p) : FuzzyMatrix n p :=
  { entries := λ i k => max_{j} (min (A.entries i j) (B.entries j k)),
    condition := λ i k => by
      have h : ∀ j, 0 ≤ min (A.entries i j) (B.entries j k) ∧ min (A.entries i j) (B.entries j k) ≤ 1 := λ j => by
        have ha := A.condition i j
        have hb := B.condition j k
        exact ⟨min_le_of_left ha.1, min_le_right_of_right hb.2⟩
      refine ⟨?_, ?_⟩
      · apply Finset.le_max_of_mem; exact Finset.mem_univ _
        exact (h (Finset.univ.choose _)).1
      · apply Finset.max_le; intro j; exact (h j).2
  }

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse
