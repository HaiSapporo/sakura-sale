<?php require_once 'header.php'; ?>
<section class="content-header">
    <div class="content-header-left">
        <h1>Danh sách sale trên Amazon</h1>
    </div>
    <div class="content-header-right">

    </div>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-body table-responsive">
                    <table id="example1" class="table table-sm cards">
                        <thead>
                            <tr>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 0;
                            $statement = $pdo->prepare("SELECT						
														t1.p_id,
														t1.p_name,
														t1.p_old_price,
														t1.p_current_price,
														t1.p_qty,
														t1.thumbnail,
														t1.p_featured_photo,
														t1.url,
														t1.search_keyword,
														t1.savings_percent,
														t1.p_is_active,
														t1.ecat_id,
														t1.discounted,
														t2.ecat_id,
														t2.ecat_name,
														t3.mcat_id,
														t3.mcat_name,
														t4.tcat_id,
														t4.tcat_name
							                           	FROM tbl_product t1
							                           	JOIN tbl_end_category t2
							                           	ON t1.ecat_id = t2.ecat_id
							                           	JOIN tbl_mid_category t3
							                           	ON t2.mcat_id = t3.mcat_id
							                           	JOIN tbl_top_category t4
							                           	ON t3.tcat_id = t4.tcat_id
														WHERE t1.discounted ='true'
														AND t1.savings_percent > 5
							                           	ORDER BY t1.p_id DESC
							                           	");
                            $statement->execute();
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                            foreach ($result as $row) {
                                $i++;
                                ?>

                                <tr>
                                    <td>
                                        <div class="card">
                                            <a href="<?php echo $row['url']; ?>" target="_blank">
                                                <img src="<?php echo $row['thumbnail']; ?>"
                                                    alt="<?php echo $row['p_name']; ?>"
                                                    style="width:100px; max-height:150px;">
                                            </a>

                                            <div class="card-body">
                                                <!--               <div class="separator mx-3"></div> -->
                                                <div class="d-flex flex-row justify-content-between px-3">
                                                    <a href="<?php echo $row['url']; ?>" target="_blank">
                                                        <?php echo mb_strimwidth($row['p_name'], 10, 40); ?>
                                                    </a>
                                                </div>
                                                <hr class=" mx-3">
                                                <div class="d-flex flex-row justify-content-between px-3 pb-1">
                                                    <span class="text-muted">Giá gốc:
                                                        <?php echo format_yen_for_display($row['p_old_price']); ?></span>
                                                    <h5 class="mb-0"><span class="text-zain"></span>Giá sale:
                                                        <?php echo format_yen_for_display($row['p_current_price']); ?>
                                                        <h5 class="mb-0"><span class="text-zain"></span> Sale:
                                                        <?php echo $row['savings_percent']; ?>%
                                                </div>
                                              

                                                <hr class=" mx-3">
                                                <div class="mt-3 py-1"><a href="<?php echo $row['url']; ?>" target="_blank">
                                                        <button type="button" class="btn btn-warning">Amazon</button>
                                                    </a>
                                                </div>
                                            </div>
                                    </td>
                                </tr>
                                <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</section>
<?php require_once 'footer.php'; ?>