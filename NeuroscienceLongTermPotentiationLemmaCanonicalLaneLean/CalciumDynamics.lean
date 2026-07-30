import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure NMDAReceptorActivation where
  glutamateBinding : Prop
  depolarization : Prop
  magnesiumBlockRemoved : Prop
  calciumInflux : Prop

def nmdaActivationClosed (n : NMDAReceptorActivation) : Prop :=
  n.glutamateBinding ∧ n.depolarization ∧ n.magnesiumBlockRemoved ∧ n.calciumInflux

structure CalciumSignal where
  intracellularCa : Nat
  caMKinaseActivation : Prop
  calcineurinActivation : Prop
  signalDuration : Nat

def calciumSignalClosed (c : CalciumSignal) (n : NMDAReceptorActivation) : Prop :=
  nmdaActivationClosed n ∧ intracellularCa > 0

theorem nmda_activation_yields_calcium_signal (n : NMDAReceptorActivation) (c : CalciumSignal) : Prop :=
  nmdaActivationClosed n → calciumSignalClosed c n

end HautevilleHouse.NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse