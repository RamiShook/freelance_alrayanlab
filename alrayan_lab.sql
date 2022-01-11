-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 10, 2021 at 09:42 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alrayan_lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `heading` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `cta_link` text DEFAULT NULL,
  `button_lable` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `ar_heading` text DEFAULT NULL,
  `ar_description` text DEFAULT NULL,
  `ar_button_lable` text DEFAULT NULL,
  `ar_cta_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `heading`, `description`, `photo`, `cta_link`, `button_lable`, `display_order`, `lang_id`, `is_active`, `ar_heading`, `ar_description`, `ar_button_lable`, `ar_cta_link`) VALUES
(1, 'Serving Science & Technology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod incididunt labore dolore magna aliqua quis ipsum suspendisse', 'images/banner1.jpg', 'Book Appointment', '#', 1, NULL, 1, 'Serving Science & Technology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod incididunt labore dolore magna aliqua quis ipsum suspendisse', 'Book Appointment', '#'),
(3, 'Serving Science & Technology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod incididunt labore dolore magna aliqua quis ipsum suspendisse', 'images/banner2.jpg', 'Book Appointment', '#', 2, NULL, 1, 'Serving Science & Technology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod incididunt labore dolore magna aliqua quis ipsum suspendisse', 'Book Appointment', '#'),
(4, 'Serving Science & Technology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod incididunt labore dolore magna aliqua quis ipsum suspendisse', 'images/banner3.jpg', 'Book Appointment', '#', 3, NULL, 1, 'Serving Science & Technology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod incididunt labore dolore magna aliqua quis ipsum suspendisse', 'Book Appointment', '#');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_cat_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `ar_name` text NOT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `featured_photo` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1,
  `language` text DEFAULT 'ar',
  `meta_title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`post_id`, `category_id`, `name`, `display_order`, `featured_photo`, `slug`, `title`, `meta_description`, `description`, `create_date`, `is_active`, `language`, `meta_title`) VALUES
(1, NULL, 'سرير مبتسم واضح ضد الطقس', 1, 'images/blog-details.jpg', 'سرير-مبتسم-واضح-ضد-الطقس', 'سرير مبتسم واضح ضد الطقس', 'مختبر الريان', '<p>لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم</p>\n', '2021-08-05 16:19:25', 1, 'ar', 'مختبرات الريان'),
(2, NULL, 'البحث والتحقق من مختبر الفيزياء', 2, 'images/blog2.jpg', 'البحث-والتحقق-من-مختبر-الفيزياء', 'البحث و التحقق من مختبر الفيزياء', 'مختبر الريان', '<p>لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم</p>\n', '2021-08-05 16:19:25', 1, 'ar', 'مختبر الريان'),
(3, NULL, 'دور الوراثة في علاج الورم الدبقي منخفض الدرجة', 3, 'images/blog3.jpg', 'دور-الوراثة-في-علاج-الورم-الدبقي-منخفض-الدرجة', 'دور الوراثة في علاج الورم الدبقي منخفض الدرجة', 'مختبر الريان', '<p>لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم</p>\n', '2021-08-05 16:19:25', 1, 'ar', 'مختبر الريان'),
(5, NULL, 'دور الوراثة في علاج الورم الدبقي منخفض الدرجة2', 4, 'images/blog2.jpg', 'دور-الوراثة-في-علاج-الورم-الدبقي-منخفض-الدرجة-2', 'دور الوراثة في علاج الورم الدبقي منخفض الدرجة 2', NULL, '                        <p>لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد\r\n\r\nأكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس\r\n\r\nأيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت\r\n\r\nنيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا\r\n\r\nكيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم</p>', '2021-08-05 16:19:25', 1, 'ar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `user_password` text NOT NULL,
  `user_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`user_id`, `user_name`, `user_password`, `user_type`) VALUES
(1, 'Rami', '$2y$10$5O.re/0JkSls3FGpCNv.tO1Sc8kJlPxJ2.Rhw5GFi7PfNn6TBmEl6', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

CREATE TABLE `lang` (
  `lang_id` int(11) NOT NULL,
  `lang_name` text NOT NULL,
  `en_value` text NOT NULL,
  `ar_value` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `lang_type` int(11) NOT NULL DEFAULT 0 COMMENT '0:is text, 1:is html	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lang`
--

INSERT INTO `lang` (`lang_id`, `lang_name`, `en_value`, `ar_value`, `is_active`, `lang_type`) VALUES
(1, 'Why Choose Us Index Page', ' <div class=\"why-choose-content\">\r\n                     <span>Why Choose Us</span>\r\n                     <h3>Over 20 Years of Experience With Best Results</h3>\r\n                     <strong>Your full-service lab for clinical trials. Our mission is to ensure the generation of accurate and precise findings</strong>\r\n                     <div class=\"why-choose-text\">\r\n                        <div class=\"icon\">\r\n                           <i class=\"las la-check\"></i>\r\n                        </div>\r\n                        <h4>Free Home Sampling</h4>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore. magna aliqua.</p>\r\n                     </div>\r\n                     <div class=\"why-choose-text\">\r\n                        <div class=\"icon\">\r\n                           <i class=\"las la-check\"></i>\r\n                        </div>\r\n                        <h4>High- End Technology</h4>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore. magna aliqua.</p>\r\n                     </div>\r\n                     <div class=\"why-choose-text\">\r\n                        <div class=\"icon\">\r\n                           <i class=\"las la-check\"></i>\r\n                        </div>\r\n                        <h4>Patient Support</h4>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore. magna aliqua.</p>\r\n                     </div>\r\n                     <div class=\"why-choose-text\">\r\n                        <div class=\"icon\">\r\n                           <i class=\"las la-check\"></i>\r\n                        </div>\r\n                        <h4>500 + Different Tests</h4>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore. magna aliqua.</p>\r\n                     </div>\r\n                  </div>', '<div class=\"why-choose-content\">\r\n                     <span>!لماذا نحن </span>\r\n                     <h3>نمتلك اكثر من 20 سنة خبرة</h3>\r\n                     <strong>مختبرك كامل الخدمات للتجارب السريرية. مهمتنا هي ضمان توليد نتائج دقيقة ودقيقة</strong>\r\n                     <div class=\"why-choose-text\">\r\n                        <div class=\"icon\">\r\n                           <i class=\"las la-check\"></i>\r\n                        </div>\r\n                        <h4>أخذ عينات مجانية من المنزل</h4>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore. magna aliqua.</p>\r\n                     </div>\r\n                     <div class=\"why-choose-text\">\r\n                        <div class=\"icon\">\r\n                           <i class=\"las la-check\"></i>\r\n                        </div>\r\n                        <h4>التكنولوجيا المتطورة</h4>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore. magna aliqua.</p>\r\n                     </div>\r\n                     <div class=\"why-choose-text\">\r\n                        <div class=\"icon\">\r\n                           <i class=\"las la-check\"></i>\r\n                        </div>\r\n                        <h4>دعم المريض</h4>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore. magna aliqua.</p>\r\n                     </div>\r\n                     <div class=\"why-choose-text\">\r\n                        <div class=\"icon\">\r\n                           <i class=\"las la-check\"></i>\r\n                        </div>\r\n                        <h4>500+ اختبارات مختلفة</h4>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore. magna aliqua.</p>\r\n                     </div>\r\n                  </div>', 1, 1),
(2, 'Side Bar Modal', '<div class=\"sidebar-modal\">\r\n         <div class=\"sidebar-modal-inner\">\r\n            <div class=\"sidebar-about-area\">\r\n               <div class=\"title\">\r\n                  <h2>معلومات عنا</h2>\r\n                  <p>نعتقد أن تفاعل العلامة التجارية هو مفتاح التواصل. الابتكارات الحقيقية وتجربة العملاء الإيجابية هي قلب التواصل الناجح. لا توجد منتجات وخدمات مقلدة. الزبون ملك ، وحياته واحتياجاته هي الإلهام.</p>\r\n               </div>\r\n            </div>\r\n            <div class=\"sidebar-instagram-feed\">\r\n               <h2>Instagram</h2>\r\n               <ul>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram1.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram2.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram3.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram4.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram5.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram6.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram7.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram8.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n               </ul>\r\n            </div>\r\n            <div class=\"sidebar-contact-area\">\r\n               <div class=\"contact-info\">\r\n                  <div class=\"contact-info-content\">\r\n                     <h2>\r\n                        <a href=\"tel:+00000000\">\r\n                        +000000000000\r\n                        </a>\r\n                     </h2>\r\n                     <ul class=\"social\">\r\n                        <li>\r\n                           <a href=\"#\" target=\"_blank\">\r\n                           <i class=\"lab la-twitter\"></i>\r\n                           </a>\r\n                        </li>\r\n                        <li>\r\n                           <a href=\"#\" target=\"_blank\">\r\n                           <i class=\"lab la-youtube\"></i>\r\n                           </a>\r\n                        </li>\r\n                        <li>\r\n                           <a href=\"#\" target=\"_blank\">\r\n                           <i class=\"lab la-facebook-f\"></i>\r\n                           </a>\r\n                        </li>\r\n                        <li>\r\n                           <a href=\"#\" target=\"_blank\">\r\n                           <i class=\"lab la-linkedin-in\"></i>\r\n                           </a>\r\n                        </li>\r\n                        <li>\r\n                           <a href=\"#\" target=\"_blank\">\r\n                           <i class=\"lab la-instagram\"></i>\r\n                           </a>\r\n                        </li>\r\n                     </ul>\r\n                  </div>\r\n               </div>\r\n            </div>\r\n            <span class=\"close-btn sidebar-modal-close-btn\">\r\n            <i class=\"flaticon-cancel\"></i>\r\n            </span>\r\n         </div>\r\n      </div>', '<div class=\"sidebar-modal\">\r\n         <div class=\"sidebar-modal-inner\">\r\n            <div class=\"sidebar-about-area\">\r\n               <div class=\"title\">\r\n                  <h2>معلومات عنا</h2>\r\n                  <p>نعتقد أن تفاعل العلامة التجارية هو مفتاح التواصل. الابتكارات الحقيقية وتجربة العملاء الإيجابية هي قلب التواصل الناجح. لا توجد منتجات وخدمات مقلدة. الزبون ملك ، وحياته واحتياجاته هي الإلهام.</p>\r\n               </div>\r\n            </div>\r\n            <div class=\"sidebar-instagram-feed\">\r\n               <h2>Instagram</h2>\r\n               <ul>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram1.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram2.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram3.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram4.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram5.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram6.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram7.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n                  <li>\r\n                     <a href=\"#\">\r\n                     <img src=\"images/instagram8.jpg\" alt=\"image\">\r\n                     </a>\r\n                  </li>\r\n               </ul>\r\n            </div>\r\n            <div class=\"sidebar-contact-area\">\r\n               <div class=\"contact-info\">\r\n                  <div class=\"contact-info-content\">\r\n                     <h2>\r\n                        <a href=\"tel:+00000000\">\r\n                        +000000000000\r\n                        </a>\r\n                     </h2>\r\n                     <ul class=\"social\">\r\n                        <li>\r\n                           <a href=\"#\" target=\"_blank\">\r\n                           <i class=\"lab la-twitter\"></i>\r\n                           </a>\r\n                        </li>\r\n                        <li>\r\n                           <a href=\"#\" target=\"_blank\">\r\n                           <i class=\"lab la-youtube\"></i>\r\n                           </a>\r\n                        </li>\r\n                        <li>\r\n                           <a href=\"#\" target=\"_blank\">\r\n                           <i class=\"lab la-facebook-f\"></i>\r\n                           </a>\r\n                        </li>\r\n                        <li>\r\n                           <a href=\"#\" target=\"_blank\">\r\n                           <i class=\"lab la-linkedin-in\"></i>\r\n                           </a>\r\n                        </li>\r\n                        <li>\r\n                           <a href=\"#\" target=\"_blank\">\r\n                           <i class=\"lab la-instagram\"></i>\r\n                           </a>\r\n                        </li>\r\n                     </ul>\r\n                  </div>\r\n               </div>\r\n            </div>\r\n            <span class=\"close-btn sidebar-modal-close-btn\">\r\n            <i class=\"flaticon-cancel\"></i>\r\n            </span>\r\n         </div>\r\n      </div>', 1, 1),
(3, 'Awards Counter About Page', '<div class=\"container\">\r\n            <div class=\"row align-items-center\">\r\n               <div class=\"col-lg-3 col-md-6\">\r\n                  <div class=\"single-fun-fact-two\">\r\n                     <h3>\r\n                        <span class=\"odometer\" data-count=\"25\">00</span>\r\n                     </h3>\r\n                     <p>الجوائز المكتسبة</p>\r\n                  </div>\r\n               </div>\r\n               <div class=\"col-lg-3 col-md-6\">\r\n                  <div class=\"single-fun-fact-two\">\r\n                     <h3>\r\n                        <span class=\"odometer\" data-count=\"55\">00</span>\r\n                     </h3>\r\n                     <p>معداتنا</p>\r\n                  </div>\r\n               </div>\r\n               <div class=\"col-lg-3 col-md-6\">\r\n                  <div class=\"single-fun-fact-two\">\r\n                     <h3>\r\n                        <span class=\"odometer\" data-count=\"425\">00</span>\r\n                     </h3>\r\n                     <p>حالات كاملة</p>\r\n                  </div>\r\n               </div>\r\n               <div class=\"col-lg-3 col-md-6\">\r\n                  <div class=\"single-fun-fact-two\">\r\n                     <h3>\r\n                        <span class=\"odometer\" data-count=\"125\">00</span>\r\n                     </h3>\r\n                     <p>خبرة</p>\r\n                  </div>\r\n               </div>\r\n            </div>\r\n         </div>', '<div class=\"container\">\r\n            <div class=\"row align-items-center\">\r\n               <div class=\"col-lg-3 col-md-6\">\r\n                  <div class=\"single-fun-fact-two\">\r\n                     <h3>\r\n                        <span class=\"odometer\" data-count=\"25\">00</span>\r\n                     </h3>\r\n                     <p>الجوائز المكتسبة</p>\r\n                  </div>\r\n               </div>\r\n               <div class=\"col-lg-3 col-md-6\">\r\n                  <div class=\"single-fun-fact-two\">\r\n                     <h3>\r\n                        <span class=\"odometer\" data-count=\"55\">00</span>\r\n                     </h3>\r\n                     <p>معداتنا</p>\r\n                  </div>\r\n               </div>\r\n               <div class=\"col-lg-3 col-md-6\">\r\n                  <div class=\"single-fun-fact-two\">\r\n                     <h3>\r\n                        <span class=\"odometer\" data-count=\"425\">00</span>\r\n                     </h3>\r\n                     <p>حالات كاملة</p>\r\n                  </div>\r\n               </div>\r\n               <div class=\"col-lg-3 col-md-6\">\r\n                  <div class=\"single-fun-fact-two\">\r\n                     <h3>\r\n                        <span class=\"odometer\" data-count=\"125\">00</span>\r\n                     </h3>\r\n                     <p>خبرة</p>\r\n                  </div>\r\n               </div>\r\n            </div>\r\n         </div>', 1, 1),
(4, 'Contact Info Area Contact Page', '<div class=\"container\">\r\n            <div class=\"row\">\r\n               <div class=\"col-lg-4 col-md-6 col-sm-6\">\r\n                  <div class=\"contact-info-box mb-30\">\r\n                     <div class=\"icon\">\r\n                        <i class=\"las la-envelope\"></i>\r\n                     </div>\r\n                     <h3>Email Here</h3>\r\n                     <p><a href=\"\"><span class=\"__cf_email__\"\">info@me.com</span></a></p>\r\n                    \r\n                  </div>\r\n               </div>\r\n               <div class=\"col-lg-4 col-md-6 col-sm-6\">\r\n                  <div class=\"contact-info-box mb-30\">\r\n                     <div class=\"icon\">\r\n                        <i class=\"las la-map-marker\"></i>\r\n                     </div>\r\n                     <h3>Location Here</h3>\r\n                     <p><a href=\"https://www.google.com/maps/search/medical+center+in+London,+UK/@51.5118992,-0.0848015,15z/data=!3m1!4b1\" target=\"_blank\">Baghdad, Iraq</a></p>\r\n                  </div>\r\n               </div>\r\n               <div class=\"col-lg-4 col-md-6 col-sm-6\">\r\n                  <div class=\"contact-info-box mb-30\">\r\n                     <div class=\"icon\">\r\n                        <i class=\"las la-phone\"></i>\r\n                     </div>\r\n                     <h3>Call Here</h3>\r\n                     <p><a href=\"tel:9647729692559\" dir=\"ltr\">+964&nbsp;772&nbsp;969&nbsp;2559</a></p>\r\n                  </div>\r\n               </div>\r\n            </div>\r\n         </div>', '<div class=\"container\">\r\n            <div class=\"row\">\r\n               <div class=\"col-lg-4 col-md-6 col-sm-6\">\r\n                  <div class=\"contact-info-box mb-30\">\r\n                     <div class=\"icon\">\r\n                        <i class=\"las la-envelope\"></i>\r\n                     </div>\r\n                     <h3>البريد الألكتروني</h3>\r\n                     <p><a href=\"\"><span class=\"__cf_email__\"\">info@me.com</span></a></p>\r\n                    \r\n                  </div>\r\n               </div>\r\n               <div class=\"col-lg-4 col-md-6 col-sm-6\">\r\n                  <div class=\"contact-info-box mb-30\">\r\n                     <div class=\"icon\">\r\n                        <i class=\"las la-map-marker\"></i>\r\n                     </div>\r\n                     <h3>الموقع الجغرافي</h3>\r\n                     <p><a href=\"https://www.google.com/maps/search/medical+center+in+London,+UK/@51.5118992,-0.0848015,15z/data=!3m1!4b1\" target=\"_blank\">Baghdad, Iraq</a></p>\r\n                  </div>\r\n               </div>\r\n               <div class=\"col-lg-4 col-md-6 col-sm-6\">\r\n                  <div class=\"contact-info-box mb-30\">\r\n                     <div class=\"icon\">\r\n                        <i class=\"las la-phone\"></i>\r\n                     </div>\r\n                     <h3>الهاتف</h3>\r\n                     <p><a href=\"tel:9647729692559\" dir=\"ltr\">+964&nbsp;772&nbsp;969&nbsp;2559</a></p>\r\n                  </div>\r\n               </div>\r\n            </div>\r\n         </div>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `package_item`
--

CREATE TABLE `package_item` (
  `package_id` int(11) NOT NULL,
  `package_en_name` text DEFAULT NULL,
  `package_ar_name` text DEFAULT NULL,
  `package_price` text DEFAULT NULL,
  `en_button_label` text DEFAULT NULL,
  `ar_button_label` text DEFAULT NULL,
  `button_link` text DEFAULT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_item`
--

INSERT INTO `package_item` (`package_id`, `package_en_name`, `package_ar_name`, `package_price`, `en_button_label`, `ar_button_label`, `button_link`, `display_order`, `is_active`) VALUES
(1, 'العناية الأساسية', 'العناية الأساسية', '120$', 'اختر الخطة', 'اختر الخطة', '#', 1, 1),
(2, 'العناية الرئيسية', 'العناية الرئيسية', '150$', 'اختر الخطة', 'اختر الخطة', '#', 2, 1),
(3, 'رعاية كاملة', 'رعاية كاملة', '220$', 'اختر الخطة', 'اختر الخطة', '#', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `package_item_details`
--

CREATE TABLE `package_item_details` (
  `package_info_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `ar_value` text NOT NULL,
  `en_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_item_details`
--

INSERT INTO `package_item_details` (`package_info_id`, `package_id`, `ar_value`, `en_value`) VALUES
(1, 1, 'فحص دم شامل', 'فحص دم شامل'),
(2, 1, 'فحص الدم لوظائف الكبد', 'فحص الدم لوظائف الكبد'),
(3, 1, 'التمثيل الغذائي الشامل', 'التمثيل الغذائي الشامل'),
(4, 1, 'لوحة الصحة العامة للإناث', 'لوحة الصحة العامة للإناث'),
(5, 1, 'امراض منقولة', 'امراض منقولة'),
(6, 1, 'مستويات الدهون في الكوليسترول', 'مستويات الدهون في الكوليسترول'),
(7, 2, 'فحص دم شامل', 'فحص دم شامل'),
(8, 2, 'فحص الدم لوظائف الكبد', 'فحص الدم لوظائف الكبد'),
(9, 2, 'التمثيل الغذائي الشامل', 'التمثيل الغذائي الشامل'),
(10, 2, 'لوحة الصحة العامة للإناث', 'لوحة الصحة العامة للإناث'),
(11, 2, 'امراض منقولة', 'امراض منقولة'),
(12, 2, 'مستويات الدهون في الكوليسترول', 'مستويات الدهون في الكوليسترول'),
(13, 3, 'فحص دم شامل', 'فحص دم شامل'),
(14, 3, 'فحص الدم لوظائف الكبد', 'فحص الدم لوظائف الكبد'),
(15, 3, 'التمثيل الغذائي الشامل', 'التمثيل الغذائي الشامل'),
(16, 3, 'لوحة الصحة العامة للإناث', 'لوحة الصحة العامة للإناث'),
(17, 3, 'امراض منقولة', 'امراض منقولة'),
(18, 3, 'مستويات الدهون في الكوليسترول', 'مستويات الدهون في الكوليسترول');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `en_name` text NOT NULL,
  `ar_name` text NOT NULL,
  `dispaly_order` int(11) NOT NULL,
  `en_slug` text NOT NULL,
  `ar_slug` text NOT NULL,
  `en_title` text NOT NULL,
  `ar_title` text NOT NULL,
  `en_meta_description` text DEFAULT NULL,
  `ar_meta_description` text DEFAULT NULL,
  `ar_description` text NOT NULL,
  `en_description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `en_name` text NOT NULL,
  `ar_name` text NOT NULL,
  `icon` text NOT NULL,
  `photo` text NOT NULL,
  `display_order` int(11) NOT NULL,
  `en_description` text NOT NULL,
  `ar_description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `full_description` text NOT NULL COMMENT 'For Single Service Section'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `en_name`, `ar_name`, `icon`, `photo`, `display_order`, `en_description`, `ar_description`, `is_active`, `full_description`) VALUES
(1, 'الفحص المجهري المتقدم', 'الفحص المجهري المتقدم', 'flaticon-microscope', '', 1, 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 1, ''),
(2, 'البيولوجيا الجزيئية', 'البيولوجيا الجزيئية', 'flaticon-laboratory', '', 2, 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 1, ''),
(5, 'اختبار مرض السكري', 'اختبار مرض السكري', 'flaticon-sugar-blood-level', '', 3, 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 1, ''),
(6, 'البحوث الكيميائية', 'البحوث الكيميائية', 'flaticon-lab-tool', '', 4, 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 1, ''),
(7, 'علم الأمراض التشريحي', 'علم الأمراض التشريحي', 'flaticon-lungs', '', 5, 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 1, ''),
(8, 'امراض القلب', 'امراض القلب', 'flaticon-heart', '', 6, 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_cat_id`),
  ADD UNIQUE KEY `display_order` (`display_order`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `display_order` (`display_order`);

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `package_item`
--
ALTER TABLE `package_item`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `package_item_details`
--
ALTER TABLE `package_item_details`
  ADD PRIMARY KEY (`package_info_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD UNIQUE KEY `display_order` (`display_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lang`
--
ALTER TABLE `lang`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `package_item`
--
ALTER TABLE `package_item`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package_item_details`
--
ALTER TABLE `package_item_details`
  MODIFY `package_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
