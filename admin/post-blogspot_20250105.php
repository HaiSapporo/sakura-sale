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
                    $statement->execute(array($insert_category)); //asin is key
                    $statement->execute();
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);


                    foreach ($result as $row) {
                        $i++;
                        ?>
                        <?php $str .= htmlentities('<div class="easyLink-box">
                        <div class="easyLink-img">
                            <p class="easyLink-img-box"> <span><img src="' . $row['thumbnail'] . '"
                                alt="" class="easyLink-img-pht js-item-image" width="148.32" height="240"></span> <a href="#"
                            class="easyLink-arrow-left"><img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAACPklEQVRYhdWYTW7aQBSAPw8OoBaspApdIKW7ChX5DPzcggU3QogNHIGDcAKExKat1C6yQQWVNiIRqQru4tnEWHaC7XFQvx0ez/hj5tlv3hjEpwBYQAkoAnkg57btgD/AFtgAd8BjnMGNGPddARVXJA4bYAmsAUeHkAXcILORhi1wi8xaIiHlilynFAmyQsT2YY25sIuACXwELjXLALxBZv1XmFSYkAnU3I5ZkUf+7DooFRRSyMxkKeNhAmXgJ75gDwp9IJtliiIPXAC/vQvK12ihP4BP4dp9NnAsdPP6LkfPNuBJ6B3pvzNpKCIf3oNQ5XwuByogQgXip4NIbNtmMpkk6VoCCgpfQKWhXC7T6/WYTqc0Go2kw1gmGman0+nQ7/epVqtphyqZpAjmer3OcDik3W6nFfEoKuTjFAtveWazmU4ZgLxJdIINRePyhJFTL98T6JHLoVTsbiejkG3nyYzHY2q1GoPBgN0uVtdT2BnAJxJmd9u2GY1Goa+5YZy6Oz7iQSFby0TM53NarRbdbpfFYpF0GD9bhWzCE+M4js5l3BhI6rDTjOLHW8Zms5mk+9xb6Boa81lCNsBn7/1dntPEZQlP2481KYJbA1vX4SDkILXSubh1HY7SxiMS4K9RcfhZAT+8H8E8dofsj2In3ITcA995pgxykIryEqmbsmQLfCWQusIy/R4JMAupmbLgAfgC/A02RG099khFeYH+mFoB34hI6v/VcUzwvivgPfA2psg98hZpO7AKkumR3j/xxILJyWXZqQAAAABJRU5ErkJggg=="
                        alt=""></a> <a href="#" class="easyLink-arrow-right"><img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAACPElEQVRYhdWYzYraUBSAv1wzKu0oM2XsQphCF0Vw2SeI7+EbuPQxXPgUok+h4BsIbtpCuxgQqTK24pTMUE0XJ9EYEjXJdaTfztz8fN5zcs+5MYhPDigC10AeyAIZd2wNvAA2sAKWwHOcmxsxzrsFSq5IHFbADFgAjg6hInCPzEYabOABmbVEQsoVuUspEmSOiG3CBjNhBwET+ATcaJYBeIPM+q8wqTAhE6i4F56LLPJnF0GpoJBCZuacMh4mUAAe8SV7UOgD5wlTFFngCvjtHVC+wSL6E/gU7txnA/tC96/vsvdsA3ZC70i/zqQhjyy8W6HS5Vy2lECEcsQvBwwGA6rVqk6hayCn8CVUHCzLYjQa0Wq1KBQKuqSKBvARyaFYOM6uTk4mE5rNJr1eL63Qo0JDMpfLZbrdLv1+P20Y8wpZnLRQq9XShjFrAJ85vS/a4g9ZGAnD6Kjj5yRDKUUmE9VMHLgOaTu1sV6vabfbVCoVOp1O7MtNpAc2dcgMh0MajQbj8TjpLV4U0lqmYjqdUq/XsSwrjQyArZAmPBHB8BxL9BNYmRxpuqPQEJ4wlt7rXiFBPdPMCvjivfazS5q4zGDXfizQkNwpsF2HrZCD7JUuxYPrsNfkPyO90WvsOPzMgZ/ej+DavkT6I20F9whPwA8ObIMcZEd5g6bV+wA28I1A6QqrfhskwYrInukc/AG+An+DA1HleIPsKK/Qn1Nz4DsRRf2/+hwTPO8WeA+8jSnyhLxF2j5YBTnrJ71/1ZGassFg69MAAAAASUVORK5CYII="
                        alt=""></a> 
                     </p>
                     </div>
                        <div class="easyLink-info">
                        <p class="easyLink-info-name"><a
                    href="' . $row['url'] . '"
                    rel="nofollow" referrerpolicy="no-referrer-when-downgrade">' . $row['p_name'] . '</a></p>

                        <p class="easyLink-info-btn"> <a
                    href="' . $row['url'] . '"
                    class="easyLink-info-btn-amazon" rel="nofollow" referrerpolicy="no-referrer-when-downgrade"
                    style="background:#f79256" target="_blank">Amazon</a><a
                    href="' . $row['url'] . '"
                    class="easyLink-info-btn-rakuten" rel="nofollow" referrerpolicy="no-referrer-when-downgrade"
                    style="background:#f76956" target="_blank">Giảm ' . $row['savings_percent'] . '%</a>
                    <a href="' . $row['url'] . '"
                    class="easyLink-info-btn-yahoo" rel="nofollow" referrerpolicy="no-referrer-when-downgrade"
                    style="background:#66a7ff" target="_blank">Giá sau khi giảm '. $row['current_price'].' JPY</a></p>
                </div>
            </div>
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