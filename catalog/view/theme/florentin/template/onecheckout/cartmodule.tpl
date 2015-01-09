<div id="cartmodule">
	<?php if ($coupon_status || $reward_status || $voucher_status) { ?>
		<select name="discount_select">
			<option>Применить скидку</option>
			<?php if($coupon_status) { ?>
				<option value="coupon" <?php if (!empty($coupon)) echo 'selected="selected"'; ?> ><?php echo $coupon_heading_title; ?></option>
			<?php } ?>
			<?php if($reward_status) { ?>
				<option value="reward" <?php if (!empty($reward)) echo 'selected="selected"'; ?> ><?php echo $reward_heading_title; ?></option>
			<?php } ?>
			<?php if($voucher_status) { ?>
				<option value="voucher"><?php echo $voucher_heading_title; ?></option>
			<?php } ?>
		</select>
	<?php } ?>

	<?php if($coupon_status) { ?>
		<div class="cart-module" id="coupon">
			<label><?php echo $entry_coupon; ?></label>
			<input type="text" name="coupon" id="couponInput" value="<?php echo $coupon; ?>" class="middle-field" />
			<a id="button-coupon" class="button treangle"><span class="treangle"></span></a></div>
		</div>
	<?php } ?>

	<?php if($reward_status) { ?>
		<div class="cart-module" id="reward">
			<label><?php echo $entry_reward; ?></label>
			<input type="text" name="reward" value="<?php echo $reward; ?>" class="middle-field" />
			<a id="button-reward" class="button treangle"><span class="treangle"></span></a></div>
		</div>
	<?php } ?>

	<div class="cart-module" id="voucher">
		<label><?php echo $entry_voucher; ?></label>
		<input type="text" name="voucher" value="<?php echo $voucher; ?>" class="middle-field" />
		<a id="button-voucher" class="button treangle"><span class="treangle"></span></a></div>
	</div>
</div>

<style type="text/css">
.cart-module {
	display:none;
}
.cart-module > div {
	display: block;
}
.cart-module label {
	margin-top:13px;
}
.cart-module .cart-heading {
	border: 1px solid #DBDEE1;
	padding: 8px 8px 8px 22px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 13px;
	color: #555555;
	margin-bottom: 15px;
	cursor: pointer;
	background: #F8F8F8 url('catalog/view/theme/florentin/image/cart-right.png') 10px 50% no-repeat;
}
.cart-module .active {
	background: #F8F8F8 url('catalog/view/theme/florentin/image/cart-down.png') 7px 50% no-repeat;
}
.cart-module .cart-content {
	padding: 0px 0px 15px 0px;
	overflow: auto;
	font-family: Arial, Helvetica, sans-serif;
	font-size:12px;
}
.onecheckout-content select[name="discount_select"] {
	width:240px;
}
</style>
<script type="text/javascript"><!--
	$('select[name="discount_select"]').bind('change', function() {
		discont_type = $(this).val();
		$('.cart-module').hide();
		$('.cart-module#' + discont_type).show();
	});
	$('select[name="discount_select"]').trigger('change');

	$('#couponInput').keypress(function (e) {
		if (e.which == 13) {
			confirmCoupon();
			return false;
		}
	});
//--></script>