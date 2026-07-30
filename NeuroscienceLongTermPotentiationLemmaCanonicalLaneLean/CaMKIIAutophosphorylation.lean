import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure CaMKIIAutophosphorylationPackage where
  calciumCalmodulinBinding : Prop
  autophosphorylationThr286 : Prop
  autonomousActivity : Prop
  ampaReceptorPhosphorylation : Prop

structure CaMKIIAutophosphorylationEvidence (C : CaMKIIAutophosphorylationPackage) where
  calciumCalmodulinBindingClosed : C.calciumCalmodulinBinding
  autophosphorylationThr286Closed : C.autophosphorylationThr286
  autonomousActivityClosed : C.autonomousActivity
  ampaReceptorPhosphorylationClosed : C.ampaReceptorPhosphorylation

def CaMKIIAutophosphorylationClosed (C : CaMKIIAutophosphorylationPackage) : Prop :=
  C.calciumCalmodulinBinding ∧ C.autophosphorylationThr286 ∧ C.autonomousActivity ∧ C.ampaReceptorPhosphorylation

theorem camkii_autophosphorylation_closed_from_evidence (C : CaMKIIAutophosphorylationPackage) (E : CaMKIIAutophosphorylationEvidence C) : CaMKIIAutophosphorylationClosed C :=
  And.intro E.calciumCalmodulinBindingClosed (And.intro E.autophosphorylationThr286Closed (And.intro E.autonomousActivityClosed E.ampaReceptorPhosphorylationClosed))

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse