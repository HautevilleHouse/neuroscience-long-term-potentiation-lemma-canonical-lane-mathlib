import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure AMPAReceptorTrafficking where
  receptorPhosphorylation : Prop
  exocytosis_to_membrane : Prop
  endocytosis_suppressed : Prop
  surface_receptor_increase : Prop

def ampaTraffickingClosed (a : AMPAReceptorTrafficking) : Prop :=
  a.receptorPhosphorylation ∧ a.exocytosis_to_membrane ∧ a.endocytosis_suppressed ∧ a.surface_receptor_increase

structure LTPExpressionEvidence where
  trafficking : AMPAReceptorTrafficking
  postsynapticResponseIncrease : Prop
  spineGrowth : Prop
  responseIncreaseClosed : postsynapticResponseIncrease
  spineGrowthClosed : spineGrowth

def ltpExpressionClosed (e : LTPExpressionEvidence) : Prop :=
  ampaTraffickingClosed e.trafficking ∧ e.postsynapticResponseIncrease ∧ e.spineGrowth

theorem expression_from_trafficking (a : AMPAReceptorTrafficking) (e : LTPExpressionEvidence) : Prop :=
  ampaTraffickingClosed a → ltpExpressionClosed e

end HautevilleHouse.NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse