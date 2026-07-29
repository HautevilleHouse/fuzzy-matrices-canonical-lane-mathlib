import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrixMaxMinPackage (A : AdmissibleClass) where
  maxMinClosure : Prop
  associativityHolds : Prop
  identityElementExists : Prop
  monotonicityPreserved : Prop

structure FuzzyMatrixMaxMinEvidence {A : AdmissibleClass}
    (P : FuzzyMatrixMaxMinPackage A) where
  maxMinClosureClosed : P.maxMinClosure
  associativityHoldsClosed : P.associativityHolds
  identityElementExistsClosed : P.identityElementExists
  monotonicityPreservedClosed : P.monotonicityPreserved

def FuzzyMatrixMaxMinClosed {A : AdmissibleClass}
    (P : FuzzyMatrixMaxMinPackage A) : Prop :=
  P.maxMinClosure ∧ P.associativityHolds ∧
  P.identityElementExists ∧ P.monotonicityPreserved

theorem fuzzy_matrix_max_min_closed_from_evidence
    {A : AdmissibleClass} (P : FuzzyMatrixMaxMinPackage A)
    (E : FuzzyMatrixMaxMinEvidence P) : FuzzyMatrixMaxMinClosed P := by
  exact And.intro E.maxMinClosureClosed
    (And.intro E.associativityHoldsClosed
      (And.intro E.identityElementExistsClosed E.monotonicityPreservedClosed))

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse