import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure LTPMechanismsPackage where
  nmdaReceptorActivation : Prop
  calciumInflux : Prop
  kinaseActivation : Prop
  ampaReceptorInsertion : Prop
  synapticStrengthIncrease : Prop

structure LTPMechanismsEvidence (L : LTPMechanismsPackage) where
  nmdaReceptorActivationClosed : L.nmdaReceptorActivation
  calciumInfluxClosed : L.calciumInflux
  kinaseActivationClosed : L.kinaseActivation
  ampaReceptorInsertionClosed : L.ampaReceptorInsertion
  synapticStrengthIncreaseClosed : L.synapticStrengthIncrease

def LTPMechanismsClosed (L : LTPMechanismsPackage) : Prop :=
  L.nmdaReceptorActivation ∧ L.calciumInflux ∧ L.kinaseActivation ∧ L.ampaReceptorInsertion ∧ L.synapticStrengthIncrease

theorem ltp_mechanisms_closed_from_evidence (L : LTPMechanismsPackage) (E : LTPMechanismsEvidence L) :
    LTPMechanismsClosed L := by
  exact And.intro E.nmdaReceptorActivationClosed
    (And.intro E.calciumInfluxClosed
      (And.intro E.kinaseActivationClosed
        (And.intro E.ampaReceptorInsertionClosed E.synapticStrengthIncreaseClosed)))

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse