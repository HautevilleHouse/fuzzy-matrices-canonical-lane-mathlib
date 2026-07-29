import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyMatrixAdmittedObject where
  matrixDimension : ℕ
  membershipValueRange : Set ℝ
  transposeInvariant : Prop
  maxMinClosedUnderComposition : Prop
  conclusion : maxMinClosedUnderComposition

def FuzzyMatrixWitnessClosed (O : FuzzyMatrixAdmittedObject) : Prop :=
  O.maxMinClosedUnderComposition

structure AdmissibleClass where
  object : FuzzyMatrixAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FuzzyMatrixWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse