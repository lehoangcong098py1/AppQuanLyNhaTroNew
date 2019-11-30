var db = require('../connection');

var conn=db.getConnection();

function getAllpost(req, res, next){
  var query=conn.query(`SELECT DISTINCT  TenChuTro,Sdt,TenDuong,TenQuan,TenTP,gia,dientich,nhatro.date,state,ImageHinh,ImageTen 
  FROM quanlynhatro.nhatro,quanlynhatro.quan,quanlynhatro.thanhpho,quanlynhatro.duong,quanlynhatro.image 
  where nhatro.idQuan=quan.idQuan and nhatro.idThanhPho=thanhpho.idThanhPho and nhatro.idDuong=duong.idDuong and nhatro.idImage=image.idImage;`, function(err,rows){
    if(err){
      throw err;
    }else{
       console.log(rows);
      res.status(201).json(rows);
    }
  });
}

function getAllpostID(req, res, next){
  var query=conn.query(`SELECT DISTINCT  TenChuTro,Sdt,TenDuong,TenQuan,TenTP,gia,dientich,nhatro.date,state,ImageHinh,ImageTen 
  FROM quanlynhatro.nhatro,quanlynhatro.quan,quanlynhatro.thanhpho,quanlynhatro.duong,quanlynhatro.image 
  where nhatro.idQuan=quan.idQuan and nhatro.idThanhPho=thanhpho.idThanhPho and nhatro.idDuong=duong.idDuong and nhatro.idImage=image.idImage and nhatro.idNhatro=${req.body.idnhatro};`, function(err,rows){
    if(err){
      throw err;
    }else{
       console.log(rows);
      res.status(201).json(rows);
    }
  });
}

function InsetNhaTro(req, res, next){
  var query=conn.query(`call InsertNhaTro(${req.body.idnhatro},'${req.body.tenchutro}',${req.body.sdt},${req.body.idquan},${req.body.idthanhpho},${req.body.idduong},${req.body.localx},${req.body.localy},${req.body.localz},${req.body.idimage},${req.body.gia});`,function(err,rows){
    if(err){
      throw err;
    }else{
      // console.log(rows);
      res.status(201).json({ data: rows });
    }
  });
}

function LayDanhSachBL(req, res, next){
  var query=conn.query(`select IdNguoiDung,noidung
  from quanlynhatro.binhluan
  where binhluan.idNhaTro=${req.body.idnhatro};`,function(err,rows){
    if(err){
      throw err;
    }else{
      // console.log(rows);
      res.status(201).json({ data: rows });
    }
  });
}

function LayThongTinNguoiDung(req, res, next){
  var query=conn.query(`SELECT nguoidung.Ho,nguoidung.Ten,nguoidung.DiaChi,nguoidung.sodt,nguoidung.email,nguoidung.photourl 
  FROM quanlynhatro.nguoidung WHERE nguoidung.idNguoiDung=${req.body.idNguoiDung};`,function(err,rows){
    if(err){
      throw err;
    }else{
      // console.log(rows);
      res.status(201).json({ data: rows });
    }
  });
}

module.exports={
  getAllpost: getAllpost,
  InsetNhaTro: InsetNhaTro,
  LayDanhSachBL: LayDanhSachBL,
  getAllpostID: getAllpostID,
  LayThongTinNguoiDung: LayThongTinNguoiDung
}