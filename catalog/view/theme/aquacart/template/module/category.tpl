<div class="box">
  <h1 class="general_heading"><span><?php echo $heading_title; ?></span></h1>
  <div class="box-content">
    <div class="box-category">
      <ul class="side_bar_nav">
        <?php foreach ($categories as $category) { ?>
        <li>
          <?php if ($category['category_id'] == $category_id) { ?>
          <a href="<?php echo $category['href']; ?>" class="active"><span class="link_span"><?php echo $category['name']; ?></span></a>
          <?php } else { ?>
          <a href="<?php echo $category['href']; ?>"><span class="hover_span"></span><span class="link_span"><?php echo $category['name']; ?></span></a>
          <?php } ?>
          <?php if ($category['children']) { ?>
          <ul>
            <?php foreach ($category['children'] as $child) { ?>
            <li>
              <?php if ($child['category_id'] == $child_id) { ?>
              <a href="<?php echo $child['href']; ?>" class="active"><span class="link_span"><?php echo $child['name']; ?></span></a>
              <?php } else { ?>
              <a href="<?php echo $child['href']; ?>"><span class="hover_span"></span><span class="link_span"><?php echo $child['name']; ?></span></a>
              <?php } ?>
                <?php if ($child['children']) { ?>
                  <ul>
                    <?php foreach ($child['children'] as $subChild) { ?>
                      <li>
                        <?php if ($subChild['category_id'] == $child_id) { ?>
                        <a href="<?php echo $subChild['href']; ?>" class="active"><span class="link_span"><?php echo $subChild['name']; ?></span></a>
                        <?php } else { ?>
                        <a href="<?php echo $subChild['href']; ?>"><span class="hover_span"></span><span class="link_span"><?php echo $subChild['name']; ?></span></a>
                        <?php } ?>
                      </li>
                    <?php } ?>
                  </ul>
                <?php } ?>
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
        </li>
        <?php } ?>
      </ul>
    </div>
  </div>
</div>
<script>
  var $threeStart = $('.side_bar_nav').find('a.active').last();
  while( $threeStart.length ) {
    $threeStart = $threeStart.closest('ul').siblings('a').addClass('active open');
  }
</script>