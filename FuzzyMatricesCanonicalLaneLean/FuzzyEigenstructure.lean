import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyEigenstructure where
  eigenvector : Type u → Type u
  eigenvalue : Type u → ℝ
  eigenvalueEquation : Prop
  maxMinEigenvalue : Prop
  powerSequenceConvergence : Prop

structure FuzzyEigenstructureEvidence (E : FuzzyEigenstructure) where
  eigenvalueEquationClosed : E.eigenvalueEquation
  maxMinEigenvalueClosed : E.maxMinEigenvalue
  powerSequenceConvergenceClosed : E.powerSequenceConvergence

def FuzzyEigenstructureClosed (E : FuzzyEigenstructure) : Prop :=
  E.eigenvalueEquation ∧ E.maxMinEigenvalue ∧ E.powerSequenceConvergence

theorem fuzzy_eigenstructure_closed_from_evidence
    (E : FuzzyEigenstructure) (Ev : FuzzyEigenstructureEvidence E) :
    FuzzyEigenstructureClosed E := by
  exact And.intro Ev.eigenvalueEquationClosed
    (And.intro Ev.maxMinEigenvalueClosed Ev.powerSequenceConvergenceClosed)

end HautevilleHouse
end FuzzyMatricesCanonicalLaneLean