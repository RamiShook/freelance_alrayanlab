<!doctype html>
<html lang="ar" dir="rtl">
   <head>
      <meta charset="utf-8">
      <?php
      include('headerScripts.php');
     ?>
      <title>الريان</title>
      <link rel="icon" type="image/png" href="images/favicon.png">
   </head>
   <body>
   <?php 
include('header.php');
$page = "";
?>
      <div class="page-title-area item-bg-3">
         <div class="d-table">
            <div class="d-table-cell">
               <div class="container">
                  <div class="page-title-content">
                     <h2>المدونة</h2>
                     <ul>
                        <li><a href="home">الرئيسية</a></li>
                        <li>المدونة</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <section class="blog-area pt-100 pb-100">
         <div class="container">
            <div class="section-title">
               <span>المدونة</span>
               <h2>المنشورات</h2>
            </div>
            <div class="row">


            <?php
                     $per_page_record = 3;  // Number of entries to show in a page.   
                     // Look for a GET variable page if not found default is 1.        
                     if (isset($_GET["page"])) {    
                         $page  = $_GET["page"];    
                     }    
                     else {    
                       $page=1;    
                     }    
                 
                     $start_from = ($page-1) * $per_page_record;   

                        $q=mysqli_query($connection,"SELECT *,
                                       MONTHNAME(create_date) AS month_name,
										         DAY(create_date) AS day_number,
                                       MONTH(create_date) AS month_number,
                                       YEAR(create_date) AS year_number
                                       FROM blog_posts
                                       WHERE blog_posts.is_active =1
                                       ORDER BY create_date DESC
                                       LIMIT $start_from, $per_page_record")or die(mysqli_error($connection));

                  while($post = mysqli_fetch_assoc($q)){
                  echo '
                  <div class="col-lg-4 col-md-6">
                  <div class="blog-item bg-ffffff">
                     <div class="image">
                        <a href="post/'.$post['slug'].'/'.$post['post_id'].'">
                        <img src="'.$post['featured_photo'].'" alt="image">
                        </a>
                        <div class="date">
                           <span>'.getArMonthName($post['month_number']).' '.$post['day_number'].' '.$post['year_number'].'</span>
                        </div>
                     </div>
                     <div class="content">
                        <h3>
                           <a href="post/'.$post['slug'].'/'.$post['post_id'].'">
                           '.$post['title'].'
                           </a>
                        </h3>
                        <a href="post/'.$post['slug'].'/'.$post['post_id'].'" class="blog-btn">اقرأ المزيد</a>
                     </div>
                  </div>
                  </div>
                  ';
                  }
            ?>




              
               <div class="col-lg-12 col-md-12">
                  <div class="pagination-area">
                     <?php
$countQuery =mysqli_query($connection,"SELECT COUNT(*) from blog_posts WHERE is_active =1");
$result = mysqli_fetch_row($countQuery);     
$total_pages = ceil($result[0] / $per_page_record);     

if($page!=1){
echo '
<a href="blogs/'.($page-1).'" class="prev page-numbers">
<i class="las la-arrow-right"></i>
</a>
';
}

for ($i=1; $i<=$total_pages; $i++) {   
	if ($i == $page) {   
		echo '
		<span class="page-numbers current" aria-current="page">'.$i.'</span>

		';
 
	}               
	else  {   
		
		echo '
		<a href="blogs/'.$i.'" class="page-numbers">'.$i.'</a>
		';
	}   
  };  

  if($page < $total_pages){
     echo '
     <a href="blogs/'.($page+1).'" class="next page-numbers">
     <i class="las la-arrow-left"></i>
     </a>
     ';
  }
?>

                  </div>
               </div>
            </div>
         </div>
      </section>
      <?php
     include('footer.php');
     ?>
   
   </body>
</html>