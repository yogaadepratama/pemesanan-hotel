<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet">
    <link rel="stylesheet" href=" <?php echo base_url() ?>assets/css/style.css">
    
    <title>Hello, world!</title>
  </head>
  <body>

    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Hotelation</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link " href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Kamar</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Fasilitas Hotel</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

      <!--Carousel-->

      <div class="banner">
        <div class="container">
          <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
               <img src="<?php echo base_url() ?>assets/img/hotel.jpg" width="1500" alt="">
        
                <div class="container">
                  <div class="carousel-caption ">
                    <h1>Hotelation</h1>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <img src="<?php echo base_url() ?>assets/img/hotel2.jpg" width="1500" alt="">
                <div class="container">
                  <div class="carousel-caption">
                    <h1>Hotelation</h1>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <img src="<?php echo base_url() ?>assets/img/hotel4.jpg" width="1500" alt="">
                <div class="container">
                  <div class="carousel-caption ">
                    <h1>Hotelation</h1>
                  </div>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </div>
      </div>

  <main>
  
    

 
      <!--Jumbotron-->
      <div class="jumbotron">
        <h1 class="display-4"></h1>
      </div>
      
      <main>
        <div class="container py-4">
          <div class="p-5 mb-4 bg-light rounded-3">
            <div class="container-fluid py-5">
              <h1 class="display-5 fw-bold">About Hotelation</h1>
              <p class="col-md-8 fs-4">Pemesanan Hotel yang Berbasi Website </p>
            </div>
          </div>
      
          <div class="row align-items-md-stretch">
            <div class="col-md-6">
              <div class="h-100 p-5 text-white bg-dark rounded-3">
                <h2>Contact Hotelation</h2>
                <p>Swap the background-color utility and add a `.text-*` color utility to mix up the jumbotron look. Then, mix and match with additional component themes and more.</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="h-100 p-5 bg-light border rounded-3">
                <h2>Address Hotelation</h2>
                <p>Or, keep it light and add a border for some added definition to the boundaries of your content. Be sure to look under the hood at the source HTML here as we've adjusted the alignment and sizing of both column's content for equal-height.</p>
              </div>
            </div>
          </div>
        </div>
      </main>
       
      <!--Cards-->
      <div class="album py-5 bg-light" id="kamar">
            <div class="container">
              <div class="row">
                <h1 class="text-center mb-3"><strong>Kamar</strong></h1>
              </div>
              <div class="row">
                <?php foreach ($data_tipe_kamar as $value) { ?>
                  <div class="col-md-6">
                  <div class="card shadow-sm">
                    <img src="<?php echo base_url().$value['gambar'] ?>" class="card-img-top img-custom" height="500" alt="">
                    <div class="card-body">
                      <h2 class="card-text"><?php echo $value['nama_kamar_tipe'] ?></h2>
                      <p class="card-text"><?php echo $value['fasilitas'] ?></p>
                                          
                    </div>
                    <div class="card-footer">
                      <a href="<?php echo base_url('datadiri') ?>" class="btn btn-outline-primary">Pesan</a>
                    </div>
                  </div>
                </div>
                <?php } ?>


              </div>
            </div>
          </div>

          <div class="fasilitas py-5" id="fasilitas">
            <div class="container">
              <div class="row">
                <h1 class="text-center mb-3"><strong>Fasilitas</strong></h1>
              </div>
              <div class="row">

              <?php foreach  ($data_fasilitashotel as $value) { ?>
                <div class="col">
                  <div class="card shadow-sm">
                    <img src="<?php echo base_url().$value['gambar'] ?>" class="card-img-top" alt="">
                    <div class="card-body">
                      <h4 class="card-text"><?php echo $value['nama_fasilitas_hotel']; ?></h4>
                      <div class="caption">
                        <p><?php echo $value['keterangan']; ?></p>
                      </div>
                    </div>
                  </div>
                </div>
              <?php } ?>


              </div>
            </div>
          </div>


      
     
      <!--Footer-->
      <div class="container">
  <footer class="py-3 my-4">
    <p class="text-center text-muted"> Copyright &copy; 2021 Hotelation, All rights reserved.</p>
  </footer>
</div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>