import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure AMPAResponsePotentiationPackage where
  ampaReceptorNumberIncrease : Prop
  singleChannelConductanceIncrease : Prop
  synapticScalingDynamics : Prop
  silentSynapseConversion : Prop

structure AMPAResponsePotentiationEvidence (A : AMPAResponsePotentiationPackage) where
  ampaReceptorNumberIncreaseClosed : A.ampaReceptorNumberIncrease
  singleChannelConductanceIncreaseClosed : A.singleChannelConductanceIncrease
  synapticScalingDynamicsClosed : A.synapticScalingDynamics
  silentSynapseConversionClosed : A.silentSynapseConversion

def AMPAResponsePotentiationClosed (A : AMPAResponsePotentiationPackage) : Prop :=
  A.ampaReceptorNumberIncrease ∧ A.singleChannelConductanceIncrease ∧ A.synapticScalingDynamics ∧ A.silentSynapseConversion

theorem ampa_response_potentiation_closed_from_evidence (A : AMPAResponsePotentiationPackage) (E : AMPAResponsePotentiationEvidence A) : AMPAResponsePotentiationClosed A :=
  And.intro E.ampaReceptorNumberIncreaseClosed (And.intro E.singleChannelConductanceIncreaseClosed (And.intro E.synapticScalingDynamicsClosed E.silentSynapseConversionClosed))

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse