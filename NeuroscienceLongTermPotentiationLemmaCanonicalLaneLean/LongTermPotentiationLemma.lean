import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure LongTermPotentiationPackage where
  inductionStimulus : Type u
  postsynapticResponse : Type v
  plasticityModel : Type w
  calciumSignaling : Prop
  kinaseCascade : Prop
  synapticStrengthening : Prop
  persistenceDuration : Prop

structure LongTermPotentiationEvidence (L : LongTermPotentiationPackage) where
  calciumSignalingClosed : L.calciumSignaling
  kinaseCascadeClosed : L.kinaseCascade
  synapticStrengtheningClosed : L.synapticStrengthening
  persistenceDurationClosed : L.persistenceDuration

def LongTermPotentiationClosed (L : LongTermPotentiationPackage) : Prop :=
  L.calciumSignaling ∧ L.kinaseCascade ∧
  L.synapticStrengthening ∧ L.persistenceDuration

theorem ltp_closed_from_evidence
    (L : LongTermPotentiationPackage) (E : LongTermPotentiationEvidence L) :
    LongTermPotentiationClosed L := by
  exact And.intro E.calciumSignalingClosed
    (And.intro E.kinaseCascadeClosed
      (And.intro E.synapticStrengtheningClosed E.persistenceDurationClosed))

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse
