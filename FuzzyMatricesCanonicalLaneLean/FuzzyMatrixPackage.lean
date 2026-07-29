import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrixPackage where
  m : ℕ
  n : ℕ
  entries : (ℕ × ℕ) → FuzzyAlgebraicStructure.carrier

structure FuzzyMatrixEvidence (F : FuzzyMatrixPackage) where
  entriesDefined : ∀ i j, (i < F.m ∧ j < F.n) → F.entries (i, j) = F.entries (i, j)

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse