-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2018 at 11:34 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Action'),
(2, 'Horror'),
(3, 'Fantasy'),
(4, 'Sci-fi'),
(5, 'Drama'),
(6, 'Comedy '),
(7, 'Animation'),
(15, 'Family'),
(17, 'History');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(7, 17, 'jenny', 'jenny@gmail.com', 'its really nice movie,I love batman', 'approved', '2018-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(12) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_tags`, `post_comment_count`, `post_status`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`) VALUES
(14, 'Action,avengers,marvel', 0, 'published', 1, 'Avengers: Infinity War (2018)', 'James ', '2018-04-07', 'avengers.jpg', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.\r\nDirectors: Anthony Russo, Joe Russo\r\nWriters: Christopher Markus (screenplay by), Stephen McFeely (screenplay by) | 9 more credits Â»\r\nStars: Karen Gillan, Elizabeth Olsen, Josh Brolin '),
(17, 'batman,movie,action,dark knight', 0, 'published', 1, 'The Dark Knight (2008)', 'dark', '2018-04-07', 'dark_knight.jpg', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.\r\nDirector: Christopher Nolan\r\nWriters: Jonathan Nolan (screenplay), Christopher Nolan (screenplay) | 3 more credits Â»\r\nStars: Christian Bale, Heath Ledger, Aaron Eckhart'),
(18, 'nun,horrror,2018', 0, 'published', 2, 'The Nun (2018)', 'jenny', '2018-04-07', 'nun.jpg', 'A priest named Father Burke is sent to Rome to investigate the mysterious death of a nun.\r\nDirector: Corin Hardy\r\nWriters: Gary Dauberman (screenplay by), Gary Dauberman (story by) | 1 more credit Â»\r\nStars: Taissa Farmiga, Bonnie Aarons, Charlotte Hope '),
(19, 'it,horror', 0, 'published', 2, 'It (2017)', 'rown', '2018-04-07', 'it.jpg', 'In the summer of 1989, a group of bullied kids band together to destroy a shapeshifting monster, which disguises itself as a clown and preys on the children of Derry, their small Maine town.\r\nDirector: Andy Muschietti\r\nWriters: Chase Palmer (screenplay by), Cary Joji Fukunaga (screenplay by) | 2 more credits Â»\r\nStars: Bill SkarsgÃ¥rd, Jaeden Lieberher, Finn Wolfhard'),
(20, 'horror,scary,ring,the ring', 0, 'draft', 2, 'The Ring (2002)', 'shilla', '2018-04-07', 'the_ring.jpg', ' journalist must investigate a mysterious videotape which seems to cause the death of anyone in a week of viewing it.\r\nDirector: Gore Verbinski\r\nWriters: Ehren Kruger (screenplay), KÃ´ji Suzuki (novel) (as Koji Suzuki)\r\nStars: Naomi Watts, Martin Henderson, Brian Cox '),
(21, 'lord of the rings,fantasy,advanture', 0, 'published', 3, 'The Lord of the Rings', 'ravi', '2018-04-07', 'lor.jpg', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.\r\nDirector: Peter Jackson\r\nWriters: J.R.R. Tolkien (novel), Fran Walsh (screenplay) | 2 more credits Â»\r\nStars: Elijah Wood, Ian McKellen, Orlando Bloom '),
(23, 'ready,player,one,sci-fi,gaming,movie', 0, 'draft', 4, 'Ready Player One (2018)', 'priya', '2018-04-07', 'readypO.jpg', 'Rescued from the outrageous neglect of his aunt and uncle, a young boy with a great destiny proves his worth while attending Hogwarts School of Witchcraft and Wizardry.\r\nDirector: Chris Columbus\r\n'),
(24, 'harry,potter', 0, 'published', 3, 'Harry Potter (2001)', 'rinny', '2018-04-07', 'hp.jpg', 'Rescued from the outrageous neglect of his aunt and uncle, a young boy with a great destiny proves his worth while attending Hogwarts School of Witchcraft and Wizardry.\r\nDirector: Chris Columbus\r\nWriters: J.K. Rowling (novel), Steve Kloves (screenplay)\r\nStars: Daniel Radcliffe, Rupert Grint, Richard Harris'),
(25, 'jurrasic,park,dinosaures', 0, 'published', 4, 'Jurassic Park (1993)', 'jammy', '2018-04-07', 'jp.jpg', 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.\r\nDirector: Steven Spielberg\r\nWriters: Michael Crichton (novel), Michael Crichton (screenplay) | 1 more credit Â»\r\nStars: Sam Neill, Laura Dern, Jeff Goldblum'),
(26, 'matrix,sci-fi', 0, 'draft', 4, 'The Matrix (1999)', 'jaya', '2018-04-07', 'matrix.jpg', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.\r\nDirectors: Lana Wachowski (as The Wachowski Brothers), Lilly Wachowski (as The Wachowski Brothers)\r\nWriters: Lilly Wachowski (as The Wachowski Brothers), Lana Wachowski (as The Wachowski Brothers)\r\nStars: Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss '),
(27, 'titanic,james,cameron,drama', 0, 'published', 5, 'Titanic (1997)', 'honner', '2018-04-07', 'titanic.jpg', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.\r\nDirector: James Cameron\r\nWriter: James Cameron\r\nStars: Leonardo DiCaprio, Kate Winslet, Billy Zane'),
(28, 'wonder,drama,book', 0, 'published', 5, 'Wonder (2017)', 'ron wisly', '2018-04-07', 'wonder.jpg', 'Based on the New York Times bestseller, WONDER tells the incredibly inspiring and heartwarming story of August Pullman, a boy with facial differences who enters 5th grade, attending a mainstream elementary school for the first time.\r\nDirector: Stephen Chbosky\r\nWriters: Stephen Chbosky (screenplay by), Steve Conrad (screenplay by) (as Steven Conrad) | 2 more credits Â»\r\nStars: Jacob Tremblay, Owen Wilson, Izabela Vidovic '),
(29, 'lady,bird,women,drama', 0, 'published', 5, 'Lady Bird (2017)', 'kiya', '2018-04-07', 'ladybird.jpg', 'In 2002, an artistically inclined seventeen-year-old girl comes of age in Sacramento, California.\r\nDirector: Greta Gerwig\r\nWriter: Greta Gerwig\r\nStars: Saoirse Ronan, Laurie Metcalf, Tracy Letts '),
(30, 'ghost,busters,comedy,funny', 0, 'draft', 6, 'Ghostbusters (1984)', 'ghost', '2018-04-07', 'ghost.jpg', 'Three former parapsychology professors set up shop as a unique ghost removal service.\r\nDirector: Ivan Reitman\r\nWriters: Dan Aykroyd, Harold Ramis\r\nStars: Bill Murray, Dan Aykroyd, Sigourney Weaver'),
(31, 'vacation, comedy, entertainment', 0, 'published', 6, 'Vacation (2015)', 'kiya', '2018-04-07', 'vacation.jpg', 'Rusty Griswold takes his own family on a road trip to \"Walley World\" in order to spice things up with his wife and reconnect with his sons.\r\nDirectors: John Francis Daley, Jonathan Goldstein (as Jonathan M. Goldstein)\r\nWriters: Jonathan Goldstein (as Jonathan M. Goldstein), John Francis Daley | 1 more credit Â»\r\nStars: Ed Helms, Christina Applegate, Skyler Gisondo'),
(32, 'hangover,comedy,funny', 0, 'published', 6, 'The Hangover (2009)', 'jammy', '2018-04-07', 'hangover.jpg', 'Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.\r\nDirector: Todd Phillips\r\nWriters: Jon Lucas, Scott Moore\r\nStars: Zach Galifianakis, Bradley Cooper, Justin Bartha '),
(33, 'comedy,family,incredibles,superhero', 0, 'draft', 7, 'The Incredibles (2004)', 'harry', '2018-04-07', 'incredibles.jpg', 'A family of undercover superheroes, while trying to live the quiet suburban life, are forced into action to save the world.\r\nDirector: Brad Bird\r\nWriter: Brad Bird\r\nStars: Craig T. Nelson, Samuel L. Jackson, Holly Hunter'),
(34, 'smurfs', 0, 'published', 7, 'The Smurfs (2011)', 'mussy', '2018-04-07', 'smurfs.jpg', 'When the evil wizard Gargamel chases the tiny blue Smurfs out of their village, they tumble from their magical world into New York City.\r\nDirector: Raja Gosnell\r\nWriters: J. David Stem (screenplay by), David N. Weiss (screenplay by) | 5 more credits Â»\r\nStars: Hank Azaria, Katy Perry, Jonathan Winters '),
(35, 'home,alone,family', 0, 'draft', 15, ' Home Alone (1990)', 'jeremy', '2018-04-07', 'homeAlone.jpg', 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.\r\nDirector: Chris Columbus\r\nWriter: John Hughes\r\nStars: Macaulay Culkin, Joe Pesci, Daniel Stern'),
(36, 'hugo,family', 0, 'published', 15, 'Hugo (2011)', 'Brian', '2018-04-07', 'hugo.jpg', 'In Paris in 1931, an orphan named Hugo Cabret who lives in the walls of a train station is wrapped up in a mystery involving his late father and an automaton.\r\nDirector: Martin Scorsese\r\nWriters: John Logan (screenplay), Brian Selznick (book)\r\nStars: Asa Butterfield, ChloÃ« Grace Moretz, Christopher Lee'),
(37, 'miss,doubtfire,robin,family', 0, 'draft', 15, 'Mrs. Doubtfire (1993)', 'willy', '2018-04-07', 'mrs.jpg', 'After a bitter divorce, an actor disguises himself as a female housekeeper to spend time with his children held in custody by his former wife.\r\nDirector: Chris Columbus\r\nWriters: Anne Fine (novel), Randi Mayem Singer (screenplay)\r\nStars: Robin Williams, Sally Field, Pierce Brosnan'),
(38, 'ben,hur,history', 0, 'draft', 17, 'Ben-Hur (2016)', 'benny', '2018-04-07', 'ben.jpg', 'Judah Ben-Hur, a prince falsely accused of treason by his adopted brother, an officer in the Roman army, returns to his homeland after years at sea to seek revenge, but finds redemption.\r\nDirector: Timur Bekmambetov\r\nWriters: Lew Wallace (based on the novel by), Keith R. Clarke (screenplay) \r\nStars: Jack Huston, Toby Kebbell, Rodrigo Santoro'),
(39, 'apollo,13,space,history', 0, 'draft', 17, 'Apollo 13 (1995)', 'ravi chaudhari', '2018-04-07', 'apollo.jpg', 'NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy.\r\nDirector: Ron Howard\r\nWriters: Jim Lovell (book), Jeffrey Kluger (book)\r\nStars: Tom Hanks, Bill Paxton, Kevin Bacon'),
(40, 'dun,history', 0, 'draft', 17, 'Dunkirk (2017)', 'kiyara rowana', '2018-04-07', 'dun.jpg', 'Allied soldiers from Belgium, the British Empire and France are surrounded by the German Army, and evacuated during a fierce battle in World War II.\r\nDirector: Christopher Nolan\r\nWriter: Christopher Nolan\r\nStars: Fionn Whitehead, Barry Keoghan, Mark Rylance'),
(41, 'action,snitch,dow,johnson', 0, 'published', 1, 'Snitch (2013)', 'adman', '2018-04-07', 'snitch.jpg', 'A father goes undercover for the DEA in order to free his son, who was imprisoned after being set up in a drug deal.\r\nDirector: Ric Roman Waugh\r\nWriters: Justin Haythe, Ric Roman Waugh\r\nStars: Dwayne Johnson, Susan Sarandon, Jon Bernthal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_firstname` varchar(250) NOT NULL,
  `user_lastname` varchar(250) NOT NULL,
  `user_email` varchar(230) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(250) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystring22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'keval', '123', 'keval', 'parikh', 'parikh.keval@ymail.com', '', 'admin', ''),
(2, 'wiliam8452', '12345', 'william', 'Parikh', 'wiliam5@gmail.com', '', 'user', ''),
(4, 'rikenmart3433', '12356', 'riken james conner string ', 'martins', 'rikenmart3433@ymail.com', '', 'user', ''),
(5, 'abhi', '123', 'abhinav', 'parikh', 'abhinav123@gmail.com', '', 'admin', ''),
(7, 'wteteiu@gmail', 'kjhfjhjk', 'juan', 'kiyoski', 'asdm@gmail.com', '', 'user', '$2y$10$iusesomecrazystring22'),
(8, 'janmay3344', 'janmay', 'janmay', 'patel', 'janmay123@gmail.com', '', 'user', '$2y$10$iusesomecrazystring22'),
(9, 'janmay3344', 'janmay', 'janmay', 'patel', 'janmay123@gmail.com', '', 'user', '$2y$10$iusesomecrazystring22'),
(10, 'kartik123', '123', 'kartik', 'tamboli', 'kartik21021994@gmail.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(12, 'jay566', '12345', 'jayp', 'patel', 'jaypatel5536@gmail.com', '', 'user', '$2y$10$iusesomecrazystring22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
