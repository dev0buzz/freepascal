// bunga per bulan = (uang muka + (angsuran per bulan x lama angsuran) - harga motor) / harga motor * 100
// contoh:
// harga motor	: 16.650.000
// DP			:  2.500.000
// lama angsuran:	11 bulan
// angsuran/bln :   1.687.931,36 (1.688.000)
// 1	sisa	16.880.000
// 2	sisa	15.192.000
// ...
// 10	sisa	 1.688.000
// 11	sisa		0
// ==========================================

program angsuran;
	uses crt;
	var
		dp,harga,a,bunga,sisa,sisa_round,pokok: Real;
		waktu,i: Integer;
begin
	harga 	:= 16650000;
	dp 		:= 2500000;
	// waktu	:= 11;
	// bunga	:= 26.53; // dalam percent
	// a 		:= 1687931.36;

	// input
	write('Lama angsuran (bln): ');
	readln(waktu);
	write('Bunga (%): ');
	readln(bunga);
	writeln('=====================================');

	// rumus angsuran (a)
	pokok := harga - dp;
	a := (pokok + ((harga * bunga)/100)) / waktu;

	// bunga
	bunga := (dp + (a * waktu) - harga) / harga * 100;

	// output
	writeln('');
	writeln('Harga Motor: ',harga:1:2);
	writeln('Uang Muka: ',dp:1:2);
	writeln('Lama Angsuran: ',waktu);
	writeln('');
	writeln('Besar angsuran per bulan: ',a:1:2);
	writeln('Bunga: ',bunga:1:2);
	writeln('=====================================');

	// tabel sisa angsuran
	writeln('Angsuran ke- 	|	Sisa Angsuran');
	sisa := a * (waktu-1);
	for i := 1 to waktu do 
	begin
		if (i <> 1) then 
		begin
			sisa := sisa - a;
		end;

		sisa_round := (round(sisa/1000)*1000); // round up
		writeln(i:6, '|':9, sisa_round:13:2,' | ',sisa:0:2);
	end;
end.