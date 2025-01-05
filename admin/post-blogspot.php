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
                    <?php $str = "" ?>
                    <?php
                    $i = 0;
                    $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE discounted = 'true' AND ecat_id =? order by import_date,savings_percent desc limit 30");
                    $statement->execute(array($insert_category)); // ecat_id key 
                    $statement->execute();
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);


                    foreach ($result as $row) {
                        $i++;
                        ?>
                        <?php $str .= htmlentities('<article class="article">

                    <div class="article-img">
                    <img alt="Hướng dẫn đăng ký tài khoản Amazon" data-src="' . $row['thumbnail'] . '" height="180" src="' . $row['thumbnail'] . '" width="320">
                    </div>
                    <p class="article-title"> <a href="' . $row['url'] . '" target="_blank">' . $row['p_name'] . '</a></p>
                    <p class="article-snippet">
                    ↘️ Giảm '. $row['savings_percent'].' %
                    ☑️ Giá gốc '. $row['before_price'].' JPY
                    ☑️ Giá đã giảm '. $row['current_price'].' JPY
                    </p>
                    
                    <a aria-label="' . $row['p_name'] . '" href="' . $row['url'] . '" target="_blank"></a>
                    </article>
                                <!--blank row -->
                                <div style="width: 100%; height: 1em"></div>'


                        ); ?>
                        <?php


                    } ?>
                    <textarea rows='10' cols='160'> <?php echo $str; ?></textarea>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<?php require_once 'footer.php'; ?>