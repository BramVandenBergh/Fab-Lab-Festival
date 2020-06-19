  <div class="cart__wrapper">
  <div id="content" class="cart">
    <form action="index.php?page=cart" method="post" id="cartform">
      <table class='cart'>
        <thead>
          <tr>
            <th class='product-description'></th>
            <th class='price'>Price</th>
            <th class='quantity'>Quantity</th>
            <th class='remove-item'></th>
            <th class='total'>Total</th>
          </tr>
        </thead>

        <tbody>

          <?php
          $total = 0;
          foreach($_SESSION['cart'] as $item) {
            $itemTotal = $item['kind']['price'] * $item['quantity'];
            $total += $itemTotal;
          ?>
          <tr class="item">
            <td class='product-description'>
              <?php echo $item['kind']['kind'];?>, <?php echo $item['location']['location'];?>, <?php echo $item['truck']['name'];?> truck
            </td>
            <td class='price'><?php echo money_format("%i", $item['kind']['price']);?></td>
            <td class='quantity'> <input class="text quantity quantitybox" type="text"
                name="quantity[<?php echo $item['kind']['id'];?>]" value="<?php echo $item['quantity'];?>"
                class="replace" /> </td>
            <td class='remove-item'><button type="submit" class="btn remove-from-cart" name="remove"
                value="<?php echo $item['kind']['id'];?>">delete</button></td>
            <td class='total'><?php echo money_format("%i", $itemTotal);?></td>
          </tr>
          <?php
          }
          ?>


        </tbody>
      </table>
      <div class='column two'>
        <p class='order-total'><span>total:</span> <?php echo money_format("%i", $total);?></p>
        <p><button type="submit" id="update-cart" class="btn button__updatecart" name="action" value="update">Update Cart</button></p>

        <p><button class="btn-reversed btn button__checkout" type="submit" id="checkout" name="action" value="checkout">Checkout</button>
        </p>

      </div>
    </form>
  </div>
  </div>