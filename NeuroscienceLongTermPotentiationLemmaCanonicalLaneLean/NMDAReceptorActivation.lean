import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure NMDAReceptorActivationPackage where
  glutamateBinding : Prop
  magnesiumBlockRelief : Prop
  calciumInflux : Prop
  downstreamSignaling : Prop

structure NMDAReceptorActivationEvidence (N : NMDAReceptorActivationPackage) where
  glutamateBindingClosed : N.glutamateBinding
  magnesiumBlockReliefClosed : N.magnesiumBlockRelief
  calciumInfluxClosed : N.calciumInflux
  downstreamSignalingClosed : N.downstreamSignaling

def NMDAReceptorActivationClosed (N : NMDAReceptorActivationPackage) : Prop :=
  N.glutamateBinding ∧ N.magnesiumBlockRelief ∧ N.calciumInflux ∧ N.downstreamSignaling

theorem nmda_receptor_activation_closed_from_evidence (N : NMDAReceptorActivationPackage) (E : NMDAReceptorActivationEvidence N) : NMDAReceptorActivationClosed N :=
  And.intro E.glutamateBindingClosed (And.intro E.magnesiumBlockReliefClosed (And.intro E.calciumInfluxClosed E.downstreamSignalingClosed))

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse