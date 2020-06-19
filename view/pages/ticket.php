<h2 class="hidden">Ticket</h2>
    
</section>
<div class="ticketdetail__wrapper">
    <div class="ticketdetail__container">
        <div class="ticketdetail__innerwrapper">
         <section class="ticketdetail__part">
                <div>
                    <h3 class="ticketdetail__subtitle"><?php echo $kind['title'] ?></h3>
                    <p class="ticketdetail__desc"><?php echo $kind['description'] ?></p>
                </div>
                <form method="post" action="index.php?page=cart" class="ticketdetail__form">

                    <label class="ticketdetail__field">Choose event:
                        <select name="location">
                            <?php foreach($locations as $location): ?>
                            <option value="<?php echo $location['id'] ?>"><?php echo $location['location'] ?>,
                                <?php echo strftime("%d/%m/%Y", strtotime($location['date'])); ?></option>
                            <?php endforeach; ?>
                        </select>
                    </label>

                    <label class="ticketdetail__field">Choose truck:
                        <select name="truck">
                            <?php foreach($trucks as $truck): ?>
                            <option value="<?php echo $truck['id'] ?>"><?php echo $truck['name'] ?> truck</option>
                            <?php if(isset($_POST['number']))
                                $_SESSION['cart'] = $_POST['type']; 
                                endforeach; ?>
                        </select>
                    </label>

                    <?php if ($_GET['id']=="1"){?>
                        <label class="ticketdetail__field">Choose timeslot:
                        <select name="hour">
                            <?php foreach($timeslots as $timeslot): ?>
                            <option value="<?php echo $timeslot['id'] ?>">
                                <?php echo strftime("%H:%M", strtotime($timeslot['timeslot'])); ?></option>
                            <?php endforeach; ?>
                        </select>
                    </label>
                    <?php } ?>

                    <div class="ticketdetail__part--bottom">
                        <div class="ticketdetail__price">Price: <span><?php echo $kind['price'] ?>&euro;</span></div>
                        <input type="hidden" name="id" value="<?php echo $kind['id'];?>" />
                        <button class="ticketdetail__submitbutton" type="submit" name="action" value="add">Add to cart</button>
                    </div>
                </form>

            </section>

            
    </div>
</div>