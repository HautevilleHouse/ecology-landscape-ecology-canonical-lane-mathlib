import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyLandscapeEcologyCanonicalLaneLean

structure LandscapePatch where
  carrier : Type
  connectivity : Prop
  area : Prop
  shape : Prop

structure HabitatNetwork where
  patches : List LandscapePatch
  adjacency : Prop
  corridorQuality : Prop
  fragmentation : Prop

structure PatchDynamics where
  colonizationRate : Prop
  extinctionRate : Prop
  turnover : Prop
  connectivityResponse : Prop

structure EcosystemService where
  pollination : Prop
  waterRegulation : Prop
  carbonSequestration : Prop
  nutrientCycling : Prop

end EcologyLandscapeEcologyCanonicalLaneLean
end HautevilleHouse