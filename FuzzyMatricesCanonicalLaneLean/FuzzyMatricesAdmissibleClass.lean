import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyAdmittedObject where
  matrixCarrier : Type u
  fuzzyEntry : matrixCarrier → ℝ → Prop
  dimension : ℕ
  conclusion : True

def fuzzyWitnessClosed (O : FuzzyAdmittedObject) : Prop :=
  O.conclusion

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse