import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  corticalColumnModel : Prop
  populationFiringRates : Prop
  synapticConnectivity : Prop
  recurrentExcitationInhibition : Prop
  oscillationBifurcationAnalysis : Prop
  persistentActivityPatterns : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  corticalColumnModelClosed : N.corticalColumnModel
  populationFiringRatesClosed : N.populationFiringRates
  synapticConnectivityClosed : N.synapticConnectivity
  recurrentExcitationInhibitionClosed : N.recurrentExcitationInhibition
  oscillationBifurcationAnalysisClosed : N.oscillationBifurcationAnalysis
  persistentActivityPatternsClosed : N.persistentActivityPatterns

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.corticalColumnModel ∧ N.populationFiringRates ∧
  N.synapticConnectivity ∧ N.recurrentExcitationInhibition ∧
  N.oscillationBifurcationAnalysis ∧ N.persistentActivityPatterns

theorem neural_field_theory_closed_from_evidence
    (N : NeuralFieldTheoryPackage) (E : NeuralFieldTheoryEvidence N) :
    NeuralFieldTheoryClosed N := by
  exact And.intro E.corticalColumnModelClosed
    (And.intro E.populationFiringRatesClosed
      (And.intro E.synapticConnectivityClosed
        (And.intro E.recurrentExcitationInhibitionClosed
          (And.intro E.oscillationBifurcationAnalysisClosed E.persistentActivityPatternsClosed))))

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse