<div class="main-slider-one main-slider-two slider-area ">
    <div class="bannerx">
        <div class="slider-wrapper">
            <div class="containerx">
                <div id="slidex">
                    <?php $i = 3;
                    // $data_banner trong HomeController thay đổi số ảnh banner
                    foreach ($data_banner as  $value) {  ?>
                        <div class="itemx">
                            <img src="public/<?= $value['HinhAnh'] ?>" alt="main slider" />
                            <div class="content">
                                <div class="name">PET SHOP</div>
                                <div class="des">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Beatae iste voluptatem recusandae sit rerum aperiam.</div>
                                <button><a class="shopbt" href="index.php?act=shop">Mua ngay</a></button>
                            </div>
                        </div>
                    <?php } ?>
                    <div class="buttonx">
                        <button id="prevx"><i class="fa-solid fa-angle-left"></i></button>
                        <button id="nextx"><i class="fa-solid fa-angle-right"></i></button>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</div>