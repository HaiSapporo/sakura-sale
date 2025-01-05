<?php require_once ('header.php'); ?>

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
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th width="10">#</th>
								<th>Hình Ảnh</th>
								<th width="200">Sản phẩm</th>
								<th width="80">Giá gốc</th>
								<th width="60">Giá sale</th>
								<th width="60">Sale</th>
								<th width="60">Link</th>
								<th width="60">Tìm kiếm</th>
								<th width="60">Category</th>

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
									<td><?php echo $i; ?></td>
									<td style="width:130px;">
										<a href="<?php echo $row['url']; ?>" target="_blank">
											<img src="<?php echo $row['thumbnail']; ?>" alt="<?php echo $row['p_name']; ?>"
												style="width:100px;">
										</a>
									</td>
									<td><a href="<?php echo $row['url']; ?>" target="_blank">
											<?php echo mb_strimwidth($row['p_name'], 10, 40); ?>
										</a></td>

									<td><?php echo format_yen_for_display($row['p_old_price']); ?></td>
									<td><?php echo format_yen_for_display($row['p_current_price']); ?></td>
									<td style="color: red;">
										<a href="<?php echo $row['url']; ?>" target="_blank">
										<button type="button" class="btn btn-danger"><?php echo $row['savings_percent']; ?>%</button>
											
										</a>
									</td>
									<td>
									<a href="<?php echo $row['url']; ?>" target="_blank">
									<button type="button" class="btn btn-warning">Amazon</button>
									</a>
									


									<td>
									<?php echo $row['search_keyword']; ?>
									</td>
									<td><?php echo $row['tcat_name']; ?><br><?php echo $row['mcat_name']; ?><br><?php echo $row['ecat_name']; ?>
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


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Delete Confirmation</h4>
			</div>
			<div class="modal-body">
				<p>Are you sure want to delete this item?</p>
				<p style="color:red;">Be careful! This product will be deleted from the order table, payment table, size
					table, color table and rating table also.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
				<a class="btn btn-danger btn-ok">Delete</a>
			</div>
		</div>
	</div>
</div>

<?php require_once ('footer.php'); ?>