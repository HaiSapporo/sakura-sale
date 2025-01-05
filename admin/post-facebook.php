<?php require_once 'header.php'; ?>
<?php
 $insert_category =2;
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
        <h1>Add Product</h1>
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
                                    // The value you want to be selected by default
                                    $default_value = "Option 3";
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
                            <button type="submit" class="btn btn-success pull-left" name="form1">Load</button>
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
                    <ul class="todo-list ui-sortable">
                        <?php
                        $i = 0;
                        $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE discounted = 'true' AND ecat_id =? order by import_date,savings_percent desc limit 10");
			            $statement->execute(array($insert_category)); //asin is key
                        $statement->execute();
                        $fixedStringx = "スポンサー広告 - ";
                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                        foreach ($result as $row) {
                            $i++;
                            ?>
                                <li>
                                <span>📦</span>
                                <?php
                                
                                $title_remove = str_replace($fixedStringx, '', $row['title']);
                                $cleanedString =  mb_convert_encoding($title_remove, 'UTF-8', 'UTF-8');


                                ?>
                                <?php echo mb_convert_encoding(substr(string: $cleanedString,offset: 0, length: 60),to_encoding: 'UTF-8',from_encoding: 'UTF-8');?>
                                <span class="label label-danger">Sale:
                                    <?php echo $row['savings_percent']; ?>%
                                </span>
                                <span class="label label-warning">⬇:
                                    <?php echo $row['current_price']; ?>円 
                                </span>
                                <div class="tools">
                                </div>
                            </li>

                            <li>
                                <span>→</span>
                                <span class="text"><a href="<?php echo $row['url']; ?>" target="_blank"><?php echo $row['url']; ?></a></span>
                                <span class="label label-danger">Sale:
                                    <?php echo $row['savings_percent']; ?>%
                                </span>
                                <span class="label label-warning">⬇:
                                    <?php echo $row['current_price']; ?>円 
                                </span>
                              
                                <div class="tools">
                                </div>
                            </li>

                            <?php
                        }
                        ?>
                    </ul>
                    <ul class="todo-list ui-sortable">
                        <?php
                        $i = 0;
                        $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE discounted = 'true' AND ecat_id =? order by import_date,savings_percent desc limit 10");
			            $statement->execute(array($insert_category)); //asin is key
                        $statement->execute();
                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                        $fixedString = "スポンサー広告 - ";
                        foreach ($result as $row) {
                            $i++;
                            ?>
                            <li>
                                <span>📦</span>
                                <?php
                                
                                $title_remove = str_replace($fixedString, '', $row['title']);
                                $cleanedString =  mb_convert_encoding($title_remove, 'UTF-8', 'UTF-8');


                                ?>
                                <?php echo mb_convert_encoding(substr(string: $cleanedString,offset: 0, length: 60),to_encoding: 'UTF-8',from_encoding: 'UTF-8');?>
                                <span class="label label-danger">Sale:
                                    <?php echo $row['savings_percent']; ?>%
                                </span>
                                <span class="label label-warning">⬇:
                                    <?php echo $row['current_price']; ?>円 
                                </span>
                                <div class="tools">
                                </div>
                            </li>

                            <?php
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<?php require_once 'footer.php'; ?>