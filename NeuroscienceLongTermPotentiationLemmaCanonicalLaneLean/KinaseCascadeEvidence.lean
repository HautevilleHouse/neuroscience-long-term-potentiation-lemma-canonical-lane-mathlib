import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean.CalciumDynamics

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure CaMKIIEvidence where
  autophosphorylation : Prop
  translocationToSynapse : Prop
  ampaReceptorPhosphorylation : Prop
  conductanceIncrease : Prop

def camkiiClosure (c : CaMKIIEvidence) : Prop :=
  c.autophosphorylation ∧ c.translocationToSynapse ∧ c.ampaReceptorPhosphorylation ∧ c.conductanceIncrease

structure PKCEvidence where
  activationByDAG : Prop
  ampaReceptorInsertion : Prop
  persistenceSignal : Prop

def pkcClosure (p : PKCEvidence) : Prop :=
  p.activationByDAG ∧ p.ampaReceptorInsertion ∧ p.persistenceSignal

def kinaseCascadeClosed (c : CaMKIIEvidence) (p : PKCEvidence) : Prop :=
  camkiiClosure c ∧ pkcClosure p

theorem kinase_cascade_from_calcium (n : NMDAReceptorActivation) (k : CaMKIIEvidence) (p : PKCEvidence) : Prop :=
  nmdaActivationClosed n → kinaseCascadeClosed k p

end HautevilleHouse.NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse