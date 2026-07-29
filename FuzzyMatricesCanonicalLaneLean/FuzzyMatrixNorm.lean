import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrixNormPackage {n m : ℕ} (A : FuzzyMatrix n m) where
  norm : ℝ
  normNonnegative : norm ≥ 0
  normZeroOnlyIfZero : norm = 0 ↔ ∀ i j, A.entries i j = 0
  subadditivity : ∀ (B : FuzzyMatrix n m), norm + (FuzzyMatrixNormPackage.mk B).norm ≥ (FuzzyMatrixNormPackage.mk B).norm

structure FuzzyMatrixNormEvidence {n m : ℕ} {A : FuzzyMatrix n m} (P : FuzzyMatrixNormPackage A) where
  normNonnegativeClosed : P.normNonnegative
  normZeroOnlyIfZeroClosed : P.normZeroOnlyIfZero
  subadditivityClosed : P.subadditivity

def FuzzyMatrixNormClosed {n m : ℕ} {A : FuzzyMatrix n m} (P : FuzzyMatrixNormPackage A) : Prop :=
  P.normNonnegative ∧ P.normZeroOnlyIfZero ∧ P.subadditivity

theorem fuzzy_matrix_norm_closed_from_evidence {n m : ℕ} {A : FuzzyMatrix n m} (P : FuzzyMatrixNormPackage A) (E : FuzzyMatrixNormEvidence P) :
    FuzzyMatrixNormClosed P := by
  exact And.intro E.normNonnegativeClosed (And.intro E.normZeroOnlyIfZeroClosed E.subadditivityClosed)

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse