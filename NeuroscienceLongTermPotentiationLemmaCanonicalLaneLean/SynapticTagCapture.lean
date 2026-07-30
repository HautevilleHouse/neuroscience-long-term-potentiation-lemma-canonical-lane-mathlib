import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure SynapticTagCapturePackage where
  plasticityRelatedProductSynthesis : Prop
  synapticTagSetting : Prop
  captureProcess : Prop
  latePhaseLTPExpression : Prop
  structuralStabilization : Prop

structure SynapticTagCaptureEvidence (S : SynapticTagCapturePackage) where
  plasticityRelatedProductSynthesisClosed : S.plasticityRelatedProductSynthesis
  synapticTagSettingClosed : S.synapticTagSetting
  captureProcessClosed : S.captureProcess
  latePhaseLTPExpressionClosed : S.latePhaseLTPExpression
  structuralStabilizationClosed : S.structuralStabilization

def SynapticTagCaptureClosed (S : SynapticTagCapturePackage) : Prop :=
  S.plasticityRelatedProductSynthesis ∧ S.synapticTagSetting ∧ S.captureProcess ∧ S.latePhaseLTPExpression ∧ S.structuralStabilization

theorem synaptic_tag_capture_closed_from_evidence (S : SynapticTagCapturePackage) (E : SynapticTagCaptureEvidence S) : SynapticTagCaptureClosed S :=
  And.intro E.plasticityRelatedProductSynthesisClosed (And.intro E.synapticTagSettingClosed (And.intro E.captureProcessClosed (And.intro E.latePhaseLTPExpressionClosed E.structuralStabilizationClosed)))

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse