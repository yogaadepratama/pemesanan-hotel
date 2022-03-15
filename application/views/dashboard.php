<!-- Content Header (Page header) -->
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"><?php echo $title; ?></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active"><?php echo $title; ?></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <div class="heroes container col-xxl-8 px-4">
      <div class="row flex-lg-row-reverse align-items-center g-5">
        <div class="col-10 col-sm-8 col-lg-6" data-aos="fade-left" data-aos-duration="1000">
          <img src="<?php echo base_url() ?>/assets/img/hotel2.jpg" class="d-block mx-lg-auto img-thumbnail rounded shadow" alt="Bootstrap Themes" loading="lazy">
        </div>
        <div class="col-lg-6" data-aos="fade-right" data-aos-duration="1000">
          <h1 class="display-5 fw-bold lh-1 mb-3 justify-content " ><strong>Selamat Datang di Hotelation</strong></h1>
          <div class="d-grid gap-2 d-md-flex justify-content-md-start">

            <div class="modal fade" id="infoHotel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Info Hotel Crimson</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Keluar</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /.content-wrapper -->