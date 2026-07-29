import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyAdmittedObject where
  matrixSpace : Type
  fuzzyRelation : matrixSpace → matrixSpace → Prop
  transitiveClosure : Prop
  conclusion : transitiveClosure

def FuzzyWitnessClosed (O : FuzzyAdmittedObject) : Prop :=
  O.transitiveClosure

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse
