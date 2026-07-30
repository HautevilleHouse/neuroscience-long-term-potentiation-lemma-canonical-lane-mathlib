import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure HebbianSynapticDynamicsPackage where
  presynapticActivity : Type
  postsynapticActivity : Type
  synapticEfficacy : Type
  hebbianPlasticityRule : Prop
  spikeTimingDependence : Prop
  calciumConcentrationDynamics : Prop
  structuralPlasticity : Prop

structure HebbianSynapticDynamicsEvidence (H : HebbianSynapticDynamicsPackage) where
  hebbianPlasticityRuleClosed : H.hebbianPlasticityRule
  spikeTimingDependenceClosed : H.spikeTimingDependence
  calciumConcentrationDynamicsClosed : H.calciumConcentrationDynamics
  structuralPlasticityClosed : H.structuralPlasticity

def HebbianSynapticDynamicsClosed (H : HebbianSynapticDynamicsPackage) : Prop :=
  H.hebbianPlasticityRule ∧ H.spikeTimingDependence ∧ H.calciumConcentrationDynamics ∧ H.structuralPlasticity

theorem hebbian_synaptic_dynamics_closed_from_evidence (H : HebbianSynapticDynamicsPackage) (E : HebbianSynapticDynamicsEvidence H) : HebbianSynapticDynamicsClosed H :=
  And.intro E.hebbianPlasticityRuleClosed (And.intro E.spikeTimingDependenceClosed (And.intro E.calciumConcentrationDynamicsClosed E.structuralPlasticityClosed))

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse