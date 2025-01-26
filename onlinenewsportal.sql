-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2022 at 12:29 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinenewsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertiser`
--

CREATE TABLE `advertiser` (
  `advertiserid` int(10) NOT NULL,
  `advertisername` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertiser`
--

INSERT INTO `advertiser` (`advertiserid`, `advertisername`, `emailid`, `password`, `address`, `city`, `pincode`, `contactno`, `note`, `status`) VALUES
(1, 'sourabha', 'bhatsourabha@gmail.com', '33333', 'nantoor,mangalore ', 'mangalore', '575002', '9876543211', 'fdd', 'Active'),
(2, 'Maehsh kiran', 'mahesh@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', '', '', '98754561230', '', 'Active'),
(3, 'sourabha', 'vvv@gmail.com', '000', '', '', '', '9876543452', '', 'Active'),
(4, 'kamal', 'kamal@gmail.com', '3333', '', '', '', '9887766543', '', 'Active'),
(5, 'rajesh', 'rajesh@gmail.com', '1234', '', '', '', '9883344564', '', 'Active'),
(6, 'kavya', 'kaaaa@gmail.com', 'a172c0af7f628e7ba6b8b1bdc056b5e4', '', '', '', 'jkjk', '', 'Active'),
(7, 'jajajajaja', 'jaa@gmail.com', '9999', '', '', '', '8776633546', '', 'Active'),
(9, 'peter kiran', 'peterkiran@gmail.com', 'q1w2e3r4/', '', '', '', '7894561230', '', 'Active'),
(10, 'sourabha bhat', 'sourabha@gmail.com', '88888', '', '', '', '7899471582', '', 'Active'),
(11, 'sourabha', 'sss@gmail.com', '8989', '', '', '', '9876545654', '', 'Active'),
(12, 'madhura', 'madhura@gmail.com', '000', '', '', '', '5432678901', '', 'Active'),
(13, 'keerthana', '123@gmail.com', '765', '', '', '', '9876543245', '', 'Active'),
(14, 'yashaswini', 'yashu@gmail.com', '444', '', '', '', '8765345367', '', 'Active'),
(15, 'manu', 'manu@gmail.com', '7777', '3rd floor, city light building', 'Mangalore', '575002', '7654345654', '', 'Active'),
(16, 'raja', 'raja@gmail.com', '222', '', '', '', '9876543456', '', 'Active'),
(46, 'Roshan', 'roshankumar@gmail.com', 'roshankumar', '4th cross', 'Bangalore', '575002', '9876543210', 'This is Seller from builder', 'Active'),
(47, 'Piyush kumar', 'piyushkumar@gmail.com', '84984345a99d6ac0eec7690148e34778', '5th floor,\r\nAdkar colony,\r\nMahindra nagar,\r\n', 'Pune', '698745', '9874563210', 'Wholesale electronics supplier', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `newsid` int(11) NOT NULL,
  `comment_type` varchar(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment_message` text NOT NULL,
  `comment_dttim` datetime NOT NULL,
  `comment_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `newsid`, `comment_type`, `name`, `email`, `comment_message`, `comment_dttim`, `comment_status`) VALUES
(2, 809, 'Comment', 'Charlie', 'charlie@gmila.com', 'The film made box office history in various markets becoming the highest ever Day 1 collection for a Hindi film, grossing Rs 63.66, the highest ever opening in Karnataka for a Kannada film and highest ever Day 1 collection in Kerala for any Indian film, industry sources said.', '2022-04-15 17:08:48', 'Active'),
(3, 809, 'Comment', 'Rajesh', 'rajesh@gmail.com', 'While the massive advance booking played a major role in the grand opening, the film was expected to have, the actual opening numbers stand testimony to the ever growing \'KGF\' fever and all this despite the ongoing season of Ramzan and the current pandemic situation.', '2022-04-15 17:10:03', 'Active'),
(4, 802, 'Comment', 'Keerti kumar', 'keerthikumar@gmail.com', 'This is what happens when you depend on China. This is the lesson for whole country. Boycott china.', '2022-04-16 22:36:42', 'Active'),
(5, 809, 'Comment', 'Peter', 'pter@gmail.com', 'Hello,\r\nNice movie. I have enjoyed a lot', '2022-04-30 23:37:53', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeid` int(10) NOT NULL,
  `emptype` varchar(20) NOT NULL,
  `empname` varchar(50) NOT NULL,
  `loginid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeid`, `emptype`, `empname`, `loginid`, `password`, `status`) VALUES
(134, 'Admin', 'Mr. Admin', 'admin', 'd94354ac9cf3024f57409bd74eec6b4c', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `newscategory`
--

CREATE TABLE `newscategory` (
  `newscategoryid` int(10) NOT NULL,
  `category` varchar(50) NOT NULL,
  `category_type` varchar(20) DEFAULT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newscategory`
--

INSERT INTO `newscategory` (`newscategoryid`, `category`, `category_type`, `description`, `status`) VALUES
(3, 'India', 'News', 'India', 'Active'),
(4, 'Entertainment', 'Article', 'Entertainment', 'Active'),
(7, 'Worldwide', 'News', 'Worldwide', 'Active'),
(10, 'SPORTS', 'News', 'SPORTS', 'Active'),
(11, 'FINANCE', 'News', 'FINANCE', 'Active'),
(15, 'OTHERS', 'News', 'OTHER RECORDS', 'Active'),
(18, 'Health', 'Article', 'Health', 'Active'),
(19, 'Education', 'Article', 'Education', 'Active'),
(20, 'TECHNOLOGY', 'Article', 'Technologies', 'Active'),
(22, 'LifeStyle', 'Article', '', 'Active'),
(23, 'OTHERS', 'Article', 'OTHER Articles', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `newscontent`
--

CREATE TABLE `newscontent` (
  `newsid` int(10) NOT NULL,
  `newscategoryid` int(10) NOT NULL,
  `newstype` varchar(20) NOT NULL COMMENT 'ARticles or News',
  `newsdate` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `newsdescription` text NOT NULL,
  `images` text NOT NULL,
  `publisheddate` date NOT NULL,
  `count_views` bigint(20) NOT NULL DEFAULT 0,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newscontent`
--

INSERT INTO `newscontent` (`newsid`, `newscategoryid`, `newstype`, `newsdate`, `title`, `newsdescription`, `images`, `publisheddate`, `count_views`, `status`) VALUES
(784, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(785, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(786, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(787, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(788, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(789, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(790, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(791, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(792, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(793, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(794, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(795, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(796, 23, 'Article', '2019-02-09', 'Head of Rafale negotiating team slams selective use of MoD', 'Air Marshal SBP Sinha, who headed the Rafale negotiations from the Indian side, slammed bid by an English daily to malign the procurement process\r\nNote had nothing to do with Indian team\'s negotiation on Rafale procurement: Sinha\r\nThe then defence secretary G Mohan Kumar clarified that the dissent note had nothing t', '4587IMG_0001.JPG', '2019-02-09', 0, 'Active'),
(797, 10, 'News', '2022-04-15', 'This rivalry has a separate fan base', 'Mumbai Indians and Chennai Super Kings enjoy one of the fiercest rivalries in the history of the Indian Premier League. The two franchises have produced thrilling encounters on a number of occasions when they have met in the past. They will be meeting once again in the upcoming season and the build-up to the blockbuster clash has already started. The BCCI and CoA on Tuesday announced the schedule for the upcoming season of the IPL and there are some mouth-watering ties for the fans to look forward to. Mumbai Indians will take on defending champions Chennai Super Kings on April 3rd in what is expected to be a cracker of a contest. The clash was best described by Mumbai Indians on Twitter as they wrote its a rivalry that has a separate fan base in the IPL.', '17381550608380-Chennai_vs_Mumbai_IPL.jpg', '2022-04-15', 0, 'Active'),
(798, 23, 'Article', '2019-02-23', ' SPORTS  SOCCER Chelsea May Have to Hit the Reset Button, Again', 'Not every soccer manager gets a whole style of play named after him. Especially not when that manager has never won a single league title or played a minute of professional soccer. But Maurizio Sarri, a 60-year-old former banker, has earned the honor. His philosophy, developed over nearly three decades up and down Italy, is commonly known as Sarri-Ball. And until recently, it was a considered a compliment.', '4810im-55177.jpg', '2019-02-23', 0, 'Active'),
(799, 23, 'Article', '2019-02-23', 'Most Recommended Mindfulness Exercises', 'Mindfulness is a technique that is used in many different types of therapies. One of the most useful ways to use mindfulness exercises is as a method of stress reduction. Several studies have shown that people who use mindfulness techniques throughout their day have reduced stress levels and an increased sense of well-being.\r\n\r\nMindfulness exercises can be used in many other ways as well. You can use mindfulness to help overcome addiction, eating disorders, and trauma. Every day people can benefit from regular mindfulness exercises as well, as a means of increasing well-being and self-care.\r\n\r\nWhat Is Mindfulness?\r\n\r\nMindfulness is the practice of being hyper-aware of the moment. It is being in the present, acknowledging what you are thinking and feeling, and accepting it without judgment. Being mindful is about immersing yourself in the present moment to the extent that you are fully aware of everything you are experiencing in that moment.', '15419most.jpg', '2019-02-23', 0, 'Active'),
(800, 23, 'Article', '2019-02-23', 'Space:Where are all the aliens? Struggling and hustling, just like us', 'If the galaxy is billions of years old and it took humans just a few decades to visit the moon and launch space stations, why hasnâ€™t single alien spaceship landed on the White House lawn?', '19633ufo-1265186_960_720.webp', '2019-02-23', 0, 'Active'),
(801, 3, 'News', '2022-04-15', 'Ambedkar Jayanti at Mumbai’s TISS called off as chief guest doesn’t get permission to attend', '<p>A students body at Mumbai&rsquo;s Tata Institute of Social Sciences cancelled birth anniversary celebrations of Babasaheb Ambedkar on 14 April because the administration allegedly did not give permission to Sujat Ambedkar, the chief guest and great-grandson of the Dalit icon.</p><br />\r\n<br />\r\n<p><strong>The Ambedkarite Students Association (ASA) said the TISS administration denied permission to Sujat, saying &ldquo;outsider would not be allowed on campus&rdquo;.</strong></p><br />\r\n<br />\r\n<p>14 April, 2022 was the 131st birth anniversary of Dr Babasaheb Ambedkar, a key architect of India&rsquo;s Consitutition and champion of Dalit and women&rsquo;s rights.</p><br />\r\n<br />\r\n<p>ASA member Elaiya Kumar said the administration had shot down an earlier proposal of three-day celebrations to just one. Kumar said, &ldquo;We were okay with that too. But they did not mention Sujat in any of their conversations. They just said outsiders would not be allowed. They did not give any other reason.&rdquo;</p><br />\r\n<br />\r\n<p>Sujat Ambedkar is the son of Prakash Ambedkar, founder of the Vanchit Bahujan Aghadi party in Maharashtra.</p><br />\r\n', '277705163Untitled-design-78.avif', '2022-04-15', 0, 'Active'),
(802, 7, 'News', '2022-04-15', 'Sri Lanka wants India to play ‘guarantor’, urge its partners to offer financial help to Colombo', '<p>Sri Lanka has asked India if it can reach out to some of its bilateral and multilateral partners like the US, Japan, Australia, and ASEAN, and play &ldquo;guarantor&rdquo; to seek financial help for Colombo, ThePrint has learnt.</p><br />\r\n<br />\r\n<p>The Rajapaksa government, which is battling an unprecedented economic crisis, has also sought New Delhi&rsquo;s help in extending some of the previous lines of credit by way of &ldquo;bridge financing&rdquo; till the time Colombo is able to negotiate a financial package with the International Monetary Fund (IMF), top-level sources told ThePrint.</p><br />\r\n<br />\r\n<p>According to the sources, Sri Lanka will soon be running out of the $500 million credit line by the end of April, after India gives 120,000 tonnes of diesel and 35,000 tonnes of petrol, the sources said.</p><br />\r\n<br />\r\n<p>The Sri Lankan government believes that, if it were to reach out, the international community may not act, a source said. However, the source added, the international community would be more willing to extend financial help if India, as the biggest power in South Asia, were to do reach out to them and also act as a &ldquo;guarantor&rdquo; for loans to the island nation.</p><br />\r\n<br />\r\n<p>Sources also said Sri Lanka is now in the process of undertaking a massive debt restructuring exercise in order to be able to present its case in front of the IMF, which may roll out a bailout package for the island nation, but with riders.</p><br />\r\n', '725863435Flag1.avif', '2022-04-15', 0, 'Active'),
(803, 11, 'News', '2022-04-15', 'Akshata Murty’s ‘financial impropriety’ case is a ‘white tax’ on brown, successful Rishi Sunak', '<p>For most middle class Indians, <strong>N.R. Narayana Murthy</strong> is something of a hero. Until he came along, Indian industry was largely regarded as being a sloppy, corrupt place, full of black money and dodgy business practices. Murthy and Infosys, the company he founded with a few colleagues from his old job, changed all that. Not only was it one of India&rsquo;s cleanest companies&nbsp;&mdash; no corruption, no bribing of politicians and officials, no off-the-book cash transactions, etc. &mdash; it was also a world-class operation. It was the global success of Infosys that made us more confident as we realised that India could do it. We could create products that the world valued and we could do it with honesty and integrity.</p><br />\r\n<br />\r\n<p>In the decades that have followed, Murthy and his co-founders have either moved away from Infosys or, at the very least, not been involved in its day-to-day functioning. But the company continues to prosper and its founders, having made more money than they ever imagined was possible, have moved on to other things. For instance, Nandan Nilekani, who succeeded Murthy as the CEO of Infosys, is now one of India&rsquo;s leading public intellectuals and gives away hundreds of crores of rupees in his philanthropic initiatives.</p><br />\r\n<br />\r\n<p>So, it is startling for Indians to see a member of Narayana Murthy&rsquo;s family accused of financial impropriety; especially when the charges are so clearly unfair.</p><br />\r\n', '927819888Akshata-Murty-Rishi-Sunak.avif', '2022-04-15', 0, 'Active'),
(804, 7, 'News', '2022-04-15', 'No more US dollars? Ukraine war could change the global monetary system of 75 years', '<p>Russia&rsquo;s invasion of Ukraine has exposed some deep fault-lines in the global economic system. By freezing half of Russia&rsquo;s foreign exchange, or&nbsp;forex,&nbsp;reserves, the West has declared economic war with central bank assets as the target. Russia had amassed $640 billion&nbsp;in&nbsp;forex reserves but now finds itself left with only gold and assets in other denominations,&nbsp;such as the Chinese renminbi.</p><br />\r\n<br />\r\n<p>Twelve&nbsp;years back, economist Raghuram Rajan had warned about&nbsp;this&nbsp;in his book&nbsp;<em>Fault Lines: How Hidden Fractures Still Threaten the World Economy</em>. One of the issues Rajan flagged was developing countries building up huge foreign exchange reserves that are invested in US assets. This&nbsp;was&nbsp;made possible by the debt-financed consumption model of the US and the US&nbsp;dollar being a safe-haven currency.</p><br />\r\n<br />\r\n<p>The US&nbsp;dollar emerged as the global currency after the Second World War due to the country&rsquo;s economic and military might. Because&nbsp;the&nbsp;US&nbsp;dollar is the global currency, all prudent central banks of the world keep a significant portion of their forex reserves in US dollar-denominated instruments (for example,&nbsp;treasury bills, government bonds or simply deposits). Many people are unaware that these forex reserves of various central banks are actually held with the banking system of the US and not in the respective central banks&rsquo; own vaults.&nbsp;Apparently, the Reserve Bank of India does the same but does not publicly&nbsp;<a href=\"https://www.rbi.org.in/Scripts/PublicationsView.aspx?id=20655#II2\">disclose</a>&nbsp;the details of its holdings. Most other&nbsp;&lsquo;safe&rsquo;&nbsp;alternatives also lie in the West.<br /><br />\r\n&nbsp;</p><br />\r\n<br />\r\n<h3><strong>The risk to developing countries</strong></h3><br />\r\n<br />\r\n<p>Besides US&nbsp;dollar, forex reserves would invariably include&nbsp;euro,&nbsp;pound,&nbsp;franc and&nbsp;yen-denominated instruments issued by advanced economies. All these countries are at the heart of the global financial system.</p><br />\r\n&nbsp;<br />\r\n<br />\r\n<p>After the Second World War, these countries had espoused democratic values and relentlessly fought Communism. Together, we may call them the West (or OECD countries), even if they include countries that are far apart (Japan, Australia and New Zealand). Some of these countries have even colluded to manipulate the value of the US dollar in the past (the Plaza Accord of 1985 and the Louvre Accord of 1987) to benefit themselves without&nbsp;giving&nbsp;a hoot about its consequences for developing countries.</p><br />\r\n<br />\r\n<p>The Ukraine war has exposed the imbalance in the global financial system run primarily by the West. When the West decides the course of a currency, others must take it as given. When the West imposes sanctions, others must follow the diktat even to the detriment of their interests. And sanction means all of one&rsquo;s accumulated assets can be frozen by the West, as Russia has experienced and others are realising&nbsp;can&nbsp;happen to them too.</p><br />\r\n<br />\r\n<p>From the perspectives of the developing countries, it is time to ask the question: How safe are the developed countries as investment destinations for foreign currency earned through export earnings, inward foreign investments or remittances? If one falls out of favour with the West, is there a risk of forex assets getting frozen at a moment&rsquo;s notice? War and internal strife are not uncommon in today&rsquo;s world. The West often takes sides in civil wars and domestic discords. History suggests that the West may not always prefer a democratic leader in other countries even though they espouse the values of democracy at home. The future is uncertain and assessing political risk of central bank assets is extremely important.</p><br />\r\n<br />\r\n<p>Why do central banks hold forex assets at all? It is necessary for facilitating international economic transactions such as imports, overseas travel or outward investments. Second, the forex assets can be deployed in times of crisis when there is a sudden outflow of foreign currency due to economic crisis, war or other shocks. Third, keeping a war chest of forex reserves sends out a signal of strength that prevents speculative attacks on the domestic currency. But all this comes to nought if the forex reserves get &lsquo;demonetised&rsquo; by the West as has happened to Russia.</p><br />\r\n', '171544865A-machine.avif', '2022-04-15', 0, 'Active'),
(805, 7, 'News', '2022-04-15', 'After the Second World War, these countries had espoused democratic values and relentlessly fought Communism', 'Russian President Vladimir Putin. The overall picture for Russia&rsquo;s economy is grim. Forecasters from the European Bank for Reconstruction and Development have predicted a 10% contraction in Russia&rsquo;s economy this year.<br /><br />\r\n<br /><br />\r\nElvira Nabiullina spent eight years modernizing Russian monetary policy and forging bonds with global markets. In the past six weeks, she took apart much of what she created for a new task: keeping President Vladimir Putin&rsquo;s war economy humming.<br /><br />\r\n<br /><br />\r\n<br /><br />\r\n<br /><br />\r\n<strong>Alexander Osipovich</strong><strong>, The Wall Street Journal</strong><br />\r\n<ul><br /><br />\r\n	<li>Elvira Nabiullina is now striving to shield the populace from the fallout of global sanctions</li><br />\r\n	<br /><br />\r\n	<li>Nabiullina has restricted money transfers abroad. She hamstrung Russian businesses that did business with foreign customers by forcing them to convert 80% of their earnings into rubles.</li><br />\r\n	<br /><br />\r\n	<br /><br />\r\n	&nbsp;<br />\r\n</ul><br />\r\n', '590002255LSpic1_1649784855973_1649784866451.webp', '2022-04-15', 0, 'Active'),
(806, 4, 'Article', '2022-04-15', 'Ranbir Kapoor and Alia Bhatt are married', '<p>And it&#39;s official! Ranbir Kapoor and Alia Bhatt are married and their fans can&#39;t keep calm. The couple got married in the presence of their family members and close friends. Their wedding took place today, April 14, at Ranbir Kapoor&#39;s Bandra home, Vastu. Their wedding was attended by Neetu Kapoor, Riddhima Kapoor Sahni, Kareena Kapoor Khan, Karisma Kapoor, Mahesh Bhatt, Soni Razdan, Shaheen Bhatt and others.</p><br />\n<br />\n<h3><strong>RANBIR-ALIA TO POSE FOR THE PAPARAZZI</strong></h3><br />\n<br />\n<p>While Ranbir and Alia&#39;s wedding ceremony is over now, the duo will be posing as husband and wife in front of the media after 7pm. It will be their first interaction with the media as a married couple. Needless to add, Ranbir and Alia&#39;s photos from their wedding will go viral in no time. And as of now, fans are waiting with bated breath for Ranbir and Alia&#39;s wedding photos.</p><br />\n<br />\n<h3><strong>RANBIR-ALIA&#39;S RECEPTION</strong></h3><br />\n<br />\n<p>Ranbir Kapoor and Alia Bhatt&#39;s wedding reception is likely to take place in the next few days. IndiaToday.in has exclusively learnt that the actor&#39;s ex-girlfriends,&nbsp;Deepika Padukone and Katrina Kaif, will attend the reception.</p><br />\n<br />\n<p>&quot;Everyone has moved on. There is no question of being awkward. In fact, Katrina and Alia are even working together in Farhan Akhtar&rsquo;s next directorial venture, Jee Le Zara, which is written by Zoya Akhtar and Reema Katgi. Alia even reached out to Katrina during her wedding and gave her best wishes. Similarly, Ranbir and Ranveer Singh are friendly and they both respect each other&rsquo;s work. So it won&rsquo;t come as a surprise if all these couples make a friendly appearance at the reception in Mumbai,&quot; a source informed us.</p><br />\n<br />\n<p>We wish Ranbir Kapoor and Alia Bhatt a happy married life.</p><br />\n', '712790230AR.webp', '2022-04-15', 0, 'Active'),
(807, 23, 'News', '2022-04-15', 'For Women’s Safety, Pune Police Re-Launches ‘BuddyCop’ Scheme', '<p>After a gap of two years, Pune city police has again started the &lsquo;BuddyCop&rsquo; initiative for the safety of working women in private companies, offices and government offices. The scheme was shut down due to the Coronavirus disease (COVID19) pandemic.</p>\r\n\r\n<p>Commissioner of Police Amitabh Gupta has instructed to provide immediate assistance to a woman if she seeks help.<br />\r\n<strong>For Women&rsquo;s Safety, Pune Police Re-Launches &lsquo;BuddyCop&rsquo; Scheme</strong></p>\r\n\r\n<p>To address the grievances of women, the staff of each police station has been instructed to start a group on WhatsApp called &lsquo;BuddyCop&rsquo;. Suggestions have been made to include working women in this group. A mobile number has been made available for women. Senior police officers will oversee its functioning.</p>\r\n\r\n<p>The scheme will continue under the guidance of senior police inspectors from each police station in the city. Regular patrols will be carried out in the area for the safety of women employees of government offices, information technology companies as well as private companies. At the level of each police station, a group will be formed on social media to solve the problems of women workers.<br />\r\n&nbsp;</p>\r\n', '729103374Pune-City-Police.jpg', '2022-04-15', 0, 'Active'),
(808, 22, 'Article', '2022-04-15', 'Know The Benefits Of Eating Idli and Dosa', '<p>South Indian food &lsquo;Idli and Dosa&rsquo; are the dishes liked by every Indian. Most people talk about the taste of it, however, these dishes are very rich and beneficial in terms of health.</p>\r\n\r\n<p>Idli and Dosa are made by using yeast. Yeast contains good bacteria. Such food is also called probiotic food. Even doctors recommend taking probiotic foods for quick recovery from the corona.</p>\r\n\r\n<p>According to Dietitian Vidhi Chawla, &ldquo;probiotics are good bacteria that bring many benefits to our body. It keeps our digestion right, saves people from diarrhea, and heals quickly. They also have many benefits for women.<br />\r\nThey also keep the vaginal and urinary tract healthy. Probiotic foods improve your immunity as well as protect you from many types of allergies.&rdquo;</p>\r\n\r\n<p>She further added &ldquo;People abroad take probiotic supplements to keep the stomach healthy. Now, this trend is increasing in India too. Although the method advises, it will be more beneficial if you take good bacteria from Indian food instead of market supplements. For natural probiotics, you can include curd, yogurt, paneer, idli, dosa, buttermilk in the food.&rdquo;</p>\r\n', '596366279Idli-Dosa.jpg', '2022-04-15', 0, 'Active'),
(809, 4, 'Article', '2022-04-15', 'KGF Chapter 2 Movie', 'Kannada star hero Yash&#39;s KGF Chapter 2 is going to have a grand release on Today. Besides South Indian languages, the film will also release in Hindi. The trade experts in Bollywood have previously predicted that the film would collect 30 crores, but now the prediction of opening collections went to 40 crores. It is expected to collect such a huge number because of the high expectations of the film, promotions, and its pre-release business in the Hindi circuits. Tragically the film has likewise turned into the latest victim of piracy. Indeed, Yash&#39;s KGF 2 has been delivered on a couple of piracy sites like tamilrockers, IBOMMA, and MOVIERULZ, tamilmv. The ongoing advancement may possibly impact its smooth running in theaters, affecting its Box office collection.\r\n<h2>Yash and Sanjay Dutt starrer KGF Chapter 2 movie review, movie launch today live updates: Yash&#39;s action film KGF Chapter 2 has hit theatres today. The Prashanth Neel directorial also stars Sanjay Dutt, Prakash Raj, Srinidhi Shetty and Raveena Tandon.</h2>\r\n', '633480147maxresdefault (1).jpg', '2022-04-15', 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` int(10) NOT NULL,
  `advertiserid` int(10) NOT NULL,
  `paymenttype` varchar(35) NOT NULL,
  `paidamt` float(10,2) NOT NULL,
  `cgst` float(10,2) NOT NULL,
  `sgst` float(10,2) NOT NULL,
  `paymentdate` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `transaction_type` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `advertiserid`, `paymenttype`, `paidamt`, `cgst`, `sgst`, `paymentdate`, `note`, `status`, `transaction_type`) VALUES
(37, 46, 'Banner Ads', 1.00, 0.00, 0.00, '2022-04-15', '', 'Active', ''),
(38, 46, 'Banner Ads', 1.00, 0.00, 0.00, '2022-04-15', '', 'Active', ''),
(39, 1, 'WebAds', 1000.00, 50.00, 50.00, '2022-04-15', 'Paymment Type - Debit Card <br>Card holder - Rak <br> Card Number - 1236456789123456 <br> CVV No. - 299 <br>Expiry Date 2023-01', 'Active', ''),
(40, 46, 'Banner Ads', 1.00, 0.00, 0.00, '2022-04-15', '', 'Active', ''),
(41, 6, 'Banner Ads', 2.00, 0.00, 0.00, '2022-04-15', '', 'Active', ''),
(42, 47, 'WebAds', 2500.00, 125.00, 125.00, '2022-04-16', 'Paymment Type - Debit Card <br>Card holder - Piyush kumar <br> Card Number - 1234567890123456 <br> CVV No. - 158 <br>Expiry Date 2023-01', 'Active', ''),
(43, 2, 'WebAds', 250.00, 12.50, 12.50, '2022-04-30', 'Paymment Type - Debit Card <br>Card holder - Raj <br> Card Number - 1234567890123456 <br> CVV No. - 125 <br>Expiry Date 2023-01', 'Active', ''),
(44, 2, 'Banner Ads', 25.00, 0.00, 0.00, '2022-04-30', '', 'Active', ''),
(45, 2, 'Banner Ads', 25.00, 0.00, 0.00, '2022-04-30', '', 'Active', ''),
(46, 2, 'Banner Ads', 25.00, 0.00, 0.00, '2022-04-30', '', 'Active', ''),
(47, 2, 'Banner Ads', 25.00, 0.00, 0.00, '2022-04-30', '', 'Active', ''),
(48, 2, 'Banner Ads', 25.00, 0.00, 0.00, '2022-04-30', '', 'Active', ''),
(49, 2, 'Banner Ads', 25.00, 0.00, 0.00, '2022-04-30', '', 'Active', ''),
(50, 2, 'Banner Ads', 25.00, 0.00, 0.00, '2022-04-30', '', 'Active', ''),
(51, 2, 'Banner Ads', 25.00, 0.00, 0.00, '2022-04-30', '', 'Active', ''),
(52, 2, 'Banner Ads', 25.00, 0.00, 0.00, '2022-04-30', '', 'Active', ''),
(53, 2, 'Banner Ads', 25.00, 0.00, 0.00, '2022-04-30', '', 'Active', ''),
(54, 2, 'WebAds', 5000.00, 250.00, 250.00, '2022-04-30', 'Paymment Type - Debit Card <br>Card holder - Raj <br> Card Number - 1234567890123456 <br> CVV No. - 158 <br>Expiry Date 2023-01', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `taxid` int(10) NOT NULL,
  `taxtype` varchar(20) NOT NULL,
  `taxamt` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`taxid`, `taxtype`, `taxamt`, `description`, `status`) VALUES
(123, 'CGST', 5.00, 'Central Tax', 'Active'),
(124, 'SGST', 5.00, 'State Tax', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `webads`
--

CREATE TABLE `webads` (
  `webadid` int(10) NOT NULL,
  `advertiserid` int(10) NOT NULL,
  `advttitle` varchar(100) NOT NULL,
  `advtimg` varchar(100) NOT NULL,
  `advtdescription` varchar(250) NOT NULL,
  `advtemail` varchar(100) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `advtwww` varchar(100) NOT NULL,
  `advtaddress` text NOT NULL,
  `advttype` varchar(15) NOT NULL,
  `cpc` double(10,2) NOT NULL COMMENT 'cost per click',
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webads`
--

INSERT INTO `webads` (`webadid`, `advertiserid`, `advttitle`, `advtimg`, `advtdescription`, `advtemail`, `contactno`, `advtwww`, `advtaddress`, `advttype`, `cpc`, `status`) VALUES
(22, 6, 'Book for KGF Online', '2142953106Movie Ticket Booking System.png', 'Book for KGF Online', 'kgf@gmail.co', '7894561230', 'https://www.kgf.com', 'Bangalore', 'Banner Ads', 2.00, 'Active'),
(23, 47, 'Coca Cola', '1197655083Coca Cola.jpg', 'The Coca-Cola Company is a multinational beverage corporation incorporated under Delaware\'s General Corporation Law and headquartered in Atlanta, Georgia. The Coca-Cola Company has interests in the manufacturing, retailing, and marketing of non-alcoh', 'cocacola@gmail.com', '7894561230', 'https://www.cocacola.com', 'Atlanta, \r\nGeorgia, \r\nUnited States', 'Banner Ads', 25.00, 'Active'),
(24, 2, 'MRF Tyres', '1660497648mrf-6-40-15-supertrekker-n8-tt-tyre-500x500.png', 'Madras Rubber Factory, commonly known as MRF or MRF Tyres, is an Indian Multinational tyre manufacturing company and the largest manufacturer of tyres in India. It is headquartered in Chennai, Tamil Nadu, India.', 'contact@mrf.com', '7894561230', 'https://www.mrftyres.com', 'Chennai', 'Banner Ads', 25.00, 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertiser`
--
ALTER TABLE `advertiser`
  ADD PRIMARY KEY (`advertiserid`),
  ADD UNIQUE KEY `emailid` (`emailid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeid`);

--
-- Indexes for table `newscategory`
--
ALTER TABLE `newscategory`
  ADD PRIMARY KEY (`newscategoryid`);

--
-- Indexes for table `newscontent`
--
ALTER TABLE `newscontent`
  ADD PRIMARY KEY (`newsid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`taxid`);

--
-- Indexes for table `webads`
--
ALTER TABLE `webads`
  ADD PRIMARY KEY (`webadid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertiser`
--
ALTER TABLE `advertiser`
  MODIFY `advertiserid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `newscategory`
--
ALTER TABLE `newscategory`
  MODIFY `newscategoryid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `newscontent`
--
ALTER TABLE `newscontent`
  MODIFY `newsid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=810;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `taxid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `webads`
--
ALTER TABLE `webads`
  MODIFY `webadid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
