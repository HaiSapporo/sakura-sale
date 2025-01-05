<?php require_once 'header.php'; ?>
<?php
$insert_category = 2;
if (isset($_POST['form1'])) {
    $valid = 1;

    if (empty($_POST['tcat_id'])) {
        $valid = 0;
        $error_message .= "You must have to select a top level category<br>";
    }
    if ($valid == 1) {
        if ((empty($_POST['ecat_id']) && !empty($_POST['mcat_id']))) {
            $insert_category = $_POST['mcat_id'];
        } else if (!empty($_POST['ecat_id'])) {
            $insert_category = $_POST['ecat_id'];
        } else {
            $insert_category = $_POST['tcat_id'];
        }
    }
}
?>


<section class="content-header">
    <div class="content-header-left">
        <h1>Load 30 sản phẩm sale hiển thị blog</h1>
    </div>
    <div class="content-header-right">
        <a href="product.php" class="btn btn-primary btn-sm">View All</a>
    </div>
</section>


<section class="content">
    <div class="container">
        <div class="row">
            <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">

                <div class="box box-info">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Top Level Category Name <span>*</span></label>
                            <div class="col-sm-4">
                                <select name="tcat_id" class="form-control select2 top-cat">
                                    <option value="">Select Top Level Category</option>
                                    <?php
                                    $statement = $pdo->prepare("SELECT * FROM tbl_top_category ORDER BY tcat_name ASC");
                                    $statement->execute();
                                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                    foreach ($result as $row) {
                                        ?>
                                        <option value="<?php echo $row['tcat_id']; ?>"><?php echo $row['tcat_name']; ?>
                                        </option>
                                        <?php
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Mid Level Category Name <span></span></label>
                            <div class="col-sm-4">
                                <select name="mcat_id" class="form-control select2 mid-cat">
                                    <option value="">Select Mid Level Category</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">End Level Category Name <span></span></label>
                            <div class="col-sm-4">
                                <select name="ecat_id" class="form-control select2 end-cat">
                                    <option value="">Select End Level Category</option>
                                </select>
                            </div>
                        </div>

                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-3 control-label"></label>
                        <div class="col-sm-6">
                            <button type="submit" class="btn btn-success pull-left" name="form1">Load 30 sản phẩm
                                sale</button>
                        </div>
                    </div>
                    <div class="form-group">
                    </div>
                </div>
        </div>

        </form>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="box box-aqua">

                <div class="box-body">
                    <?php  $str = '<div class="blog-posts hfeed index-post-wrap">'?>
                    <?php
                    $i = 0;
                    $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE discounted = 'true' AND ecat_id =? order by import_date,savings_percent desc limit 30");
                    $statement->execute(array($insert_category)); //asin is key
                    $statement->execute();
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                    $fixedString = "スポンサー広告 - ";
                    
                    foreach ($result as $row) {
                        $i++;
                        $title_remove = str_replace($fixedString, '', $row['p_name']);
                        $cleanedString =  mb_convert_encoding($title_remove, 'UTF-8', 'UTF-8');
                        ?>
                        <?php $str .= htmlentities('
                        <article class="blog-post hentry index-post post-0">
                            <a class="entry-image-wrap is-image"
                                href="' . $row['url'] . '"  target ="_blank"
                                title="' . $row['p_name'] . '">
                                <svg class="entry-thumb lazy-ify"
                                    data-image="' . $row['thumbnail'] . '"></svg>
                                    
                            </a>

                                <div class="entry-header">
                                    <div class="entry-meta mi">
                                    <a class="entry-tag" href="' . $row['url'] . '" target ="_blank"
                                        rel="tag">amazon-sale</a>
                                    </div>
                                <h4 class="entry-title"><a class="entry-title-link"
                                    href="' . $row['url'] . '" rel="bookmark"  target ="_blank"  title="' . $row['p_name'] . '">' .mb_convert_encoding(substr(string: $cleanedString,offset: 0, length: 60),to_encoding: 'UTF-8',from_encoding: 'UTF-8').'</a></h4>
                                <a class= "button yellow" href = "' . $row['url'] . '" target ="_blank"> Giảm giá '. $row['savings_percent'].' % </a>

                                <p class="entry-excerpt excerpt"><span>❌ Giá gốc: '. $row['before_price'].'</span>
                                  <p class="entry-excerpt excerpt"><span>✅ Giá sale: '. $row['current_price'].'</span>
                                
                                
                                </p>

                                <div class="author-row"> 
                                    <div><span class="author-name">Ngày cập nhật: </span><span class="on sp">•</span><time class="published">'. $row['import_date'].'</time></div>
                                </div>
                        </div>
                    </article>'
                        ); ?>
                        <?php
                    }?>
                     <?php $str .= '</div>' ?>
                  <textarea rows='10' cols='160'> <?php echo $str ;?></textarea>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<?php require_once 'footer.php'; ?>