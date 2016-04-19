//-----------------------------------------------------
// Function : This provides the selection signal for a 16 bit mux with option to not sample select channels. 
//-----------------------------------------------------
module count_up(clock , // Clock input of the design
reset , // active high, synchronous Reset input
counter_out);// 4 bit vector output of the counter
// End of port list
//-------------Input Ports-----------------------------
input clock ;
input reset ;
//-------------Output Ports----------------------------
output [2:0] counter_out ;
//-------------Input ports Data Type-------------------
// By rule all the input ports should be wires   
wire clock ;
wire reset ;
//-------------Output Ports Data Type------------------
// Output port can be a storage element (reg) or a wire
reg [2:0] counter_out ;

//------------Code Starts Here-------------------------
// Since this counter is a positive edge trigged one,
// We trigger the below block with respect to positive
// edge of the clock.
always @ (posedge clock)
begin : COUNTER // Block Name
  // At every rising edge of clock we check if reset is active
  // If active, we load the counter output with 4'b0000
  if (reset == 1'b1) 
  begin
    counter_out <= 3'b000;
  end
  // If enable is active, then we increment the counter
  if (counter_out<16)
  begin
    counter_out <= counter_out + 1;
  end
  if (counter_out>=8)
  begin
	 counter_out <= 3'b000;
  end
 
end // End of Block COUNTER

endmodule // End of Module counter