import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyAlgebraicStructure where
  carrier : Type u
  zero : carrier
  one : carrier
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  additionAssociative : ∀ a b c, addition (addition a b) c = addition a (addition b c)
  additionCommutative : ∀ a b, addition a b = addition b a
  additionIdentity : ∀ a, addition a zero = a
  additionInverse : ∀ a, ∃ b, addition a b = zero
  multiplicationAssociative : ∀ a b c, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  multiplicationIdentity : ∀ a, multiplication a one = a ∧ multiplication one a = a
  distributive : ∀ a b c, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)
    ∧ multiplication (addition a b) c = addition (multiplication a c) (multiplication b c)
  tNorm : carrier → carrier → carrier
  tConorm : carrier → carrier → carrier
  tNormAssociative : ∀ a b c, tNorm (tNorm a b) c = tNorm a (tNorm b c)
  tNormCommutative : ∀ a b, tNorm a b = tNorm b a
  tNormMonotone : ∀ a b c, a ≤ b → tNorm a c ≤ tNorm b c
  tConormAssociative : ∀ a b c, tConorm (tConorm a b) c = tConorm a (tConorm b c)
  tConormCommutative : ∀ a b c, tConorm a b = tConorm b a
  tConormMonotone : ∀ a b c, a ≤ b → tConorm a c ≤ tConorm b c

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse