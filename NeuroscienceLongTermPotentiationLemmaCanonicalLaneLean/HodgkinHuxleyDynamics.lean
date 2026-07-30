import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure HodgkinHuxleyMembraneDynamicsPackage where
  voltageClampData : Prop
  sodiumChannelActivation : Prop
  potassiumChannelActivation : Prop
  inactivationGates : Prop
  conductanceEquations : Prop
  actionPotentialPropagation : Prop

structure HodgkinHuxleyMembraneDynamicsEvidence (H : HodgkinHuxleyMembraneDynamicsPackage) where
  voltageClampDataClosed : H.voltageClampData
  sodiumChannelActivationClosed : H.sodiumChannelActivation
  potassiumChannelActivationClosed : H.potassiumChannelActivation
  inactivationGatesClosed : H.inactivationGates
  conductanceEquationsClosed : H.conductanceEquations
  actionPotentialPropagationClosed : H.actionPotentialPropagation

def HodgkinHuxleyMembraneDynamicsClosed (H : HodgkinHuxleyMembraneDynamicsPackage) : Prop :=
  H.voltageClampData ∧ H.sodiumChannelActivation ∧ H.potassiumChannelActivation ∧
  H.inactivationGates ∧ H.conductanceEquations ∧ H.actionPotentialPropagation

theorem hodgkin_huxley_membrane_dynamics_closed_from_evidence
    (H : HodgkinHuxleyMembraneDynamicsPackage) (E : HodgkinHuxleyMembraneDynamicsEvidence H) :
    HodgkinHuxleyMembraneDynamicsClosed H := by
  exact And.intro E.voltageClampDataClosed
    (And.intro E.sodiumChannelActivationClosed
      (And.intro E.potassiumChannelActivationClosed
        (And.intro E.inactivationGatesClosed
          (And.intro E.conductanceEquationsClosed E.actionPotentialPropagationClosed))))

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse