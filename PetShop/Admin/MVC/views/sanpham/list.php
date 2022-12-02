<a href="?mod=sanpham&act=add" type="button" class="btn btn-primary">Thêm mới</a>

<?php if (isset($_COOKIE['msg'])) { ?>
  <div class="alert alert-success">
    <strong>Thông báo</strong> <?= $_COOKIE['msg'] ?>
  </div>
<?php } ?>
<hr>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th scope="col">Mã sản phẩm</th>
      <th scope="col">Tên sản phẩm</th>
      <th scope="col">Giá thành</th>
      <th scope="col">Số lượng</th>
      <th scope="col">Trạng thái</th>
      <th>Chức năng</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($data as $row) { ?>
      <tr>
        <th scope="row"><?= $row['MaSP'] ?></th>
        <td><?= $row['TenSP'] ?></td>
        <td><?= $row['DonGia'] ?> VNĐ</td>
        <td><?= $row['SoLuong'] ?></td>
        <td><?= $row['TrangThai'] ?></td>
        <td>
          <a href="../index.php?act=detail&id=<?= $row['MaSP'] ?>" type="button" class="btn btn-success" target="_blank">Xem</a>
          <a href="?mod=sanpham&act=edit&id=<?= $row['MaSP'] ?>" type="button" class="btn btn-warning">Sửa</a>
          <a href="?mod=sanpham&act=delete&id=<?= $row['MaSP'] ?>" onclick="return confirm('Bạn có thật sự muốn xóa ?');" type="button" class="btn btn-danger">Xóa</a>

        </td>
      </tr>
    <?php } ?>
  </tbody>
</table>
<!-- sử dụng hàm phân trang và tìm kiếm bằng hàm dataTable của js(nhúng cdn vào) -->
<script>
  $(document).ready(function() {
    $('#dataTable').DataTable();
  });
</script>