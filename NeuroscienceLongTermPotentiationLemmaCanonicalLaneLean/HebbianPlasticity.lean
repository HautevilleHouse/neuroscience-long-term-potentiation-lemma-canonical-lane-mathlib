import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  spikeTimingDependentPlasticity : Prop
  synapticWeightUpdate : Prop
  longTermPotentiationInduction : Prop
  calciumInfluxDynamics : Prop
  nmdaReceptorActivation : Prop
  ampaReceptorTrafficking : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity
  synapticWeightUpdateClosed : H.synapticWeightUpdate
  longTermPotentiationInductionClosed : H.longTermPotentiationInduction
  calciumInfluxDynamicsClosed : H.calciumInfluxDynamics
  nmdaReceptorActivationClosed : H.nmdaReceptorActivation
  ampaReceptorTraffickingClosed : H.ampaReceptorTrafficking

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.spikeTimingDependentPlasticity ∧ H.synapticWeightUpdate ∧
  H.longTermPotentiationInduction ∧ H.calciumInfluxDynamics ∧
  H.nmdaReceptorActivation ∧ H.ampaReceptorTrafficking

theorem hebbian_plasticity_closed_from_evidence
    (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.spikeTimingDependentPlasticityClosed
    (And.intro E.synapticWeightUpdateClosed
      (And.intro E.longTermPotentiationInductionClosed
        (And.intro E.calciumInfluxDynamicsClosed
          (And.intro E.nmdaReceptorActivationClosed E.ampaReceptorTraffickingClosed))))

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse