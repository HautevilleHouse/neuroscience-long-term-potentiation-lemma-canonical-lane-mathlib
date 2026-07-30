import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

def ConstrainedLTPClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ltp_endgame (A : AdmissibleClass) : ConstrainedLTPClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse