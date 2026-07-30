import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure LandscapeChangePackage (A : AdmissibleClass) where
  landUseChange : Prop
  climateDrivers : Prop
  timeSeries : Prop
  trajectoryAnalysis : Prop

structure LandscapeChangeEvidence {A : AdmissibleClass} (L : LandscapeChangePackage A) where
  landUseChangeClosed : L.landUseChange
  climateDriversClosed : L.climateDrivers
  timeSeriesClosed : L.timeSeries
  trajectoryAnalysisClosed : L.trajectoryAnalysis

def LandscapeChangeClosed {A : AdmissibleClass} (L : LandscapeChangePackage A) : Prop :=
  L.landUseChange ∧ L.climateDrivers ∧ L.timeSeries ∧ L.trajectoryAnalysis

theorem landscape_change_closed_from_evidence
    {A : AdmissibleClass} (L : LandscapeChangePackage A)
    (Ev : LandscapeChangeEvidence L) : LandscapeChangeClosed L := by
  exact And.intro Ev.landUseChangeClosed
    (And.intro Ev.climateDriversClosed
      (And.intro Ev.timeSeriesClosed Ev.trajectoryAnalysisClosed))

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse