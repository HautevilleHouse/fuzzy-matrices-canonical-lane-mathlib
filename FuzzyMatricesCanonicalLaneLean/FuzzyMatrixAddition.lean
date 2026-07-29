import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrixAdditionPackage {n m : ℕ} (A B : FuzzyMatrix n m) where
  sum : FuzzyMatrix n m
  sumEntrywise : ∀ i j, sum.entries i j = min (A.entries i j + B.entries i j) 1
  sumMembershipwise : ∀ i j, sum.membership i j = max (A.membership i j) (B.membership i j)

structure FuzzyMatrixAdditionEvidence {n m : ℕ} {A B : FuzzyMatrix n m} (P : FuzzyMatrixAdditionPackage A B) where
  sumEntrywiseClosed : ∀ i j, P.sum.entries i j = min (A.entries i j + B.entries i j) 1
  sumMembershipwiseClosed : ∀ i j, P.sum.membership i j = max (A.membership i j) (B.membership i j)

def FuzzyMatrixAdditionClosed {n m : ℕ} {A B : FuzzyMatrix n m} (P : FuzzyMatrixAdditionPackage A B) : Prop :=
  (∀ i j, P.sum.entries i j = min (A.entries i j + B.entries i j) 1) ∧
  (∀ i j, P.sum.membership i j = max (A.membership i j) (B.membership i j))

theorem fuzzy_matrix_addition_closed_from_evidence {n m : ℕ} {A B : FuzzyMatrix n m} (P : FuzzyMatrixAdditionPackage A B) (E : FuzzyMatrixAdditionEvidence P) :
    FuzzyMatrixAdditionClosed P := by
  exact And.intro E.sumEntrywiseClosed E.sumMembershipwiseClosed

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse