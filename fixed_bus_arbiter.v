`timescale 1ns / 1ps

module fixed_priority_arbiter(input  [3:0]req ,
                              output reg[3:0]grant);
                                 
                   always @(*)
                   begin  
              case(1'b1)
                       req[3] : grant = 4'b1000;
                       req[2] : grant = 4'b0100;
                       req[1] : grant = 4'b0010;
                       req[0] : grant = 4'b0001;
                       default : grant = 4'b0000;
              endcase
                      end
endmodule
