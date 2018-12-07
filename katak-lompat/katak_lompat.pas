// katak dalam sumur
// 5hr pertama naik=3m turun=1m
// 10hr berikut naik=2m turun=1.25
// hari2 setelahnya naik=2m turun=1.5
// berapa hari katak keluar jika kedalaman sumur 15m
// contoh:
// kedalaman 9m ==> 6hr

program katak_lompat;
	uses crt;
	var up,down,diff,i,s:Real;
	    day:Integer;
begin
	// input
	write('Kedalaman Sumur: ');
	readln(s);

	// process
	day := 0; // hari ke 0
	i := 0; // ketinggian 0
	while (i < s) do
	begin
		day := day + 1;
		up := 2;
		down := 1.5;
		if (day <= 5) then
		begin
			up := 3;
			down := 1;
		end;
		if ((day > 5) and (day <= 10)) then
		begin
			up := 2;
			down := 1.25;
		end;

		diff := up - down;
		i := i + diff;
	end;

	// output
	writeln('Kedalaman Sumur: ',s:1:2,'M');
	writeln('Jumlah Hari: ',day,' hari');
end.
