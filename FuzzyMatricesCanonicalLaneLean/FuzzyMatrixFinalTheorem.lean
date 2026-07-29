import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

def ConstrainedFuzzyMatrixClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuzzy_matrix_endgame (A : AdmissibleClass) :
    ConstrainedFuzzyMatrixClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse