/*
enum PlaneType{
terrestrial,gas,ice
}

enumPlanet{
  mercury(planetType:PlanetType.terrestrial,moons:0,hasRings:false),
  venus(planetType:PlanetType.terrestrial,moons:0,hasRings:false),
  //...
  uranus(planetType:PlanetType.ice,moons:27,hasRings:false),
  neptune(planetType:PlanetType.ice,moons:14,hasRIngs:true);
  ///A constant generating constructor
  const Planet(
    {required this.planetType,required this.moons,required this.hasRings});
    ///All instance variables are final
    final PlanetType planetType;
    final int moons;
    final bool hasRings;
    ///Enhanced enums support getters and other methods
    bool get isGiant=>
    planetType==PlanetType.gas||planetType ==PlanetType.ice;
}

final your Planet=Planet.earth;
if(!yourPLanet.isGiant){
  print('Your planet is not a "giant planet".');
}
*/