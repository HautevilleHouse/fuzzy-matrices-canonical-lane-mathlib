import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrixEquation where
  leftSide : FuzzyMatrixPackage
  rightSide : FuzzyMatrixPackage
  variables : List (ℕ × ℕ)

structure FuzzyMatrixEquationSolution (eq : FuzzyMatrixEquation) where
  assignment : (ℕ × ℕ) → FuzzyAlgebraicStructure.carrier
  satisfiesEquation : ∀ (i, j), (∀ (i, j), eq.leftSide.entries (i, j) = eq.rightSide.entries (i, j) after substituting assignment)

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse