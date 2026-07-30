import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  connectomeGraph : Type u
  synapticWeightMatrix : Type v
  structuralPlasticity : Prop
  functionalConnectivity : Prop
  smallWorldProperty : Prop
  structuralPlasticityTerm : structuralPlasticity
  functionalConnectivityTerm : functionalConnectivity
  smallWorldPropertyTerm : smallWorldProperty

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  structuralPlasticityClosed : C.structuralPlasticity
  functionalConnectivityClosed : C.functionalConnectivity
  smallWorldPropertyClosed : C.smallWorldProperty

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.structuralPlasticity ∧ C.functionalConnectivity ∧ C.smallWorldProperty

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.structuralPlasticityClosed
    (And.intro E.functionalConnectivityClosed E.smallWorldPropertyClosed)

end NeuroscienceLongTermPotentiationLemmaCanonicalLaneLean
end HautevilleHouse