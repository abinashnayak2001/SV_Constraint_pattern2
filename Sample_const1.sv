class trans ;
	rand int ar[];
	int maxm = 5;

	constraint c1 {
			ar.size() == 3*maxm;
	}	

	constraint c2 {
			foreach(ar[i])
				if(i%3 == 0)
					ar[i] == (i/3) +1;
				else
					ar[i] == ar[i-1];
	}

	function void post_randomize();
		foreach(ar[i])
			$write("%3d",ar[i]);
	endfunction
endclass

module test();
	trans tr;

	initial begin
		tr = new();
		tr.maxm = 5;
		tr.randomize();
	end
endmodule
Command: /home1/B114/AbhinashN/VLSI_RN_OFFLINE/UVM_LABS/test/sim/./simv -a ../files/const4.sv +ntb_random_seed_automatic
Chronologic VCS simulator copyright 1991-2022
Contains Synopsys proprietary information.
Compiler version T-2022.06-SP1_Full64; Runtime version T-2022.06-SP1_Full64;  May  1 23:11 2025
NOTE: automatic random seed used: 4244386068
  1  1  1  2  2  2  3  3  3  4  4  4  5  5  5           V C S   S i m u l a t i o n   R e p o r t 
Time: 0
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Thu May  1 23:11:04 2025
