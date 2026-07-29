import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrix (n m : ℕ) where
  entries : Fin n → Fin m → ℝ
  membership : Fin n → Fin m → ℝ

structure FuzzyMatrixEvidence (n m : ℕ) (A : FuzzyMatrix n m) where
  entriesBound : ∀ i j, 0 ≤ A.entries i j ∧ A.entries i j ≤ 1
  membershipBound : ∀ i j, 0 ≤ A.membership i j ∧ A.membership i j ≤ 1

def FuzzyMatrixClosed (n m : ℕ) (A : FuzzyMatrix n m) : Prop :=
  ∀ i j, 0 ≤ A.entries i j ∧ A.entries i j ≤ 1

theorem fuzzy_matrix_closed_from_evidence (n m : ℕ) (A : FuzzyMatrix n m) (E : FuzzyMatrixEvidence n m A) :
    FuzzyMatrixClosed n m A := by
  intro i j
  exact E.entriesBound i j

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse