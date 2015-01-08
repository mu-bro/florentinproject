<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>

<?php if ($information_id == 11 && !empty($products)) { ?>
  <div class="product-grid spec">
    <?php foreach ($products as $product) { ?>
    <div>
		<div class="image_block">
			<?php if ($product['thumb']) { ?>
				<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
			<?php } ?>
			<?php if ($product['isNew']) { ?>
				<div class="label isNew"></div>
			<?php } ?>
			<?php if ($product['isTwoDaysDelivery']) { ?>
				<div class="label d2days"></div>
			<?php } ?>
			<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
			<?php if ($product['price']) { ?>
				<div class="price">
					<?php if (!$product['special']) { ?>
						<?php echo $product['price']; ?>
					<?php } else { ?>
						<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
					<?php } ?>
						<?php if ($product['tax']) { ?>
						<br />
						<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
					<?php } ?>
				</div>
			<?php } ?>
			<div class="cart">
				<input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button big_b" />
			</div>
		</div>
		<div class="description"><?php echo $product['short_descr']; ?></div>
    </div>
    <?php } ?>
  </div>
<?php } ?>
<div id="content" class="no_margin"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>  
  <?php if ($need_left_description) { ?>
	<div class="main_info_block">
		<div class="left_description">
			<?php if (!empty($left_description)) { ?>
				<h1><?php echo $heading_title; ?></h1>
			<?php } ?>
			<?php echo $left_description; ?>
		</div>
		<div class="right_description">
			<?php if (empty($left_description)) { ?>
				<h1><?php echo $heading_title; ?></h1>
			<?php } ?>
			<?php echo $description; ?>						
		</div>
		<div class="clear"></div>
	</div>
  <?php } else { ?>
	<?php echo $description; ?>
  <?php } ?>
  <?php echo $content_bottom; ?></div>

<?php if (in_array($information_id,array(8,9,12))) { ?>
<script type="text/javascript"><!--
	$('#quick_order').fancybox();
//--></script>
<div style="display:none;">
	<div id="quick_order_box">
		<h1>Отправить заявку</h1>
		<p class="sub_text">
			Заполните форму и наш менеджер свяжется с Вами и уточнит все детали заказа!
		</p>
		<table class="form">
			<tr>
				<td>
					<input type="text" name="name" value="<?php echo $this->customer->getFirstName(); ?>" placeholder="Ваше имя" />
				</td>
				<td class="required_td"><span class="required">*</span></td>
				<td id="for_name"></td>
			</tr>
			<tr>
				<td>
					<input type="text" class="phone_mask" name="phone" value="<?php echo $this->customer->getTelephone(); ?>" placeholder="Ваш телефон" />
				</td>
				<td class="required_td"><span class="required">*</span></td>
				<td id="for_phone"></td>
			</tr>
			<?php if ($information_id == 9) { ?>
			<tr>
				<td>
					<input type="text" name="company" value="" placeholder="Название компании" />
				</td>
				<td></td>
				<td id="for_company"></td>
			</tr>
			<?php } ?>
        </table>
		<p class="sub_text">
			Перед отправкой внимательно проверьте номер Вашего телефона!
		</p>
		<a id="quick_order_send" class="button big_b blue_b" >Отправить</a>
	</div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#quick_order_send').bind('click', function() {
		name = $('#quick_order_box input[name="name"]').val();
		phone = $('#quick_order_box input[name="phone"]').val();
		<?php if ($information_id == 9) { ?>
			company = $('#quick_order_box input[name="company"]').val();
		<?php } ?>
		$.ajax({
			url: 'index.php?route=information/information/request',
			type: 'post',
			dataType: 'json',
			data: 'name=' + name + '&phone=' + phone <?php if ($information_id == 9) { ?> + '&company=' + company <?php } ?>,
			beforeSend: function() {
				$('.success, .warning, .error, .wait').remove();
				$('#quick_order_send').attr('disabled', true);
				$('#quick_order_send').after('<img class="wait" src="catalog/view/theme/default/image/loading.gif" alt="" />');
			},
			complete: function() {
				$('#button-review').attr('disabled', false);
				$('.wait').remove();
			},
			success: function(json) {
				if (json['error']) {
					if (json['error']) {
						for (i in json['error']) {

							$('#quick_order_box td#for_' + i).html('<span class="error">' + json['error'][i] + '</span>');
						}
					}
				}

				if (json['success']) {
					$("#quick_order_box").prepend('<div class="success">' + json['success'] + '</div>');
					$('.fancybox-close').trigger('click');

					$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					$('.success').fadeIn('slow');
					$('html, body').animate({ scrollTop: 0 }, 'slow');
				}
			}
		});
	});

	$(function(){
		$.mask.definitions['x'] = '[0-9]';
	});
	$(function(){
		$('.phone_mask').mask("+7 (xxx) xxx xxxx", {placeholder:"_"});
	});


});
//--></script>
<?php } ?>  
<?php echo $footer; ?>