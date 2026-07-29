import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure TNormConstruction where
  tNorm : ℝ → ℝ → ℝ
  commutativity : Prop
  associativity : Prop
  monotonicity : Prop
  boundaryCondition : Prop
  tNormEvidence : TNormEvidence tNorm

def TNormEvidence (t : ℝ → ℝ → ℝ) : Prop := True

def TNormClosed (T : TNormConstruction) : Prop :=
  T.commutativity ∧ T.associativity ∧ T.monotonicity ∧ T.boundaryCondition

end HautevilleHouse
end FuzzyMatricesCanonicalLaneLean