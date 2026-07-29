import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyAdmittedObject where
  matrixSpace : Type
  fuzzyRelation : matrixSpace → matrixSpace → Prop
  transitiveClosure : Prop
  conclusion : transitiveClosure

structure AdmissibleClass where
  object : FuzzyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FuzzyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse
