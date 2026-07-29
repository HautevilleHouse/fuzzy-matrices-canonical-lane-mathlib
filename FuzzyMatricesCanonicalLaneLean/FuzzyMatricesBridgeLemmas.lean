import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  fuzzyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse