import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : ℝ → ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ
  ionCurrents : ℝ → ℝ × ℝ × ℝ
  differentialEquations : Prop
  hhModelValid : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  differentialEquationsClosed : H.differentialEquations
  hhModelValidClosed : H.hhModelValid

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.differentialEquations ∧ H.hhModelValid

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.differentialEquationsClosed E.hhModelValidClosed

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse