class Movie {
  final String title;
  final String genre;
  final String imgPoster;
  final String overview;
  final double rating;
  final int year;
  final int minute;
  final List<Cast> casts;

  Movie({
    required this.title,
    required this.genre,
    required this.imgPoster,
    required this.overview,
    required this.rating,
    required this.year,
    required this.minute,
    required this.casts,
  });
}

class Cast {
  final String name;
  final String image;

  Cast({required this.name, required this.image});
}

var popularMovie = [
  Movie(
    title: "Shawshank Redemption",
    genre: "Drama",
    imgPoster: "images/esaret.jpeg",
    minute: 142,
    rating: 9.3,
    year: 1994,
    overview:
        "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
    casts: [
      Cast(name: "Morgan Freeman", image: "images/morgan.jpeg"),
      Cast(name: "Bob Gunton", image: "images/gunton.jpg"),
      Cast(name: "Tim Robbin", image: "images/robbin.jpg"),
    ],
  ),
  Movie(
    title: "The Godfather",
    genre: "Crime, Drama",
    imgPoster: "images/godfather.jpg",
    minute: 175,
    rating: 9.2,
    year: 1972,
    overview:
        " The Godfather follows Vito Corleone Don of the Corleone family as he passes the mantel to his son Michael",
    casts: [
      Cast(name: "Al Pacino", image: "images/alpacino.jpg"),
      Cast(name: "Marlon Brando", image: "images/marlon.jpg"),
      Cast(name: "Robert De Nitro", image: "images/nitro.jpg"),
    ],
  ),
  Movie(
    title: "Mulan",
    genre: "Action",
    imgPoster: "images/mulan-poster.jpg",
    minute: 180,
    rating: 7.6,
    year: 2020,
    overview:
        "To save her ailing father from serving in the Imperial Army, a fearless young woman disguises herself as a man to battle northern invaders in China.",
    casts: [
      Cast(name: "Donnie Yen", image: "images/donnie-yen.jpg"),
      Cast(name: "Gong Li", image: "images/gong-li.jpg"),
      Cast(name: "Jet Li", image: "images/jet-li.jpg"),
      Cast(name: "Liu Yifei", image: "images/liu-yifei.jpg"),
      Cast(name: "Tzi Ma", image: "images/tzi-ma.jpg"),
      Cast(name: "Yoson An", image: "images/yoson-an.jpg"),
    ],
  ),
  Movie(
    title: "Iron Man",
    genre: "Action",
    imgPoster: "images/iron-man-poster.jpg",
    minute: 180,
    rating: 7.6,
    year: 2019,
    overview:
        "A billionaire industrialist and genius inventor, Tony Stark (Robert Downey Jr.), is conducting weapons tests overseas, but terrorists kidnap him to force him to build a devastating weapon. Instead, he builds an armored suit and upends his captors. Returning to America, Stark refines the suit and uses it to combat crime and terrorism.",
    casts: [
      //Cast(name: "Tim Robbin", image: "assets/cast/tim.jpeg"),
    ],
  ),
];

List<Movie> nowShowing = [
  Movie(
    title: "Alaadin",
    genre: "Action",
    imgPoster: "images/aladin-poster.jpg",
    minute: 180,
    rating: 7.3,
    year: 2018,
    overview:
        "Aladdin is a lovable street urchin who meets Princess Jasmine, the beautiful daughter of the sultan of Agrabah. While visiting her exotic palace, Aladdin stumbles upon a magic oil lamp that unleashes a powerful, wisecracking, larger-than-life genie. As Aladdin and the genie start to become friends, they must soon embark on a dangerous mission to stop the evil sorcerer, Jafar, from overthrowing young Jasmine's kingdom.",
    casts: [],
  ),
  Movie(
    title: "Arrival",
    genre: "Action",
    imgPoster: "images/arrival-poster.jpg",
    minute: 180,
    rating: 7.5,
    year: 2018,
    overview:
        "Linguistics professor Louise Banks (Amy Adams) leads an elite team of investigators when gigantic spaceships touch down in 12 locations around the world. As nations teeter on the verge of global war, Banks and her crew must race against time to find a way to communicate with the extraterrestrial visitors. Hoping to unravel the mystery, she takes a chance that could threaten her life and quite possibly all of mankind.",
    casts: [],
  ),
  Movie(
    title: "Assasins",
    genre: "Action",
    imgPoster: "images/assasins-poster.jpg",
    minute: 180,
    rating: 7.3,
    year: 2018,
    overview:
        "Assassin Robert Rath (Sylvester Stallone) arrives at a funeral to kill a prominent mobster, only to witness rival hired gun Miguel Bain (Antonio Banderas) complete the job for him -- with grisly results. Horrified by the murder of innocent bystanders, Rath decides to take one last job and then return to civilian life. But finding his way out of the world of contract killing grows ever more dangerous as Rath falls for his target, Electra (Julianne Moore), and becomes a marked man himself.",
    casts: [],
  ),
  Movie(
    title: "Blood Shot",
    genre: "Action",
    imgPoster: "images/blood-shot-poster.jpg",
    minute: 180,
    rating: 7.3,
    year: 2018,
    overview:
        "A misguided cop (Brennan Elliott) tries to destroy a vampire (Michael Bailey Smith) who works as a government assassin and is trying to thwart a terrorist attack on Los Angeles.",
    casts: [],
  ),
];

var continueWatching = [
  Movie(
    title: "1917",
    genre: "Action",
    imgPoster: "images/wonder-woman-poster.jpg",
    minute: 119,
    rating: 8.3,
    year: 2019,
    overview:
        "April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.",
    casts: [
      Cast(name: "Donnie Yen", image: "images/donnie-yen.jpg"),
      Cast(name: "Gong Li", image: "images/gong-li.jpg"),
      Cast(name: "Jet Li", image: "images/jet-li.jpg"),
      Cast(name: "Liu Yifei", image: "images/liu-yifei.jpg"),
      Cast(name: "Tzi Ma", image: "images/tzi-ma.jpg"),
      Cast(name: "Yoson An", image: "images/yoson-an.jpg"),
    ],
  ),
  Movie(
    title: "Avengers: Endgame",
    genre: "Action",
    imgPoster: "images/wonder-woman-poster.jpg",
    minute: 181,
    rating: 8.4,
    year: 2019,
    overview:
        "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.",
    casts: [],
  ),
  Movie(
    title: "Room",
    genre: "Drama",
    imgPoster: "images/room.jpg",
    minute: 180,
    rating: 7.3,
    year: 2015,
    overview:
        "Held captive for 7 years in an enclosed space, a woman and her young son finally gain their freedom, allowing the boy to experience the outside world for the first time.",
    casts: [],
  ),
  Movie(
    title: "Dune: Part One",
    genre: "Action",
    imgPoster: "images/dune.png",
    minute: 155,
    rating: 8.2,
    year: 2021,
    overview:
        "Feature adaptation of Frank Herbert's science fiction novel, about the son of a noble family entrusted with the protection of the most valuable asset and most vital element in the galaxy.",
    casts: [],
  ),
];
