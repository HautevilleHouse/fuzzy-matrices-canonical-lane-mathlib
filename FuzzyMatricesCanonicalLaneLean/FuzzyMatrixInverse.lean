import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrixInverse where
  inverseOperation : Type u → Type u
  inverseProperty : Prop
  uniqueInverse : Prop
  inverseOfProduct : Prop

structure FuzzyMatrixInverseEvidence (I : FuzzyMatrixInverse) where
  inversePropertyClosed : I.inverseProperty
  uniqueInverseClosed : I.uniqueInverse
  inverseOfProductClosed : I.inverseOfProduct

def FuzzyMatrixInverseClosed (I : FuzzyMatrixInverse) : Prop :=
  I.inverseProperty ∧ I.uniqueInverse ∧ I.inverseOfProduct

theorem fuzzy_matrix_inverse_closed_from_evidence
    (I : FuzzyMatrixInverse) (E : FuzzyMatrixInverseEvidence I) :
    FuzzyMatrixInverseClosed I := by
  exact And.intro E.inversePropertyClosed
    (And.intro E.uniqueInverseClosed E.inverseOfProductClosed)

end HautevilleHouse
end FuzzyMatricesCanonicalLaneLean