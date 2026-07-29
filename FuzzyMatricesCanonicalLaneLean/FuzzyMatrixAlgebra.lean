import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrixAlgebra where
  carrier : Type u
  fuzzyAdd : carrier → carrier → carrier
  fuzzyMul : carrier → carrier → carrier
  fuzzyAddAssociative : Prop
  fuzzyMulAssociative : Prop
  fuzzyAddCommutative : Prop
  fuzzyMulDistributive : Prop
  fuzzyZero : carrier
  fuzzyOne : carrier
  fuzzyZeroAdd : ∀ a : carrier, fuzzyAdd fuzzyZero a = a
  fuzzyOneMul : ∀ a : carrier, fuzzyMul fuzzyOne a = a
  fuzzyMulOne : ∀ a : carrier, fuzzyMul a fuzzyOne = a

structure FuzzyMatrixAlgebraEvidence (A : FuzzyMatrixAlgebra) where
  fuzzyAddAssociativeClosed : A.fuzzyAddAssociative
  fuzzyMulAssociativeClosed : A.fuzzyMulAssociative
  fuzzyAddCommutativeClosed : A.fuzzyAddCommutative
  fuzzyMulDistributiveClosed : A.fuzzyMulDistributive
  fuzzyZeroAddClosed : A.fuzzyZeroAdd
  fuzzyOneMulClosed : A.fuzzyOneMul
  fuzzyMulOneClosed : A.fuzzyMulOne

def FuzzyMatrixAlgebraClosed (A : FuzzyMatrixAlgebra) : Prop :=
  A.fuzzyAddAssociative ∧ A.fuzzyMulAssociative ∧ A.fuzzyAddCommutative ∧
  A.fuzzyMulDistributive ∧ A.fuzzyZeroAdd ∧ A.fuzzyOneMul ∧ A.fuzzyMulOne

theorem fuzzy_matrix_algebra_closed_from_evidence
    (A : FuzzyMatrixAlgebra) (E : FuzzyMatrixAlgebraEvidence A) :
    FuzzyMatrixAlgebraClosed A := by
  exact And.intro E.fuzzyAddAssociativeClosed
    (And.intro E.fuzzyMulAssociativeClosed
      (And.intro E.fuzzyAddCommutativeClosed
        (And.intro E.fuzzyMulDistributiveClosed
          (And.intro E.fuzzyZeroAddClosed
            (And.intro E.fuzzyOneMulClosed E.fuzzyMulOneClosed)))))

end HautevilleHouse
end FuzzyMatricesCanonicalLaneLean