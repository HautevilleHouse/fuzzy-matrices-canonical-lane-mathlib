import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrixDecompositionPackage (A : AdmissibleClass) where
  decompositionIntoRankOne : Prop
  uniquenessOfFactors : Prop
  approximationProperty : Prop
  reconstructionFromFactors : Prop

structure FuzzyMatrixDecompositionEvidence {A : AdmissibleClass}
    (D : FuzzyMatrixDecompositionPackage A) where
  decompositionIntoRankOneClosed : D.decompositionIntoRankOne
  uniquenessOfFactorsClosed : D.uniquenessOfFactors
  approximationPropertyClosed : D.approximationProperty
  reconstructionFromFactorsClosed : D.reconstructionFromFactors

def FuzzyMatrixDecompositionClosed {A : AdmissibleClass}
    (D : FuzzyMatrixDecompositionPackage A) : Prop :=
  D.decompositionIntoRankOne ∧ D.uniquenessOfFactors ∧
  D.approximationProperty ∧ D.reconstructionFromFactors

theorem fuzzy_matrix_decomposition_closed_from_evidence
    {A : AdmissibleClass} (D : FuzzyMatrixDecompositionPackage A)
    (E : FuzzyMatrixDecompositionEvidence D) : FuzzyMatrixDecompositionClosed D := by
  exact And.intro E.decompositionIntoRankOneClosed
    (And.intro E.uniquenessOfFactorsClosed
      (And.intro E.approximationPropertyClosed E.reconstructionFromFactorsClosed))

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse