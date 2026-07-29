import canonicalLaneMathlib.AdmissibleClass
import FuzzyMatricesBridgeLemmas
import FuzzyMatricesGateLemmas

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

def ConstrainedFuzzyMatricesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuzzy_matrices_endgame (A : AdmissibleClass) : ConstrainedFuzzyMatricesClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse