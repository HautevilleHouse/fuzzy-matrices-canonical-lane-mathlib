import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrixDecomposition where
  decompositionType : Type u
  triangularForm : Prop
  orthogonalDecomposition : Prop
  spectralDecomposition : Prop
  decompositionExistence : Prop

structure FuzzyMatrixDecompositionEvidence (D : FuzzyMatrixDecomposition) where
  triangularFormClosed : D.triangularForm
  orthogonalDecompositionClosed : D.orthogonalDecomposition
  spectralDecompositionClosed : D.spectralDecomposition
  decompositionExistenceClosed : D.decompositionExistence

def FuzzyMatrixDecompositionClosed (D : FuzzyMatrixDecomposition) : Prop :=
  D.triangularForm ∧ D.orthogonalDecomposition ∧
  D.spectralDecomposition ∧ D.decompositionExistence

theorem fuzzy_matrix_decomposition_closed_from_evidence
    (D : FuzzyMatrixDecomposition) (E : FuzzyMatrixDecompositionEvidence D) :
    FuzzyMatrixDecompositionClosed D := by
  exact And.intro E.triangularFormClosed
    (And.intro E.orthogonalDecompositionClosed
      (And.intro E.spectralDecompositionClosed E.decompositionExistenceClosed))

end HautevilleHouse
end FuzzyMatricesCanonicalLaneLean