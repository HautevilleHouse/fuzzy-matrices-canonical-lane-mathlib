import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyTransitiveClosure where
  transitiveClosure : FuzzyMatrixPackage → FuzzyMatrixPackage
  closureIncreasing : ∀ A, ∀ i j, A.entries (i, j) ≤ transitiveClosure A.entries (i, j)
  closureTransitive : ∀ A, maxMinComposition (transitiveClosure A) (transitiveClosure A) = transitiveClosure A
  closureMinimal : ∀ A B, (∀ i j, A.entries (i, j) ≤ B.entries (i, j)) ∧ (maxMinComposition B B = B) → (∀ i j, transitiveClosure A.entries (i, j) ≤ B.entries (i, j))

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse