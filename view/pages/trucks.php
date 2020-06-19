<h2 class="hidden">Trucks</h2>

<section class="mainstage" id="mainstage">
    <div class="mainstage__wrapper">
        <h3 class="mainstage__title">Mainstage</h3>
        <div class="mainstage__container">
            <div class="mainstage__container--block1">
                <p class="mainstage__desc">Every hour there will be a talk, showcase, debate,… about one of the
                    technologies
                    featured at the festival. Check the timetable below &#8595; &#8595; &#8595; </p>
                <article class="mainstage__timetable">
                    <h4 class="timetable__title">Timetable</h4>
                    <ul class="timetable__times">
                        <li class="timetable__time">10:00 Waterjet cutting TED talk</li>
                        <li class="timetable__time">11:00 Raspberry Pi programming</li>
                        <li class="timetable__time">12:00 Food printer showcase</li>
                        <li class="timetable__time">14:00 advantages of lasercutting</li>
                        <li class="timetable__time">15:00 3D printing debate</li>
                        <li class="timetable__time">16:00 The benefits of fixing your own
                        <li class="timetable__time"><span>16:00</span> electronic devices</li>
                    </ul>
                </article>
            </div>
            <div class="mainstage__container--block2 mainstage__spotlight">
                <img src="assets/img/spotlight.gif" alt="spotlight image" class="spotlight__img">
            </div>
        </div>
    </div>
</section>

<section class="trucks">
    <h3 class="hidden">All trucks</h3>

    <div class="trucks__wrapper">
    <?php foreach($truckinfo as $truckinfo): ?>
        <article class="trucks__truck" id="<?php echo $truckinfo['article_id'] ?>">
            <?php if ($truckinfo['article_id'] == 'foodprint') {
                echo '<img class="unique" src="assets/img/unique.svg" alt="unique in europe">';
            };?>
            <img class="truck__img" src="assets/img/<?php echo $truckinfo['image'] ?>" alt="<?php echo $truckinfo['img_alt'] ?>">
            <div class="truck__box">
                <h4 class="truck__title"><span><?php echo $truckinfo['title'] ?></span> truck</h4>
                <p class="truck__catchphrase"><?php echo $truckinfo['catchphrase'] ?></p>
                <div class="truck__descr">
                    <p><?php echo $truckinfo['description_block1'] ?></p>
                    <p><?php echo $truckinfo['description_block2'] ?></p>
                </div>
                <div class="truck__cta">
                    <p class="cta__line1">Want to try the technology yourself?</p>
                    <p class="cta__line2">Reserve a timeslot on the tickets page.</p>
                    <a href="index.php?page=tickets" class="cta__button">Get your tickets</a>
                </div>
            </div>
        </article>
        <?php endforeach; ?>
    </div>

</section>