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
                    <?php  $str = ""?>
                    <?php
                    $i = 0;
                    $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE discounted = 'true' AND ecat_id =? order by import_date,savings_percent desc limit 30");
                    $statement->execute(array($insert_category)); //asin is key
                    $statement->execute();
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                   
                    
                    foreach ($result as $row) {
                        $i++;
                        ?>
                        <?php $str .= htmlentities('<div class="affiliate-link-box">
                                <a href="' . $row['url'] . '" target="_blank"><img src="' . $row['thumbnail'] . '" title="' . $row['p_name'] . '"></a>
                                <div class="affiliate-box-information">
                                <span class="meta_tag">Cập nhật ngày: '. $row['import_date'].'</span>
                                <a href="' . $row['url'] . '" target="_blank"><p class="product-name">"' . $row['p_name'] . '"</p></a>
                                <p class="maker-name">' . $row['p_name'] . '</p>
                                <div class="affiliate-link-buttons">
                                <div class="affiliate-button-yahoo"><a href="' . $row['url'] . '" target="_blank">Giảm '. $row['savings_percent'].' </a>%</div>
                                <div class="affiliate-button-yahoo"><a href="' . $row['url'] . '" target="_blank">Giá gốc '. $row['before_price'].' </a>JPY</div>
                                <div class="affiliate-button-yahoo"><a href="' . $row['url'] . '" target="_blank">Giá sau khi giảm '. $row['current_price'].' </a>JPY</div>
                                <div class="affiliate-button-amazon"><a href="' . $row['url'] . '" target="_blank">Amazon</a></div>
                                </div>
                                </div>
                                 </div>'
                        ); ?>
                        <?php
                                    
                         
                        
                    }?>
                  <textarea rows='10' cols='160'> <?php echo $str ;?></textarea>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<?php require_once 'footer.php'; ?>