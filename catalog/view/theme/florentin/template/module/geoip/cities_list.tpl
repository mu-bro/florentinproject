<ul class="choose-city-ul">
<?php foreach ($columns as $column) { ?>
    <?php foreach ($column as $id => $title) { ?>
        <li>
            <a href="#" class="choose-city" data-id="<?php echo $id; ?>">
                <?php echo $title; ?>
            </a>
        </li>
    <?php } ?>
<?php } ?>
</ul>