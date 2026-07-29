import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure MaxMinProduct where
  carrier : Type u
  n : ℕ
  entries : carrier → ℕ → ℕ → ℝ
  betweenZeroOne : ∀ x i j, 0 ≤ entries x i j ∧ entries x i j ≤ 1

def maxMinComposition {A B : Type u} (f : A → ℕ → ℕ → ℝ) (g : B → ℕ → ℕ → ℝ) (n : ℕ) (i j : ℕ) : ℝ :=
  max' (Finset.range n) (λ k => min (f A i k) (g B k j))

structure MaxMinEvidence (M : MaxMinProduct) where
  binaryOperatorClosed : Prop
  associative : Prop
  identityExists : Prop

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse