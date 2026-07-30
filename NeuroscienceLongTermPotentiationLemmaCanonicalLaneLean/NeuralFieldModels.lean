import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure NeuralFieldPackage where
  fieldVariable : Type u
  spatialDomain : Type v
  timeDomain : Type w
  connectivityKernel : Type x
  firingRateFunction : Type y
  integroDifferentialEquation : Prop
  kernelSymmetry : Prop
  rateMonotonicity : Prop

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  integroDifferentialEquationClosed : N.integroDifferentialEquation
  kernelSymmetryClosed : N.kernelSymmetry
  rateMonotonicityClosed : N.rateMonotonicity

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.integroDifferentialEquation ∧ N.kernelSymmetry ∧ N.rateMonotonicity

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage)
    (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.integroDifferentialEquationClosed
    (And.intro E.kernelSymmetryClosed E.rateMonotonicityClosed)

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse
