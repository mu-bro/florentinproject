<?php if ($products) { ?>
	<?php foreach ($products as $product) { ?>
	<tr>
		<td style="text-align: center;"><?php if ($product['selected']) { ?>
		<input type="checkbox" name="selected[]" value="<?php echo $product['product_id']; ?>" checked="checked" />
		<?php } else { ?>
		<input type="checkbox" name="selected[]" value="<?php echo $product['product_id']; ?>" />
		<?php } ?></td>
		<td class="center"><img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" style="padding: 1px; border: 1px solid #DDDDDD;" /></td>
		<td class="left"><?php echo $product['name']; ?></td>
		<?php if (!$this->user->isManager()) { ?>
		<td class="left">
			<?php foreach ($product['stores'] as $product_store_id) { ?>
				<?php echo $stores[$product_store_id]['config_name']; ?> - <?php echo $stores[$product_store_id]['zone']; ?><br/>
			<?php } ?>
		</td>
		<?php } ?>
		<td class="left"><?php if ($product['special']) { ?>
		<span style="text-decoration: line-through;"><?php echo $product['price']; ?></span><br/>
		<span style="color: #b00;"><?php echo $product['special']; ?></span>
		<?php } else { ?>
		<?php echo $product['price']; ?>
		<?php } ?></td>
		<td class="right"><?php if ($product['quantity'] <= 0) { ?>
		<span style="color: #FF0000;"><?php echo $product['quantity']; ?></span>
		<?php } elseif ($product['quantity'] <= 5) { ?>
		<span style="color: #FFA500;"><?php echo $product['quantity']; ?></span>
		<?php } else { ?>
		<span style="color: #008000;"><?php echo $product['quantity']; ?></span>
		<?php } ?></td>
		<td class="left"><?php echo $product['status']; ?></td>
		<td class="right"><?php foreach ($product['action'] as $action) { ?>
		[ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
		<?php } ?></td>
	</tr>
	<?php } ?>
<?php } else { ?>
	<tr>
		<td class="center" colspan="10"><?php echo $text_no_results; ?></td>
	</tr>
<?php } ?>