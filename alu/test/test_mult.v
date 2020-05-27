module test_mult;
   reg activate, clk, reset, a;
   reg [7:0] b, c;

   wire [7:0] div;
   wire      mod;

   mult test_mult(activate, clk, reset, a, b, c, div, mod);

   initial
     begin
	activate = 0;
	clk = 0;
	reset = 1;
	a = 0;
	b = 0;
	c = 0;
	#5;
	activate = 1;
	clk = 1;
	reset = 0;
	a = 1;
	b = 2;
	c = 5;
	#5;
	activate = 0;
	clk = 0;
	reset = 0;
	a = 0;
	b = 0;
	c = 0;
	#5;
	activate = 0;
	clk = 1;
	reset = 0;
	a = 0;
	b = 0;
	c = 0;
	#5;
	activate = 0;
	clk = 0;
	reset = 0;
	a = 0;
	b = 0;
	c = 0;
	#5;
	activate = 0;
	clk = 1;
	reset = 0;
	a = 0;
	b = 0;
	c = 0;
	#5;
	activate = 0;
	clk = 0;
	reset = 0;
	a = 0;
	b = 0;
	c = 0;
	#5;
	activate = 0;
	clk = 1;
	reset = 0;
	a = 0;
	b = 0;
	c = 0;
	#5;
	activate = 0;
	clk = 0;
	reset = 0;
	a = 0;
	b = 0;
	c = 0;
	#5;
     end // initial begin
   initial
     begin
	$dumpfile("signal/signal_mult.vcd");
	$dumpvars;
     end

   initial
     begin
	$display("\t\ttime, \tactivate, \tclk, \treset, \ta,\tb, \tc, \tdiv,\tmod");
	$monitor("%d \t\t%b \t%b \t%b \t%b \t%d \t%d \t%d \t%b", $time, activate, clk, reset, a, b, c, div, mod);
     end
endmodule // test_mult

