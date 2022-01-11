<!doctype html>
<html lang="ar" dir="rtl">
   <head>
      <meta charset="utf-8">
     <?php
      include('headerScripts.php');
     ?>
      <title>مختبر الريان</title>
      <link rel="icon" type="image/png" href="images/favicon.png">
   </head>
   <body>
   <?php 
include('header.php');
?>
      <div class="home-slides owl-carousel owl-theme" >

      <?php
$q=mysqli_query($connection,"SELECT * FROM banner");
while($banner = mysqli_fetch_assoc($q)){

   echo '
   <div class="main-banner-item">
   <div class="d-table">
      <div class="d-table-cell">
         <div class="container-fluid">
            <div class="row align-items-center">
               <div class="col-lg-6">
                  <div class="main-banner-content">
                     <h1>'.$banner['ar_heading'].'</h1>
                     <p>'.$banner['ar_description'].'</p>
                     <div class="banner-btn">
                        <a href="'.$banner['ar_cta_link'].'" class="default-btn">
                        '.$banner['ar_button_lable'].'
                        <span></span>
                        </a>
                     </div>
                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="main-banner-image">
                     <img src="'.$banner['photo'].'" alt="image">
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
   ';
}

   ?>
 
      </div>
      <section class="why-choose-area ptb-100">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-lg-6">
               <div class="why-choose-content"><span>لماذا نحن </span>
<h3>خبرة لا تضاهى في مجال التحاليل الطبية</h3>
<strong>يسعى مختبر الريان التخصصي منذ تأسيسه الى تقديم مختلف الخدمات الطبية وفق أعلى معايير الجودة العالمية، وبفريق عمل طبي وإداري ذات خبرات محلية وعالمية، وأحدث الأجهزة والتكنولوجيا المتطورة في مجال الفحوصات الطبية.</strong>

<div class="why-choose-text">
<div class="icon"><i class="las la-check"></i></div>

<h4>خدمة السحب المنزلي</h4>
<p>
هي خدمة تقدم لعملائنا الكرام بديلة عن الحضور للمختبر لسحب عينات التحاليل الطبية. حيث سيتم الحضور لمقر المريض واتمام عملية سحب العينات من قبل كادر متخصص ومن ثم ارسال النتائج عبر تطبيقات التواصل الاجتماعي
</p>
</div>

<div class="why-choose-text">
<div class="icon"><i class="las la-check"></i></div>

<h4>استشر الأخصائيين</h4>
<p>
بعد اجراء الفحوصات يمكنك الحجز والحصول على استشارات طبية من أفضل الأطباء بالمجاني. جميع الأطباء ذوو خبرات علمية ممتازة وعلى درجة عالية من الكفاءة في اختصاصاتهم.
</p>
</div>


</div>

               </div>
               <div class="col-lg-6">
                  <div class="why-choose-image">
                     <img src="images/why-choose.png" alt="image">
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="services-area bg-ffffff pt-100 pb-70">
         <div class="container">
            <div class="section-title">
               <span>الخدمات</span>
               <h2>خدماتنا</h2>
            </div>
            <div class="row">

         <?php
            $q=mysqli_query($connection,"SELECT * FROM services");

            while($service = mysqli_fetch_assoc($q)){
               echo '
               <div class="col-lg-4 col-md-6">
               <div class="single-services-item">
                  <div class="icon">
                     <i class="'.$service['icon'].'"></i>
                  </div>
                  <h3>
                     <a href="#">'.$service['ar_name'].'</a>
                  </h3>
                  <p>'.$service['ar_description'].'</p>
              
               </div>
            </div>
               ';
            }
            
         ?>






              
               </div>
            </div>
         </div>
      </section>
      <section class="pricing-area pt-100 pb-70">
         <div class="container">
            <div class="section-title">
               <span>الباقات</span>
               <h2>باقات الفحوصات الطبية</h2>
            </div>
            <div class="row">
            <?php
$q=mysqli_query($connection,"SELECT * FROM package_item
                              WHERE is_active = 1
                              ORDER BY display_order DESC
                              LIMIT 3");

while($package = mysqli_fetch_assoc($q)){
   echo '
   <div class="col-lg-4 col-md-6">
                  <div class="single-pricing-box">
                     <div class="price">
                        '.$package['package_price'].'
                     </div>
                     <div class="pricing-header">
                        <h3>'.$package['package_ar_name'].'</h3>
                     </div>
                     <ul class="pricing-features">
   ';

      $package_id = $package['package_id'];
      $q1 = mysqli_query($connection,"SELECT * FROM package_item_details
                                       WHERE package_id='$package_id'")or die(mysqli_error($connection));
                  
         while ($package_details = mysqli_fetch_array($q1)){
            echo '
            <li>
            <i class="las la-check"></i>
            '.$package_details[2].'
         </li>
            ';
         }
         echo '
         <div class="pricing-btn">
                        <a href="#" class="default-btn">
                        '.$package['ar_button_label'].'
                        <span></span>
                        </a>
                     </div>
                  </div>
               </div>
         ';

}
?>
            </div>
         </div>
      </section>
      <section class="blog-area pb-70">
         <div class="container">
            <div class="section-title">
               <span>مقاﻻت</span>
               <h2>اخر المقالات</h2>
            </div>
            <div class="row">

            <?php
                        $q=mysqli_query($connection,"SELECT *,
                                       MONTHNAME(create_date) AS month_name,
										         DAY(create_date) AS day_number,
                                       MONTH(create_date) AS month_number,
                                       YEAR(create_date) AS year_number
                                       FROM blog_posts
                                       WHERE blog_posts.is_active =1
                                       ORDER BY create_date DESC
                                       LIMIT 3
                                       ")or die(mysqli_error($connection));

                  while($post = mysqli_fetch_assoc($q)){
                  echo'
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

       


            </div>
         </div>
      </section>
      <?php
      include('footer.php');
      ?>
     
   </body>
</html>