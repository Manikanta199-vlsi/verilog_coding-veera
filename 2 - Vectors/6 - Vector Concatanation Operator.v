module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
	//Concatenation needs to know the width of every component (or how would you know the length of the result?). 
    //Thus, {1, 2, 3} is illegal and results in the error message: unsized constants are not allowed in concatenations.
	//The concatenation operator can be used on both the left and right sides of assignments.
    
    wire [31:0] concat_reg; //raise an error when work with reg. Reason unknown???
	
    assign concat_reg = {a[4:0], b[4:0], c[4:0], d[4:0], e[4:0], f[4:0], 2'b11};
    assign w = concat_reg[31:24];
    assign x = concat_reg[23:16];
    assign y = concat_reg[15:8];
    assign z = concat_reg[7:0];

endmodule

=================================================================================
        assign w [7:3] = a[4:0];
        assign w[2:0]=b[4:2];

        assign x [7:6] = b[1:0];
        assign x[5:1]=c[4:0];
        assign x[0] = d[4];

        assign y [7:4] = d[3:0];
        assign y[3:0]=e[4:1];

        assign z[7] = e[0];
        assign z [6:2] = f[4:0];

        assign z[1]=1'b1;
        assign z[0]=1'b1;
