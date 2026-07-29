import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure ClosureProperties where
  transitivity : Prop
  reflexivity : Prop
  symmetry : Prop
  maxMinClosedUnderTransitivity : Prop
  evidence : transitivity ∧ reflexivity ∧ symmetry

def closurePropertiesClosed (C : ClosureProperties) : Prop :=
  C.evidence

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse