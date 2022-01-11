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
                              ORDER BY display_order DESC");

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
                        <a href="'.$package['button_link'].'" class="default-btn">
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

      <?php
     include('footer.php');
     ?>
   </body>
</html>