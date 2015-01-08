<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="no_margin"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1 class="cart_title"><?php echo $heading_title; ?></h1>
  <div class="cart-info reward">
		<table>
			<thead>
			<tr>
				<td class="price"><?php echo $column_date_added; ?></td>
				<td class="price"><?php echo $column_description; ?></td>
				<td class="price"><?php echo $column_points; ?></td>
			</tr>
			</thead>
			<tbody>
			<?php if ($rewards) { ?>
			<?php foreach ($rewards  as $reward) { ?>
			<tr>
				<td class="price"><?php echo $reward['date_added']; ?></td>
				<td class="price">
					<?php if ($reward['order_id']) { ?>
						<a class="black" href="<?php echo $reward['href']; ?>"><?php echo $reward['description']; ?></a>
					<?php } else { ?>
						<?php echo $reward['description']; ?>
					<?php } ?>
				</td>
				<td class="price"><?php echo $reward['points']; ?></td>
			</tr>
			<?php } ?>
			<?php } else { ?>
			<tr>
				<td class="center" colspan="3"><?php echo $text_empty; ?></td>
			</tr>
			<?php } ?>
			</tbody>
		</table>
	</div>
		<div class="after_cart_block" style="margin:0px;">
			<div class="cart-total">
				<table id="total">
				<tr>
					<td class="right name"><?php echo $text_total; ?></td>
					<td class="right value"><?php echo $total; ?></td>
				</tr>
				</table>
			</div>
			<div class="clear"></div>
		</div>	  
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>