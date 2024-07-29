`timescale 1ns / 1ps

module tb_ring_johnson_cnt;
    // Inputs
    reg clk;
    reg rst;

    // Outputs
    wire [1:0] doutr;
    wire [1:0] doutj;

    // Instantiate the Unit Under Test (UUT)
    ring_johnson_cnt uut (
        .clk(clk), 
        .rst(rst), 
        .doutr(doutr), 
        .doutj(doutj)
    );

    // Clock generation
    always begin
        #5 clk = ~clk; // Generate a clock with 10ns period (100MHz frequency)
    end

    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 0;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Apply reset
        rst = 1;
        #20;
        rst = 0;

        // Add more stimulus here
        #100; // Wait for 100 ns
        rst = 1; // Apply reset again
        #20;
        rst = 0;
        
        // Wait some time to observe behavior
        #200;
        
        // Finish simulation
        $stop;
    end
      
endmodule
