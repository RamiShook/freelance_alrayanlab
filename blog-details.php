<?php
require_once('config.php');
require_once('functions.php');
if(isset($_GET['post_id'])){
	$post_id = $_GET['post_id'];
	$q=mysqli_query($connection,"SELECT `description`,
	MONTH(create_date) AS month_number,
	DAY(create_date) AS day_number,
	YEAR(create_date) AS year_number,
	title,
	featured_photo,
    post_id,
    meta_description,
    meta_title
	FROM blog_posts
	WHERE post_id = $post_id");
			if(mysqli_num_rows($q)>0){
			$PostData = mysqli_fetch_row($q);	
			}else{
			echo 'Post Not Found';
			}
}else{
	echo "Post Not Found!";
	header( "refresh:1;url=/home" );
}
?>
<!doctype html>
<html lang="ar" dir="rtl">
   <head>
      <meta charset="utf-8">
      <?php
      include('headerScripts.php');
     ?>

      <title><?php echo $PostData[8]?></title>
      <link rel="icon" type="image/png" href="images/favicon.png">
   </head>
   <body>
      
       <?php
         include('header.php');
       ?>
      <div class="page-title-area item-bg-4">
         <div class="d-table">
            <div class="d-table-cell">
               <div class="container">
                  <div class="page-title-content">
                     <h2><?php echo $PostData[4]?></h2>
                     <ul>
                        <li><a href="home">الرئيسية</a></li>
                        <li>المدونة</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <section class="blog-details-area pt-100 pb-100">
         <div class="container">
            <div class="row">
               <div class="col-lg-8 col-md-12">
                  <div class="blog-details-desc">
                     <div class="article-image">
                        <img src="<?php echo $PostData[5] ?>" alt="image">
                        <!-- $PostData[4] -->
                     </div>
                     <div class="article-content">
                        <div class="entry-meta">
                           <ul>
                              <li>
                                 <span>نشر في: </span>
                                 <a href="#"><?php echo getArMonthName($PostData[1]); echo " ".$PostData[2]; echo', '.$PostData[3]?></a>
                              </li>

                           </ul>
                        </div>
                        <h3><?php echo $PostData[4]?></h3>
                        <?php echo $PostData[0]?>
                        
                     </div>


                  </div>
               </div>
               <div class="col-lg-4 col-md-12">
                  <aside class="widget-area" id="secondary">

                     <section class="widget widget_lebo_posts_thumb">
                        <h3 class="widget-title">اخر المنشورات</h3>
                        <?php
 $q=mysqli_query($connection,"SELECT *,
                                       MONTHNAME(create_date) AS month_name,
                                       DAY(create_date) AS day_number,
                                       MONTH(create_date) AS month_number,
                                       YEAR(create_date) AS year_number
                                       FROM blog_posts
                                       WHERE is_active =1
                                       ORDER BY create_date 
                                       DESC LIMIT 3
                              ");

while($post = mysqli_fetch_assoc($q)){
   echo'
   <article class="item">
   <a href="post/'.$post['slug'].'/'.$post['post_id'].'" class="thumb">
   <span class="fullimage cover" role="img" style="background-image:url('.$post['featured_photo'].')" ></span>
   </a>
   <div class="info">
      <time class="2021-06-30">'.getArMonthName($post['month_number']).' '.$post['day_number'].' '.$post['year_number'].'</time>
      <h4 class="title usmall">
         <a href="post/'.$post['slug'].'/'.$post['post_id'].'">'.$post['title'].'</a>
      </h4>
   </div>
</article>
   ';
}
?>



                        
                     </section>


                     
                     <section class="widget widget_contact">
                        <div class="text">
                           <span>Emergency</span>
                           <a href="tel:0987-9876-8753">0987-9876-8753</a>
                        </div>
                     </section>
                  </aside>
               </div>
            </div>
         </div>
      </section>
      <?php
     include('footer.php');
     ?>
     
   </body>
</html>