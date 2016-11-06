<!-- <?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="currency"><?php echo $text_currency; ?><br />
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $currency_code) { ?>
    <?php if ($currency['symbol_left']) { ?>
    <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_left']; ?></b></a>
    <?php } else { ?>
    <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_right']; ?></b></a>
    <?php } ?>
    <?php } else { ?>
    <?php if ($currency['symbol_left']) { ?>
    <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();"><?php echo $currency['symbol_left']; ?></a>
    <?php } else { ?>
    <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();"><?php echo $currency['symbol_right']; ?></a>
    <?php } ?>
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
<?php } ?>
 -->
 <?php if (count($currencies) > 1) { ?>
    <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="currency_form">  
      <?php 
       // find out how many languages are active, it's used to check whether a language switcher will be displayed
        $this->load->model('localisation/language');    
        $this->data['languages'] = array(); 
        $number_of_languages = $this->model_localisation_language->getLanguages();    
      if (count($number_of_languages) > 1) {
        // if language selector is displayed, move the currency selector further left
        echo ' <div id="currency_switcher_language" class="switcher">';
      }     
      else {        
        echo  '<div id="currency_switcher" class="switcher">';      
      }
      ?>  
          <?php foreach ($currencies as $currency) { ?>    
          <?php if ($currency['code'] == $currency_code) { ?>
          <span class="s_selected"><?php echo $currency['title']; ?></span>
          <?php } ?>
          <?php } ?>
          <ul class="option">
            <?php foreach ($currencies as $currency) { ?>
            <li><a href="javascript:;" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency_form').submit();"><?php echo $currency['title']; ?></a></li>
            <?php } ?>
          </ul>      
        <input class="s_hidden" type="hidden" name="currency_code" value="" />
        <input class="s_hidden" type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
      </form>
      </div>
<?php } ?>
