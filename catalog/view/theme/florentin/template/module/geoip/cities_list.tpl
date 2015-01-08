<div class="geoip-block">
    <input id="geoip-popup-input" type="text" placeholder="<?php echo $text_search_placeholder; ?>">
</div>
<div class="border"></div>
<?php foreach ($columns as $column) { ?>
    <div class="column">
        <?php foreach ($column as $id => $title) { ?>
            <div class="i">
                <a href="#" class="choose-city" data-id="<?php echo $id; ?>">
                    <?php echo $title; ?>
                </a>
            </div>
        <?php } ?>
    </div>
<?php } ?>