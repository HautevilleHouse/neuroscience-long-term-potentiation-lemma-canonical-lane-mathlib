import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure SynapseStructure where
  presynapticNeuron : Type
  postsynapticNeuron : Type
  synapseStrength : Nat
  strengthChange : Nat -> Nat

default synapseZero : SynapseStructure := {
  presynapticNeuron := Unit
  postsynapticNeuron := Unit
  synapseStrength := 0
  strengthChange := λ _ => 0
}

structure SpikeTiming where
  presynapticSpike : Nat
  postsynapticSpike : Nat
  deltaT : Nat

define spikeTimingDelta (t : SpikeTiming) : Nat := t.deltaT

structure LTPInductionProtocol where
  synapse : SynapseStructure
  timing : SpikeTiming
  inductionSuccess : Prop
  strengthChangeRecorded : Prop

def ltpProtocolAdmissible (p : LTPInductionProtocol) : Prop :=
  p.inductionSuccess ∧ p.strengthChangeRecorded

end HautevilleHouse.NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse