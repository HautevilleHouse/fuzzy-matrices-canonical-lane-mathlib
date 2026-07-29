import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyRelationExtension where
  maxMinComposition : FuzzyMatrixPackage → FuzzyMatrixPackage → FuzzyMatrixPackage
  compositionAssociative : ∀ A B C, maxMinComposition (maxMinComposition A B) C = maxMinComposition A (maxMinComposition B C)
  identityElement : FuzzyMatrixPackage
  identityComposition : ∀ A, maxMinComposition A identityElement = A ∧ maxMinComposition identityElement A = A

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse