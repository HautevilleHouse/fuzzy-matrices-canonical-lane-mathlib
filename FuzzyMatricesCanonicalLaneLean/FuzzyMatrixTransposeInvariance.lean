import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrixTransposePackage (A : AdmissibleClass) where
  transposePreservesMembership : Prop
  transposeInvolutive : Prop
  transposeDistributesOverComposition : Prop
  transposeFixedPointsFormSubalgebra : Prop

structure FuzzyMatrixTransposeEvidence {A : AdmissibleClass}
    (T : FuzzyMatrixTransposePackage A) where
  transposePreservesMembershipClosed : T.transposePreservesMembership
  transposeInvolutiveClosed : T.transposeInvolutive
  transposeDistributesOverCompositionClosed : T.transposeDistributesOverComposition
  transposeFixedPointsFormSubalgebraClosed : T.transposeFixedPointsFormSubalgebra

def FuzzyMatrixTransposeClosed {A : AdmissibleClass}
    (T : FuzzyMatrixTransposePackage A) : Prop :=
  T.transposePreservesMembership ∧ T.transposeInvolutive ∧
  T.transposeDistributesOverComposition ∧ T.transposeFixedPointsFormSubalgebra

theorem fuzzy_matrix_transpose_closed_from_evidence
    {A : AdmissibleClass} (T : FuzzyMatrixTransposePackage A)
    (E : FuzzyMatrixTransposeEvidence T) : FuzzyMatrixTransposeClosed T := by
  exact And.intro E.transposePreservesMembershipClosed
    (And.intro E.transposeInvolutiveClosed
      (And.intro E.transposeDistributesOverCompositionClosed E.transposeFixedPointsFormSubalgebraClosed))

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse