import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure SynapticPlasticityPackage where
  receptorTrafficking : Type u
  kinaseActivation : Type v
  phosphataseActivation : Type w
  structuralPlasticity : Type x
  hebbianInduction : Prop
  receptorInsertion : Prop
  spineEnlargement : Prop
  maintenanceMechanism : Prop

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  hebbianInductionClosed : S.hebbianInduction
  receptorInsertionClosed : S.receptorInsertion
  spineEnlargementClosed : S.spineEnlargement
  maintenanceMechanismClosed : S.maintenanceMechanism

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.hebbianInduction ∧ S.receptorInsertion ∧
  S.spineEnlargement ∧ S.maintenanceMechanism

theorem synaptic_plasticity_closed_from_evidence
    (S : SynapticPlasticityPackage) (E : SynapticPlasticityEvidence S) :
    SynapticPlasticityClosed S := by
  exact And.intro E.hebbianInductionClosed
    (And.intro E.receptorInsertionClosed
      (And.intro E.spineEnlargementClosed E.maintenanceMechanismClosed))

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse
