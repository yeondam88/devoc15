<!-- <?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="language"><?php echo $text_language; ?><br />
    <?php foreach ($languages as $language) { ?>
    <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();" />
    <?php } ?>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
<?php } ?>
 -->

 <?php if (count($languages) > 1) { ?>
      <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="language_form">
        <div id="language_switcher" class="switcher">
          <?php foreach ($languages as $language) { ?>
          <?php if ($language['code'] == $language_code) { ?>
          <span class="s_selected"> <?php echo $language['name']; ?></span>
          <?php } ?>
          <?php } ?>
          <ul class="option">
            <?php foreach ($languages as $language) { ?>
            <li><a href="javascript:;" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();"><img src="<?php echo "". HTTPS_SERVER ."image/flags/" .  $language['image'] .""; ?>" alt="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <input class="s_hidden" type="hidden" name="language_code" value="" />
        <input class="s_hidden" type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
      </form>
<?php } ?>
