class TravelModel {
  String name;
  String country;
  String top_speed;
  String image;
  String horse_power;
  String zero_to_one_hundred;
  String year;
  String description;
  String price;

  TravelModel({
    required this.name,
    required this.country,
    required this.top_speed,
    required this.image,
    required this.horse_power,
    required this.zero_to_one_hundred,
    required this.year,
    required this.description,
    required this.price,
  });
}

List<TravelModel> travelList = [
  TravelModel(
      name: "Auston Martin Valhalla",
      country: "England",
      top_speed: "350",
      image: "assets/images/1.png",
      horse_power: "998",
      zero_to_one_hundred: "2.5",
      year: "2024",
      description: """Aston Martin Valhalla; A road monster with a wild heart!
Aston Martin Valhalla, the latest product of this British company, is a street monster with a wild heart! Introduced in 2024, this car is equipped with a 3.0-liter V6 hybrid engine that can produce 998 horsepower and 1,000 Nm of torque. This incredible power enables the Valhalla to accelerate from 0 to 100 km/h in 2.5 seconds and reach a top speed of 350 km/h.
Valhalla is also very impressive in terms of design. This car uses a light and aerodynamic carbon fiber body that gives it a beautiful and eye-catching appearance. Not to mention from inside the cabin! The use of unique materials has multiplied the beauty of appearance!
Valhalla uses an 8-speed automatic transmission. The car also uses an active differential suspension and a carbon ceramic brake system that offers unmatched capabilities.
Valhalla weighs only 1,550 kg, making it one of the lightest supercars in the world.
You can also connect your game console with the help of a cable and screen in the car, so that you can play and have fun in the car when you are idle.
What do you think Assassin's Creed Valhalla will give you inside Aston Martin Valhalla?!
""",
      price: "800000"),
  TravelModel(
      name: "Nissan Z",
      country: "Japan",
      top_speed: "250",
      image: "assets/images/2.png",
      horse_power: "400",
      zero_to_one_hundred: "4.1",
      year: "2024",
      description: """Nissan Z 2024: The return of a legend!
The 2024 Nissan Z is an epic return to the sports car scene. This car has captivated everyone with its beautiful design, stunning performance and reasonable price.
This unique car has a combination of classic and modern design that has captivated the audience.
The 2024 Nissan Z is powered by a turbocharged 3.0-liter V6 engine that produces 400 horsepower. This engine produces 68 horsepower and 27 Nm more torque than the 3.7-liter V6 engine of its predecessor.
Nissan Z 2024 comes with 2 types of 6-speed manual or 9-speed automatic transmission. The manual gearbox of this car is of the close-ratio type, which offers accurate and fast gear changes. The automatic transmission of this car is also of ZF type, which has smooth and fast performance.
With its 3.0-liter V6 engine, the 2024 Nissan Z can accelerate from standstill to 100 km/h in 4.1 seconds. This car can also reach a maximum speed of 250 km/h.
Nissan Z 2024 is offered in 3 types Sport, Performance and Nismo. The Sport trim is the base trim level and offers features such as 18-inch tires, LED headlights, a 6-speaker audio system, and an 8-inch infotainment system. The Performance trim offers more features such as 19-inch tires, sports suspension, Brembo brakes, and a Bose audio system. The top-of-the-line Nismo trim offers features such as 20-inch tires, custom Nismo suspension, Brembo brakes, an Akrapovic exhaust system, and Recaro seats.
Do you think this Japanese monster is worth buying?
""",
      price: "45000"),
  TravelModel(
      name: "Hyundai N Vision GT",
      country: "Korea",
      top_speed: "350",
      image: "assets/images/3.png",
      horse_power: "884",
      zero_to_one_hundred: "2.8",
      year: "2025",
      description: """Hyundai N 2025 Vision Gran Turismo; Hydrogen monster
The Hyundai N 2025 Vision Gran Turismo, which will be developed by Hyundai, will work with a hydrogen fuel cell system that will generate incredible power and torque in the car.
This car, which has 884 horsepower, can accelerate from 0 to 100 km/h in 2.8 seconds. It is said that its maximum speed is 350 kilometers per hour.
In addition to power and speed, the Hyundai N 2025 Vision Gran Turismo has a new spaceship-like design style that will be more suited to Formula 1 racing.
The approximate weight of this car is estimated to be around 970 kilograms.
Hyundai company has not made very complete information about the specifications of this space vehicle available to the public. For this reason, it is not possible to comment much about the price of this monster; But the analysis is that due to the strange capabilities and power of this car, this car will probably be available only to multi-billionaires for a long time!
""",
      price: "Unknown!"),
  TravelModel(
      name: "Apple car",
      country: "USA",
      top_speed: "+250",
      image: "assets/images/4.png",
      horse_power: "+400",
      zero_to_one_hundred: "-5",
      year: "2025 ~ 2027",
      description: """Apple Work; The dream of driving without a driver
Maybe when you hear the name of Apple company, your mind goes to iPhone, iPad, Mac and...! But if we say that this technological monster is building a self-driving car, what will be your reaction?!
Apple is building an SUV that has not even chosen a definitive name for it yet! But the evidence suggests that, most likely, this car will be called Apple Car.
According to the leaked news, this car with a modern and new design will have unique features that we will examine below:
The Apple Car is supposed to use 2 electric motors that produce a total of more than 400 horsepower. This car can reach from 0 to 100 km/h in less than 5 seconds and its maximum speed will reach 250 km/h.
Apple Car uses advanced self-driving technology that can drive automatically in various conditions, including heavy traffic and winding roads, with a very low error rate.
The era of fossil fuel is over and Apple will use this issue to electrify its cars. The Apple Car will use a 100 kWh lithium-ion battery that can provide a range of about 400 kilometers. Apple has the ability to charge from 10% to 80% within 30 minutes, and this means technology!
Apple Car will be considered a revolutionary car that can completely change the future of driving! This car, which is likely to be introduced by 2027, will provide users with a new driving experience by combining power, speed, advanced technology and modern design.
Are you ready to connect your iPhone to Apple Car?!
""",
      price: "+120000"),
];
