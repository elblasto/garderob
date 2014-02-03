<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($payment_methods) { ?>
<p><?php echo $text_payment_method; ?></p>
<table class="radio">
	<?php
		$onlinePay = array();
		$offlinePay = array();

		foreach($payment_methods as $pm) {
			if( $pm['sort_order'] == '1' ) {
				$onlinePay[] = $pm;
			} else if( $pm['sort_order'] == '2' ) {
				$offlinePay[] = $pm;
			}
		}
	?>
	<tr class="titleOfPay"><td colspan="2">Online оплата</td></tr>
		<?php foreach ($onlinePay as $payment_method) : ?>
			<tr class="highlight">
				<td><?php if ($payment_method['code'] == $code || !$code) { ?>
					<?php $code = $payment_method['code']; ?>
					<input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
					<?php } ?></td>
				<td><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></label></td>
			</tr>
		<?php endforeach; ?>
	<tr class="titleOfPay"><td colspan="2">Offline оплата</td></tr>
		<?php foreach ($offlinePay as $payment_method) : ?>
		<tr class="highlight">
			<td><?php if ($payment_method['code'] == $code || !$code) { ?>
				<?php $code = $payment_method['code']; ?>
				<input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
				<?php } else { ?>
				<input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
				<?php } ?></td>
			<td><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></label></td>
		</tr>
	<?php endforeach; ?>
</table>
<br />
<?php } ?>
<b><?php echo $text_comments; ?></b>
<textarea name="comment" rows="8" style="width: 98%;"><?php echo $comment; ?></textarea>
<br />
<br />
<?php if ($text_agree) { ?>
<div class="buttons">
  <div class="right"><?php echo $text_agree; ?>
    <?php if ($agree) { ?>
    <input type="checkbox" name="agree" value="1" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="agree" value="1" />
    <?php } ?>
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button" />
  </div>
</div>
<?php } else { ?>
<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button" />
  </div>
</div>
<?php } ?>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 640,
	height: 480
});
//--></script> 