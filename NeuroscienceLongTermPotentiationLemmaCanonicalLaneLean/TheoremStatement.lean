import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure LTPAdmittedObject where
  synapseModel : Type
  plasticityRule : Type
  inductionProtocol : Prop
  ltpExpression : Prop
  ltpMaintained : Prop
  conclusion : ltpExpression ∧ ltpMaintained

def LTPWitnessClosed (O : LTPAdmittedObject) : Prop :=
  O.ltpExpression ∧ O.ltpMaintained

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse