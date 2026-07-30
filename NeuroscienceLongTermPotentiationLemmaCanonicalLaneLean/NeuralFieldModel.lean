import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure NeuralFieldModelPackage where
  fieldEquation : ℝ × ℝ → ℝ
  synapticKernel : ℝ → ℝ
  firingRateFunction : ℝ → ℝ
  stabilityCondition : Prop
  patternFormation : Prop

structure NeuralFieldModelEvidence (N : NeuralFieldModelPackage) where
  stabilityConditionClosed : N.stabilityCondition
  patternFormationClosed : N.patternFormation

def NeuralFieldModelClosed (N : NeuralFieldModelPackage) : Prop :=
  N.stabilityCondition ∧ N.patternFormation

theorem neural_field_model_closed_from_evidence (N : NeuralFieldModelPackage) (E : NeuralFieldModelEvidence N) :
    NeuralFieldModelClosed N := by
  exact And.intro E.stabilityConditionClosed E.patternFormationClosed

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse