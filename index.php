<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
    $cta_title = $row['cta_title'];
    $cta_content = $row['cta_content'];
    $cta_read_more_text = $row['cta_read_more_text'];
    $cta_read_more_url = $row['cta_read_more_url'];
    $cta_photo = $row['cta_photo'];
    $featured_product_title = $row['featured_product_title'];
    $featured_product_subtitle = $row['featured_product_subtitle'];
    $latest_product_title = $row['latest_product_title'];
    $latest_product_subtitle = $row['latest_product_subtitle'];
    $popular_product_title = $row['popular_product_title'];
    $popular_product_subtitle = $row['popular_product_subtitle'];
    $total_featured_product_home = $row['total_featured_product_home'];
    $total_latest_product_home = $row['total_latest_product_home'];
    $total_popular_product_home = $row['total_popular_product_home'];
    $home_service_on_off = $row['home_service_on_off'];
    $home_welcome_on_off = $row['home_welcome_on_off'];
    $home_featured_product_on_off = $row['home_featured_product_on_off'];
    $home_latest_product_on_off = $row['home_latest_product_on_off'];
    $home_popular_product_on_off = $row['home_popular_product_on_off'];

}


?>

<br />
<div class="container">
    <div class="row">
        <!-- Info Alert -->
        <div class="alert alert-info alert-dismissible fade show" style="text-align:center;">
            <strong>Info!</strong>
            - Tất cả các sản phẩm giảm giá trên website đều là trên 5% và dưới 90%
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    </div>
</div>
<?php if ($home_service_on_off == 1): ?>
    <div class="service bg-gray">
        <div class="container">
            <div class="row">
                <?php
                $statement = $pdo->prepare("SELECT * FROM tbl_service");
                $statement->execute();
                $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                foreach ($result as $row) {
                    ?>
                    <div class="col-md-4">
                        <div class="item">
                            <div class="photo">
                                <a href="<?php echo $row['url']; ?>" target="_blank"><img src="<?php echo $row['thumbnail']; ?>"
                                        class="product-img hover"></a>
                            </div>
                            <h3>
                                <?php echo $row['title']; ?>
                            </h3>
                            <p>
                                <?php echo nl2br($row['content']); ?>
                            </p>
                        </div>
                    </div>
                    <?php
                }
                ?>
            </div>
        </div>
    </div>
<?php endif; ?>
<!--GIAM GIA NHIEU NHAT -->
<?php if ($home_featured_product_on_off == 1): ?>
    <div class="product pt_70 pb_70">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="headline">
                        <h2>
                            <?php echo $featured_product_title; ?>
                        </h2>
                        <h3>
                            <?php echo $featured_product_subtitle; ?>
                        </h3>
                    </div>
                </div>
            </div>
            <div class="row">
              
                <div class="col-md-12">
                    <div class="product product-cat">
                        <div class="row">
                            <?php
                            $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE discounted = 'true' order by savings_percent desc LIMIT " . $total_featured_product_home);
                            $statement->execute(array(1, 1));
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                            foreach ($result as $row) {
                                ?>
                                <div class="col-md-3 item item-product-cat">
                                    <div class="inner">

                                        <div class="thumb">
                                            <!--add image url -->
                                            <div class="photo">
                                                <img src="<?php echo $row['thumbnail']; ?>" class="product-img hover" />
                                            </div>
                                            <div class="overlay"></div>
                                        </div>
                                        <!--cut text  !, title-->
                                        <div class="text">
                                            <h3><a href="<?php echo $row['url']; ?>" target="_blank">
                                                    <?php echo mb_strimwidth($row['title'], 10, 40); ?>
                                                </a>
                                            </h3>
                                            <h4>
                                                <!--gia hien tai !-->
                                                <?php echo format_yen_for_display($row['p_current_price']); ?>
                                                <!--gia chua sale -->
                                                <?php if ($row['p_old_price'] != ''): ?>
                                                    <del>

                                                        <?php echo format_yen_for_display($row['p_old_price']); ?>
                                                    </del>
                                                <?php endif; ?>
                                            </h4>
                                            <div class="rating">
                                                <?php
                                                $t_rating = 0;
                                                $statement1 = $pdo->prepare("SELECT * FROM tbl_rating WHERE p_id=?");
                                                $statement1->execute(array($row['p_id']));
                                                $tot_rating = $statement1->rowCount();
                                                if ($tot_rating == 0) {
                                                    $avg_rating = 0;
                                                } else {
                                                    $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
                                                    foreach ($result1 as $row1) {
                                                        $t_rating = $t_rating + $row1['rating'];
                                                    }
                                                    $avg_rating = $t_rating / $tot_rating;
                                                }
                                                ?>
                                                <?php
                                                if ($avg_rating == 0) {
                                                    echo '';
                                                } elseif ($avg_rating == 1.5) {
                                                    echo '
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        ';
                                                } elseif ($avg_rating == 2.5) {
                                                    echo '
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        ';
                                                } elseif ($avg_rating == 3.5) {
                                                    echo '
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        ';
                                                } elseif ($avg_rating == 4.5) {
                                                    echo '
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                        ';
                                                } else {
                                                    for ($i = 1; $i <= 5; $i++) {
                                                        ?>
                                                        <?php if ($i > $avg_rating): ?>
                                                            <i class="fa fa-star-o"></i>
                                                        <?php else: ?>
                                                            <i class="fa fa-star"></i>
                                                        <?php endif; ?>
                                                        <?php
                                                    }
                                                }
                                                ?>
                                            </div>

                                            <?php if ($row['p_qty'] == 0): ?>
                                                <div class="out-of-stock">
                                                    <div class="inner">
                                                        Không còn sale
                                                    </div>
                                                </div>
                                            <?php else: ?>
                                                <p><a href="<?php echo $row['url']; ?>" target="_blank">Giảm giá
                                                        <?php echo $row['savings_percent']; ?>%
                                                    </a>
                                                </p>
                                                <p class="goto-amazon"><a href="<?php echo $row['url']; ?>" target="_blank">Đi đến Amazon
                                                    </a>
                                                </p>
                                            <?php endif; ?>
                                            <div class="">
                                                Cập nhật lúc:
                                                <?php echo $row['import_date']; ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php
                            }
                            ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>



<?php require_once('footer.php'); ?>