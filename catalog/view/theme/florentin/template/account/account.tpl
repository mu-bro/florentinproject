<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="content">
    <ul>
      <li><a class="black" href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
      <li><a class="black" href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
      <li><a class="black" href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <?php if ($reward) { ?>
		<li><a class="black" href="<?php echo $reward; ?>"><?php echo $text_reward; ?> (<?php echo $reward_total; ?>)</a></li>
      <?php } ?>
      <li><a class="black" href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 