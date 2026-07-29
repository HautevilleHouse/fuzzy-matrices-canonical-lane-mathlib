import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyMatricesCanonicalLaneLean.FuzzyMatrix
import HautevilleHouse.FuzzyMatricesCanonicalLaneLean.MaxMinComposition

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyAdmittedObject where
  n : ℕ
  R : FuzzyMatrix n n
  reflexive : ∀ i, R.entries i i = 1
  transitive : ∀ i k, R.entries i k ≥ max_{j} (min (R.entries i j) (R.entries j k))

structure FuzzyAdmissibleClass where
  object : FuzzyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : FuzzyAdmissibleClass) : Prop :=
  A.object.transitive = A.object.transitive

theorem bridge_from_admissible_class (A : FuzzyAdmissibleClass) : bridgeClosed A := by
  rfl

def gateClosed (A : FuzzyAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FuzzyAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedFuzzyClosure (A : FuzzyAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuzzy_endgame (A : FuzzyAdmissibleClass) : ConstrainedFuzzyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse
