<?php
/*penomeran*/
function nomers($tbl)
{
	$nn= mysql_query("select * from $tbl ")or die ("failed");
	$nn1=mysql_num_rows($nn);
	$no=$nn1+1;
	return $no;
}

/*function format_rupiah*/
function format_rupiah($angka){
  $rupiah=number_format($angka,0,',','.');
  return $rupiah;
}
?>