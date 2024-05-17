-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 07:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inews`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_categories` varchar(255) NOT NULL,
  `news_date` date NOT NULL,
  `news_description` longtext NOT NULL,
  `news_image` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_categories`, `news_date`, `news_description`, `news_image`, `owner`) VALUES
(2, 'Mona lisa', 'art', '2024-04-21', 'This article is about the painting. For other uses, see Mona Lisa (disambiguation). Mona Lisa Italian: Gioconda, Monna Lisa The Mona Lisa digitally retouched to reduce the effects of aging; the unretouched image is slightly darker.[1][2][3] Artist	Leonardo da Vinci Year	c. 1503–1506, perhaps continuing until c. 1517 Medium	Oil on poplar panel Subject	Lisa del Giocondo Dimensions	77 cm × 53 cm (30 in × 21 in) Location	Louvre, Paris The Mona Lisa (/ˌmoʊnə ˈliːsə/ MOH-nə LEE-sə; Italian: Gioconda [dʒoˈkonda] or Monna Lisa [ˈmɔnna ˈliːza]; French: Joconde [ʒɔkɔ̃d]) is a half-length portrait painting by Italian artist Leonardo da Vinci. Considered an archetypal masterpiece of the Italian Renaissance,[4][5] it has been described as \"the best known, the most visited, the most written about, the most sung about, [and] the most parodied work of art in the world\".[6] The painting\'s novel qualities include the subject\'s enigmatic expression,[7] monumentality of the composition, the subtle modelling of forms, and the atmospheric illusionism.[8] The painting has been traditionally considered to depict the Italian noblewoman Lisa del Giocondo.[9] It is painted in oil on a white Lombardy poplar panel. Leonardo never gave the painting to the Giocondo family.[10] It was believed to have been painted between 1503 and 1506; however, Leonardo may have continued working on it as late as 1517. King Francis I of France acquired the Mona Lisa after Leonardo\'s death in 1519, and it is now the property of the French Republic. It has normally been on display at the Louvre in Paris since 1797.[11] The painting\'s global fame and popularity partly stem from its 1911 theft by Vincenzo Peruggia, who attributed his actions to Italian patriotism—a belief it should belong to Italy. The theft and subsequent recovery in 1914 generated unprecedented publicity for an art theft, and led to the publication of many cultural depictions such as the 1915 opera Mona Lisa, two early 1930s films (The Theft of the Mona Lisa and Arsène Lupin) and the song \"Mona Lisa\" recorded by Nat King Cole—one of the most successful songs of the 1950s.[12] The Mona Lisa is one of the most valuable paintings in the world. It holds the Guinness World Record for the highest known painting insurance valuation in history at US$100 million in 1962,[13] equivalent to $1 billion as of 2023.[14] Title and subject A margin note by Agostino Vespucci (visible at right) discovered in a book at Heidelberg University. Dated 1503, it states that Leonardo was working on a portrait of Lisa del Giocondo.[15][16] The title of the painting, which is known in English as Mona Lisa, is based on the presumption that it depicts Lisa del Giocondo, although her likeness is uncertain. Renaissance art historian Giorgio Vasari wrote that \"Leonardo undertook to paint, for Francesco del Giocondo, the portrait of Mona Lisa, his wife.\"[17][18][19] Monna in Italian is a polite form of address originating as ma donna—similar to Ma\'am, Madam, or my lady in English. This became madonna, and its contraction monna. The title of the painting, though traditionally spelled Mona in English, is spelled in Italian as Monna Lisa (mona being a vulgarity in Italian), but this is rare in English.[20][21] Lisa del Giocondo was a member of the Gherardini family of Florence and Tuscany, and the wife of wealthy Florentine silk merchant Francesco del Giocondo.[22] The painting is thought to have been commissioned for their new home, and to celebrate the birth of their second son, Andrea.[23] The Italian name for the painting, La Gioconda, means \'jocund\' (\'happy\' or \'jovial\') or, literally, \'the jocund one\', a pun on the feminine form of Lisa\'s married name, Giocondo.[22][24] In French, the title La Joconde has the same meaning. Vasari\'s account of the Mona Lisa comes from his biography of Leonardo published in 1550, 31 years after the artist\'s death. It has long been the best-known source of information on the provenance of the work and identity of the sitter. Leonardo\'s assistant Salaì, at his death in 1524, owned a portrait which in his personal papers was named la Gioconda, a painting bequeathed to him by Leonardo.[citation needed] That Leonardo painted such a work, and its date, were confirmed in 2005 when a scholar at Heidelberg University discovered a marginal note in a 1477 printing of a volume by ancient Roman philosopher Cicero. Dated October 1503, the note was written by Leonardo\'s contemporary Agostino Vespucci. This note likens Leonardo to renowned Greek painter Apelles, who is mentioned in the text, and states that Leonardo was at that time working on a painting of Lisa del Giocondo.[25] In response to the announcement of the discovery of this document, Vincent Delieuvin, the Louvre representative, stated \"Leonardo da Vinci was painting, in 1503, the portrait of a Florentine lady by the name of Lisa del Giocondo. About this we are now certain. Unfortunately, we cannot be absolutely certain that this portrait of Lisa del Giocondo is the painting of the Louvre.\"[26] The catalogue raisonné Leonardo da Vinci (2019) confirms that the painting probably depicts Lisa del Giocondo, with Isabella d\'Este being the only plausible alternative.[27] Scholars have developed several alternative views, arguing that Lisa del Giocondo was the subject of a different portrait, and identifying at least four other paintings referred to by Vasari as the Mona Lisa.[28] Several other people have been proposed as the subject of the painting,[29] including Isabella of Aragon,[30] Cecilia Gallerani,[31] Costanza d\'Avalos, Duchess of Francavilla,[29] Pacifica Brandano/Brandino, Isabella Gualanda, Caterina Sforza, Bianca Giovanna Sforza, Salaì, and even Leonardo himself.[32][33][34] Psychoanalyst Sigmund Freud theorized that Leonardo imparted an approving smile from his mother, Caterina, onto the Mona Lisa and other works.[35][36]', '1715455690048_eric-terrade-0WQOCx1g8hw-unsplash.jpg', 'serge'),
(5, ' watch john wick 4', 'entertainment', '2022-12-30', 'Neil Patrick Harris is an American actor, singer, writer, producer, and television host. Primarily known for his comedic television roles and dramatic and musical stage roles, he has received multple . !\r\nAs of my last update, there isn\'t a specific plot available for \"John Wick 4.\" However, based on the trajectory of the previous films, it\'s likely to continue the story of John Wick, the skilled assassin played by Keanu Reeves, as he navigates through the complex world of assassins and mercenaries.\r\n\r\nGiven the events of \"John Wick: Chapter 3 – Parabellum,\" where John is declared excommunicado and a global bounty is placed on his head, \"John Wick 4\" could explore his quest for survival while seeking revenge against those who betrayed him and potentially delve deeper into the origins of the mysterious organization known as the High Table.\r\n\r\nJohn Wick: Chapter 4 is a 2023 American neo-noir action thriller film directed and co-produced by Chad Stahelski and written by Shay Hatten and Michael Finch. The sequel to John Wick: Chapter 3 – Parabellum (2019) and the fourth installment in the John Wick franchise, the film stars Keanu Reeves as the title character, alongside Donnie Yen, Bill Skarsgård, Laurence Fishburne, Hiroyuki Sanada, Shamier Anderson, Lance Reddick, Rina Sawayama, Scott Adkins, Clancy Brown, and Ian McShane. In the film, John Wick sets out to get revenge on the High Table and those who left him for dead.\r\n\r\nDevelopment of the fourth John Wick film, formally announced by Lionsgate in May 2019, was confirmed before the release of its predecessor. It is the first film in the franchise that was not written by franchise creator Derek Kolstad, with Hatten hired in May 2020, followed by Finch in March 2021. Principal photography took place from June to October 2021, and filming locations included France, Germany, New York City, and Japan.\r\n\r\nThe original release date of May 21, 2021 was delayed due to the COVID-19 pandemic.[5] John Wick: Chapter 4 premiered at the Odeon Luxe Leicester Square in London on March 6, 2023, and was released in the United States on March 24. The film received acclaim from critics, with praise for its action sequences, cinematography, choreography, visual style, and performances, and has grossed $440.1 million worldwide, becoming the highest-grossing film in the franchise, as well as the ninth-highest-grossing film of the year domestically in the United States.\r\n\r\nA spin-off, John Wick Presents: Ballerina, is set for release on June 6, 2025, while a fifth film is in development.\r\n\r\nPlot\r\nIn New York City, John Wick prepares to exact vengeance against the High Table while hiding underground with the Bowery King. He travels to Morocco and kills the Elder, the \"one who sits above the Table\". In response, High Table member Marquis Vincent Bisset de Gramont summons New York Continental Hotel manager Winston and his concierge Charon, where he explains that the High Table has given him unlimited resources to kill John and chastises Winston for previously failing to do so. As punishment, the Marquis strips Winston of his managerial duties, declares him \"excommunicado\", destroys the New York Continental and executes Charon. The Marquis then enlists Caine – a blind, retired High Table assassin – to kill his old friend John, threatening to murder Caine\'s daughter.\r\n\r\nJohn takes refuge at the Osaka Continental, run by his friend Shimazu Koji. The Marquis\' second-in-command Chidi, backed by High Table assassins and Caine, arrives to investigate the hotel. Koji\'s daughter Akira, the hotel\'s concierge, evacuates the hotel just before the High Table \"deconsecrates\" it, igniting a melee. John fights through waves of armored assassins, leading to a showdown against Caine. A bounty hunter named Mr. Nobody interrupts their fight and allows John to escape after determining the current bounty for killing John to be insufficient. A wounded Koji repeatedly attacks Caine on John\'s behalf, until Caine reluctantly kills Koji, but spares Akira.\r\n\r\nJohn returns to New York and meets with a vengeful Winston at Charon\'s gravesite. Winston suggests that John invoke an old High Table tradition to challenge the Marquis to a duel. Winning would free John of all obligations to the High Table, but he can only request a duel on behalf of a crime family. John travels to the Berlin headquarters of the Ruska Roma crime syndicate, with whom he had severed ties, to request readmission. His adoptive sister Katia stipulates that for readmission, John must kill Killa Harkan, a High Table member who was paid by the Marquis to murder her father. Killa sets up an ambush at his nightclub, but with the aid of Caine and Mr. Nobody, John manages to kill him and regain his status. Winston relays John\'s challenge to the Marquis, acting as John\'s \'second\' and requests that, should John win, his excommunicado be revoked and the New York Continental be rebuilt, fully funded by the High Table; should John lose, however, Winston would also die as the challenger\'s \'second\'.\r\n\r\nIn Paris, John and the Marquis decide on the duel\'s parameters – dueling pistols at sunrise the following day at Sacré-Cœur – in a meeting moderated by the Harbinger, the Table\'s emissary. The Marquis nominates a reluctant Caine to take his place, while the Harbinger warns that both John and Winston will be executed should either fail to appear on time. The Bowery King arrives in Paris to give John a pistol (9mm Pit Viper) and a new ballistic suit. The Marquis intends to prevent John from arriving at the duel in time by placing a $26 million bounty on him. John fights off hordes of assassins on his way to Sacré-Cœur, including Mr. Nobody, who negotiates a bounty increase to $40 million. During their confrontation, John prevents Chidi from killing Mr. Nobody\'s dog, causing Mr. Nobody to abandon his pursuit of John.\r\n\r\nAfter Caine and Mr. Nobody assist John in fighting off several assassins – including Chidi, whom Mr. Nobody kills – on the Rue Foyatier, they reach the summit just in time for the duel. John and Caine wound each other through two rounds of dueling, and the third round comes to a halt when Caine severely wounds John. Demanding the right to administer the coup de grâce, the Marquis eagerly swaps places with Caine. Winston chides the Marquis for his arrogance, revealing that John has not yet fired his third bullet. John then promptly executes the Marquis with a headshot, ending the duel. The Harbinger grants Caine and John their freedom from the High Table and Winston\'s reinstatement of Hotel Manager of the New York Continental, which will be rebuilt with the High Table\'s funds. John reflects upon his life and marriage before apparently succumbing to his injuries. Sometime later, back in New York, Winston and the Bowery King bid farewell to John at his grave, located next to that of his wife Helen.', '1715262613758_josss.jpg', 'serge'),
(11, 'this is how arsenal lost', 'sport', '2023-12-13', 'Arsenal\'s loss can be dissected from various angles, including tactical errors, player performance, and psychological factors. Let\'s delve into each aspect.\r\n\r\nTactically, Arsenal might have faced challenges in adapting to their opponent\'s strategy. Whether it was a high pressing game or a defensive approach, failing to adjust accordingly could have left them vulnerable. Additionally, the team\'s formation and player positioning might not have been optimized for the match, leading to gaps in defense or lack of creativity in attack.\r\n\r\nPlayer performance is another crucial factor. Individual errors, such as mistimed tackles, poor passes, or missed opportunities, can significantly impact the outcome of a game. Injuries or suspensions to key players might have also weakened Arsenal\'s lineup, affecting their overall performance on the field.\r\n\r\nPsychological factors cannot be overlooked. Confidence plays a vital role in football, and if Arsenal entered the match with doubts or pressure, it could have affected their decision-making and performance. Furthermore, the pressure from fans, media, or the importance of the game itself could have added to the psychological burden.\r\n\r\nExternal factors, such as weather conditions or refereeing decisions, might have influenced the outcome as well. Adverse weather, like heavy rain or strong winds, can disrupt gameplay and favor certain playing styles over others. Similarly, controversial refereeing decisions, such as penalty calls or red cards, can sway the momentum of the game in unexpected ways.\r\n\r\nOpponent strength is another consideration. Sometimes, Arsenal might face a team that simply outplays them or capitalizes on their weaknesses effectively. The quality of the opposition, their form leading up to the match, and their motivation to win can all contribute to Arsenal\'s loss.\r\n\r\nIn summary, Arsenal\'s loss could stem from a combination of tactical errors, player performance issues, psychological factors, external influences, and the strength of the opponent. Identifying these factors and addressing them in future matches is crucial for Arsenal to bounce back and achieve better results\r\n\r\nbased in Holloway, North London. Arsenal compete in the Premier League, the top flight of English football. In domestic football, Arsenal has won 13 league titles (including one unbeaten title), a record 14 FA Cups, two League Cups, 17 FA Community Shields and a Football League Centenary Trophy. In European football, they have one European Cup Winners\' Cup and one Inter-Cities Fairs Cup. In terms of trophies won, it is the third-most successful club in English football.[2]\r\n\r\nArsenal was the first club from southern England to join the Football League in 1893, and it reached the First Division in 1904. Relegated only once, in 1913, it continues the longest streak in the top division,[3] and has won the second-most top-flight matches in English football history.[4] In the 1930s, Arsenal won five League Championships and two FA Cups, and another FA Cup and two Championships after the war. In 1970–71, it won its first League and FA Cup Double. Between 1989 and 2005, they won five League titles and five FA Cups, including two more Doubles. They completed the 20th century with the highest average league position.[5] Between 1998 and 2017, Arsenal qualified for the UEFA Champions League for nineteen consecutive seasons.[6] The streak ended after 38-game season in 2017 when Arsenal finished in fifth place, one point away from the fourth spot occupied by Liverpool.[6]\r\n\r\nIn 1886, munitions workers at the Royal Arsenal in Woolwich founded the club as Dial Square. In 1913, the club crossed the city to Arsenal Stadium in Highbury, becoming close neighbours of Tottenham Hotspur, and creating the North London derby. Herbert Chapman won the club its first silverware, and his legacy enabled a trophy-laden period in the 1930s. He helped introduce the WM formation, floodlights, and shirt numbers;[7] he also added the white sleeves and brighter red to the club\'s jersey.[8] Arsène Wenger is the club\'s longest-serving manager and has won the most trophies. He won a record seven FA Cups, and his title-winning team set an English record for the longest top-flight unbeaten league run at 49 games between 2003 and 2004, receiving the nickname The Invincibles.\r\n\r\nIn 2006, the club moved to the nearby Emirates Stadium. With an annual revenue of £367.1m in the 2021–22 season,[9] Arsenal was estimated to be worth US$2.26 billion by Forbes, making it the world\'s tenth-most valuable football club,[10] while it is one of the most followed on social media.[11] The motto of the club is Victoria Concordia Crescit, Latin for \"Victory Through Harmony\".', '1714631182309_peakpx (1).jpg', 'serge'),
(13, 'enviromnent', 'art', '2024-05-04', 'In the perspective of the history of art,[10] artistic works have existed for almost as long as humankind: from early prehistoric art to contemporary art; however, some theorists think that the typical concept of \"artistic works\" does not fit well outside modern Western societies.[11] One early sense of the definition of art is closely related to the older Latin meaning, which roughly translates to \"skill\" or \"craft\", as associated with words such as \"artisan\". English words derived from this meaning include artifact, artificial, artifice, medical arts, and military arts. However, there are many other colloquial uses of the word, all with some relation to its etymology.\r\n\r\n\r\n20th-century bottle, Twa peoples, Rwanda. Artistic works may serve practical functions, in addition to their decorative value.\r\nOver time, philosophers like Plato, Aristotle, Socrates and Immanuel Kant, among others, questioned the meaning of art.[12] Several dialogues in Plato tackle questions about art: Socrates says that poetry is inspired by the muses, and is not rational. He speaks approvingly of this, and other forms of divine madness (drunkenness, eroticism, and dreaming) in the Phaedrus (265a–c), and yet in the Republic wants to outlaw Homer\'s great poetic art, and laughter as well. In Ion, Socrates gives no hint of the disapproval of Homer that he expresses in the Republic. The dialogue Ion suggests that Homer\'s Iliad functioned in the ancient Greek world as the Bible does today in the modern Christian world: as divinely inspired literary art that can provide moral guidance, if only it can be properly interpreted.[13]\r\n\r\nWith regards to the literary art and the musical arts, Aristotle considered epic poetry, tragedy, comedy, Dithyrambic poetry and music to be mimetic or imitative art, each varying in imitation by medium, object, and manner.[14] For example, music imitates with the media of rhythm and harmony, whereas dance imitates with rhythm alone, and poetry with language. The forms also differ in their object of imitation. Comedy, for instance, is a dramatic imitation of men worse than average; whereas tragedy imitates men slightly better than average. Lastly, the forms differ in their manner of imitation—through narrative or character, through change or no change, and through drama or no drama.[15] Aristotle believed that imitation is natural to mankind and constitutes one of mankind\'s advantages over animals.[16]\r\n\r\nThe more recent and specific sense of the word art as an abbreviation for creative art or fine art emerged in the early 17th century.[17] Fine art refers to a skill used to express the artist\'s creativity, or to engage the audience\'s aesthetic sensibilities, or to draw the audience towards consideration of more refined or finer works of art.\r\n\r\nWithin this latter sense, the word art may refer to several things: (i) a study of a creative skill, (ii) a process of using the creative skill, (iii) a product of the creative skill, or (iv) the audience\'s experience with the creative skill. The creative arts (art as discipline) are a collection of disciplines which produce artworks (art as objects) that are compelled by a personal drive (art as activity) and convey a message, mood, or symbolism for the perceiver to interpret (art as experience). Art is something that stimulates an individual\'s thoughts, emotions, beliefs, or ideas through the senses. Works of art can be explicitly made for this purpose or interpreted on the basis of images or objects. For some scholars, such as Kant, the sciences and the arts could be distinguished by taking science as representing the domain of knowledge and the arts as representing the domain of the freedom of artistic expression.[18]\r\n\r\n\r\nBack of a Renaissance oval basin or dish, in the Metropolitan Museum of Art\r\nOften, if the skill is being used in a common or practical way, people will consider it a craft instead of art. Likewise, if the skill is being used in a commercial or industrial way, it may be considered commercial art instead of fine art. On the other hand, crafts and design are sometimes considered applied art. Some art followers have argued that the difference between fine art and applied art has more to do with value judgments made about the art than any clear definitional difference.[19] However, even fine art often has goals beyond pure creativity and self-expression. The purpose of works of art may be to communicate ideas, such as in politically, spiritually, or philosophically motivated art; to create a sense of beauty (see aesthetics); to explore the nature of perception; for pleasure; or to generate strong emotions. The purpose may also be seemingly nonexistent.\r\n\r\nThe nature of art has been described by philosopher Richard Wollheim as \"one of the most elusive of the traditional problems of human culture\".[20] Art has been defined as a vehicle for the expression or communication of emotions and ideas, a means for exploring and appreciating formal elements for their own sake, and as mimesis or representation. Art as mimesis has deep roots in the philosophy of Aristotle.[21] Leo Tolstoy identified art as a use of indirect means to communicate from one person to another.[21] Benedetto Croce and R. G. Collingwood advanced the idealist view that art expresses emotions, and that the work of art therefore essentially exists in the mind of the creator.[22][23] The theory of art as form has its roots in the philosophy of Kant, and was developed in the early 20th century by Roger Fry and Clive Bell. More recently, thinkers influenced by Martin Heidegger have interpreted art as the means by which a community develops for itself a medium for self-expression and interpretation.[24] George Dickie has offered an institutional theory of art that defines a work of art as any artifact upon which a qualified person or persons acting on behalf of the social institution commonly referred to as \"the art world\" has conferred \"the status of candidate for appreciation\".[25] Larry Shiner has described fine art as \"not an essence or a fate but something we have made. Art as we have generally understood it is a European invention barely two hundred years old.\"[26]\r\n\r\nArt may be characterized in terms of mimesis (its representation of reality), narrative (storytelling), expression, communication of emotion, or other qualities. During the Romantic period, art came to be seen as \"a special faculty of the human mind to be classified with religion and science\".[27]', '1715262599757_pexels-andrÃ©-cook-131723.jpg', 'serge'),
(17, 'sun rise', 'entertainment', '2024-05-03', 'lthough the Sun appears to \"rise\" from the horizon, it is actually the Earth\'s motion that causes the Sun to appear. The illusion of a moving Sun results from Earth observers being in a rotating reference frame; this apparent motion caused many cultures to have mythologies and religions built around the geocentric model, which prevailed until astronomer Nicolaus Copernicus formulated his heliocentric model in the 16th century.[2]\r\n\r\nArchitect Buckminster Fuller proposed the terms \"sunsight\" and \"sunclipse\" to better represent the heliocentric model, though the terms have not entered into common language.[3][4]\r\n\r\nAstronomically, sunrise occurs for only an instant: the moment at which the upper limb of the Sun appears tangent to the horizon.[1] However, the term sunrise commonly refers to periods of time both before and after this point:\r\n\r\nTwilight, the period in the morning during which the sky is brightening, but the Sun is not yet visible. The beginning of morning twilight is called astronomical dawn.\r\nThe period after the Sun rises during which striking colors and atmospheric effects are still seen.[5] Civil twilight being the brightest, while astronomical twilight being the darkest.\r\nMeasurement\r\nAngle with respect to horizon\r\n\r\nThis diagram of the Sun at sunrise (or sunset) shows the effects of atmospheric refraction.\r\nThe stage of sunrise known as false sunrise actually occurs before the Sun truly reaches the horizon because Earth\'s atmosphere refracts the Sun\'s image. At the horizon, the average amount of refraction is 34 arcminutes, though this amount varies based on atmospheric conditions.[1]\r\n\r\nAlso, unlike most other solar measurements, sunrise occurs when the Sun\'s upper limb, rather than its center, appears to cross the horizon. The apparent radius of the Sun at the horizon is 16 arcminutes.[1]\r\n\r\nThese two angles combine to define sunrise to occur when the Sun\'s center is 50 arcminutes below the horizon, or 90.83° from the zenith.[1]\r\n\r\nTime of day\r\nSee also: Daytime length variations with latitude and seasons\r\n\r\nTime of sunrise in 2008 for Libreville, Gabon. Near the equator, the variation of the time of sunrise is mainly governed by the variation of the equation of time. See here for the sunrise chart of a different location.\r\nThe timing of sunrise varies throughout the year and is also affected by the viewer\'s latitude and longitude, altitude, and time zone. These changes are driven by the axial tilt of Earth, daily rotation of the Earth, the planet\'s movement in its annual elliptical orbit around the Sun, and the Earth and Moon\'s paired revolutions around each other. The analemma can be used to make approximate predictions of the time of sunrise.\r\n\r\nIn late winter and spring, sunrise as seen from temperate latitudes occurs earlier each day, reaching its earliest time near the summer solstice; although the exact date varies by latitude. After this point, the time of sunrise gets later each day, reaching its latest sometime around the winter solstice. The offset between the dates of the solstice and the earliest or latest sunrise time is caused by the eccentricity of Earth\'s orbit and the tilt of its axis, and is described by the analemma, which can be used to predict the dates.\r\n\r\nVariations in atmospheric refraction can alter the time of sunrise by changing its apparent position. Near the poles, the time-of-day variation is exaggerated, since the Sun crosses the horizon at a very shallow angle and thus rises more slowly.[1]\r\n\r\nAccounting for atmospheric refraction and measuring from the leading edge slightly increases the average duration of day relative to night. The sunrise equation, however, which is used to derive the time of sunrise and sunset, uses the Sun\'s physical center for calculation, neglecting atmospheric refraction and the non-zero angle subtended by the solar disc.\r\n\r\nLocation on the horizon\r\nSee also: Sun path and Solar azimuth angle\r\nDuration: 43 seconds.0:43\r\nTimelapse video of twilight and sunrise in Gjøvik, Norway in February 2021\r\nNeglecting the effects of refraction and the Sun\'s non-zero size, whenever sunrise occurs, in temperate regions it is always in the northeast quadrant from the March equinox to the September equinox and in the southeast quadrant from the September equinox to the March equinox.[6] Sunrises occur approximately due east on the March and September equinoxes for all viewers on Earth.[7] Exact calculations of the azimuths of sunrise on other dates are complex, but they can be estimated with reasonable accuracy by using the analemma.\r\n\r\nThe figure on the right is calculated using the solar geometry routine in Ref.[8] as follows:\r\n\r\nFor a given latitude and a given date, calculate the declination of the Sun using \r\n0\r\n∘{\\displaystyle 0^{\\circ }} longitude and solar noon time as inputs to the routine;\r\nCalculate the sunrise hour angle using the sunrise equation;\r\nCalculate the sunrise time, which is the solar noon time minus the sunrise hour angle in degree divided by 15;\r\nUse the sunrise time as input to the solar geometry routine to get the solar azimuth angle at sunrise.\r\nHemispheric symmetry\r\nAn interesting feature in the figure on the right is apparent hemispheric symmetry in regions where daily sunrise and sunset actually occur.\r\n\r\nThis symmetry becomes clear if the hemispheric relation in to the sunrise equation is applied to the x- and y-components of the solar vector presented in Ref.[8]\r\n\r\nAppearance\r\nColors\r\nSee also: Sunset § Colors\r\nFurther information: Atmospheric optics\r\n\r\nSunrise in Lisbon seen from an airplane. Note refraction of colors by both the atmosphere and clouds.\r\n\r\nSunrise in Marengo and Apollo Bay, Victoria, Australia\r\nAir molecules and airborne particles scatter white sunlight as it passes through the Earth\'s atmosphere. This is done by a combination of Rayleigh scattering and Mie scattering.[9]\r\n\r\nAs a ray of white sunlight travels through the atmosphere to an observer, some of the colors are scattered out of the beam by air molecules and airborne particles, changing the final color of the beam the viewer sees. Because the shorter wavelength components, such as blue and green, scatter more strongly, these colors are preferentially removed from the beam.[9]\r\n\r\nAt sunrise and sunset, when the path through the atmosphere is longer, the blue and green components are removed almost completely, leaving the longer-wavelength orange and red hues seen at those times. The remaining reddened sunlight can then be scattered by cloud droplets and other relatively large particles to light up the horizon red and orange.[10] The removal of the shorter wavelengths of light is due to Rayleigh scattering by air molecules and particles much smaller than the wavelength of visible light (less than 50 nm in diameter).[11][12] The scattering by cloud droplets and other particles with diameters comparable to or larger than the sunlight\'s wavelengths (more than 600 nm) is due to Mie scattering and is not strongly wavelength-dependent. Mie scattering is responsible for the light scattered by clouds, and also for the daytime halo of white light around the Sun (forward scattering of white light).[13][14][15]\r\n\r\nSunset colors are typically more brilliant than sunrise colors, because the evening air contains more particles than morning air.[9][10][12][15] Ash from volcanic eruptions, trapped within the troposphere, tends to mute sunset and sunrise colors, while volcanic ejecta that is instead lofted into the stratosphere (as thin clouds of tiny sulfuric acid droplets), can yield beautiful post-sunset colors called afterglows and pre-sunrise glows. A number of eruptions, including those of Mount Pinatubo in 1991 and Krakatoa in 1883, have produced sufficiently high stratospheric sulfuric acid clouds to yield remarkable sunset afterglows (and pre-sunrise glows) around the world. The high altitude clouds serve to reflect strongly reddened sunlight still striking the stratosphere after sunset, down to the surface.\r\n\r\nOptical illusions and other phenomena\r\n\r\nThis is a false sunrise, a very particular kind of parhelion.\r\nAtmospheric refraction causes the Sun to be seen while it is still below the horizon.\r\nLight from the lower edge of the Sun\'s disk is refracted more than light from the upper edge. This reduces the apparent height of the Sun when it appears just above the horizon. The width is not affected, so the Sun appears wider than it is high.\r\nThe Sun appears larger at sunrise than it does while higher in the sky, in a manner similar to the Moon illusion.\r\nThe Sun appears to rise above the horizon and circle the Earth, but it is actually the Earth that is rotating, with the Sun remaining fixed. This effect results from the fact that an observer on Earth is in a rotating reference frame.\r\nOccasionally a false sunrise occurs, demonstrating a very particular kind of parhelion belonging to the optical phenomenon family of halos.\r\nSometimes just before sunrise or after sunset, a green flash can be seen. This is an optical phenomenon in which a green spot is visible above the Sun, usually for no more than a second or two.[16]', '1715456450860_ruben-marques-DUxJSaANcWs-unsplash.jpg', 'honore'),
(19, 'the sky in the air', 'art', '2024-05-12', 'originating from Japan. Outside Japan and in English, anime refers specifically to animation produced in Japan.[1] However, in Japan and Japanese, anime (a term derived from a shortening of the English word animation) describes all animated works, regardless of style or origin. Many works of animation with a similar style to Japanese animation are also produced outside Japan. Video games sometimes also feature themes and art styles that are sometimes labelled as anime. The earliest commercial Japanese animation dates to 1917. A characteristic art style emerged in the 1960s with the works of cartoonist Osamu Tezuka and spread in following decades, developing a large domestic audience. Anime is distributed theatrically, through television broadcasts, directly to home media, and over the Internet. In addition to original works, anime are often adaptations of Japanese comics (manga), light novels, or video games. It is classified into numerous genres targeting various broad and niche audiences.[2] Anime is a diverse medium with distinctive production methods that have adapted in response to emergent technologies. It combines graphic art, characterization, cinematography, and other forms of imaginative and individualistic techniques.[3] Compared to Western animation, anime production generally focuses less on movement, and more on the detail of settings and use of \"camera effects\", such as panning, zooming, and angle shots.[3] Diverse art styles are used, and character proportions and features can be quite varied, with a common characteristic feature being large and emotive eyes.[4] The anime industry consists of over 430 production companies, including major studios such as Studio Ghibli, Kyoto Animation, Sunrise, Bones, Ufotable, MAPPA, Wit Studio, CoMix Wave Films, Production I.G, and Toei Animation. Since the 1980s, the medium has also seen widespread international success with the rise of foreign dubbed, subtitled programming, and since the 2010s due to the rise of streaming services and a widening demographic embrace of anime culture, both within Japan and worldwide.[5] As of 2016, Japanese animation accounted for 60% of the world\'s animated television shows.[6]', '1715456546081_madhav-LxPgsNv1yRQ-unsplash.jpg', 'honore'),
(21, 'remy first news', 'entertainment', '2024-05-16', 'shit i am nerveous', '1715578863699_annie-spratt-quW4tC89Kz0-unsplash.jpg', 'remy');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_image` varchar(200) NOT NULL,
  `u_role` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_password`, `u_email`, `u_image`, `u_role`) VALUES
(5, 'serge', '123', 'serge@gmail.com', '1715251148485_serge._17.jpg', 'admin'),
(7, 'honore', 'smile', 'honore@gmail.com', '1715250928866_julius-drost-nsrSyI-JUYg-unsplash.jpg', 'basic'),
(8, 'remy', '0000', 'remy@gmail.com', '1715578794529_adrianna-geo-1rBg5YSi00c-unsplash.jpg', 'basic'),
(9, 'kenny', 'kenny123', 'kennytohne@gmail.com', '1715772951131_the-free-birds-Iy16cl-VlMU-unsplash.jpg', 'basic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;