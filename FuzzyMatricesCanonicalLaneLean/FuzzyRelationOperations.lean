import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure FuzzyRelationOperations where
  supMinComposition : Type u → Type u → Type u
  infMaxComposition : Type u → Type u → Type u
  compositionAssociative : Prop
  identityMatrix : Type u
  identityComposed : Prop

structure FuzzyRelationOperationsEvidence (F : FuzzyRelationOperations) where
  compositionAssociativeClosed : F.compositionAssociative
  identityComposedClosed : F.identityComposed

def FuzzyRelationOperationsClosed (F : FuzzyRelationOperations) : Prop :=
  F.compositionAssociative ∧ F.identityComposed

theorem fuzzy_relation_operations_closed_from_evidence
    (F : FuzzyRelationOperations) (E : FuzzyRelationOperationsEvidence F) :
    FuzzyRelationOperationsClosed F := by
  exact And.intro E.compositionAssociativeClosed E.identityComposedClosed

end HautevilleHouse
end FuzzyMatricesCanonicalLaneLean