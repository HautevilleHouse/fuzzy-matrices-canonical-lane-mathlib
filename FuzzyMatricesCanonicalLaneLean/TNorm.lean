import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyMatricesCanonicalLaneLean

structure TNorm where
  t : ℝ → ℝ → ℝ
  commutativity : ∀ x y, t x y = t y x
  associativity : ∀ x y z, t (t x y) z = t x (t y z)
  monotonicity : ∀ x y z, y ≤ z → t x y ≤ t x z
  boundary : ∀ x, t x 1 = x

def minTNorm : TNorm :=
  { t := λ x y => min x y,
    commutativity := λ x y => min_comm x y,
    associativity := λ x y z => by
      rw [min_assoc],
    monotonicity := λ x y z h => min_le_min_left x h,
    boundary := λ x => min_eq_left (by norm_num : x ≤ 1)
  }

def productTNorm : TNorm :=
  { t := λ x y => x * y,
    commutativity := mul_comm,
    associativity := mul_assoc,
    monotonicity := λ x y z h => mul_le_mul_of_nonneg_left h (by
      have hx := (by
        have : 0 ≤ x := by
          have := ?_
          sorry
        exact this)
      exact hx),
    boundary := λ x => mul_one x
  }

end FuzzyMatricesCanonicalLaneLean
end HautevilleHouse
