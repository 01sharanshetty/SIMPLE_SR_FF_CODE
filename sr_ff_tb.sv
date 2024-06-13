module sr_ff_tb;

	// Inputs
	reg clk;
	reg reset;
	reg s;
	reg r;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	sr_ff uut (
		.clk(clk), 
		.reset(reset), 
		.s(s), 
		.r(r), 
		.q(q), 
		.qbar(qbar)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		s=0;
		r=0;
		#50;
	end
	always #5clk=~clk;
	initial
	begin
		$monitor("s:%d, r:%d, q=%d",s,r,q);
	#50;
	reset=0;
	s=0;r=1;#10;
	s=1;r=0;#10;
	s=1;r=1;#10;
	s=0;r=1;#10;
	s=0;r=0;#10;
	#100;
	end      
endmodule
