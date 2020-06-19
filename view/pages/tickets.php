<h2 class="hidden">Tickets</h2>
<section class="tickets ticketpage__intro">
    <h2 class="hidden">Tickets</h2>

    <div class="tickets__wrapper">
        <img src="assets/img/tickets.svg" alt="tickets">
        <div class="tickets__innerwrapper">
            <p class="tickets__innerwrapper--top"><span>Entrance tickets</span> are on the house</p>
            <p class="tickets__innerwrapper--bottom">You’re welcome <span>;-)</span></p>
        </div>
    </div>
</section>
<div class="ticketpage__wrapper">
    <div class="ticketpage__container">
        <div class="ticketpage__innerwrapper">


        <?php $count = 0; foreach($kinds as $kind): $count +=1 ?>
        
        <section class="ticketpage__part
        <?php
        if ($kind['id'] == '4') {
            echo 'ticketpage__part--discount';
        };?>
        ">
        <?php
        if ($kind['id'] == '4') {
            echo '
            <div class="discountmarker__wrapper">
                <div class="discountmarker">-25&#37;</div>
            </div>
            ';
        };?>
                <div>
                    <h3 class="ticketpage__subtitle"><?php echo $kind['title']?></h3>
                    <p class="ticketpage__desc"><?php echo $kind['description']?></p>
                </div>
                <div class="ticketpage__part--bottom">
                    <div class="ticketpage__price">Price: <span><?php echo $kind['price']?>&euro;</span></div>
                    <a href="index.php?page=ticket&id=<?php echo $count?>"><input type="submit" value="Buy" class="ticketpage__submitbutton"></a>
                </div>
             
            </section>
            <?php endforeach; ?>


        </section>
    </div>
</div>