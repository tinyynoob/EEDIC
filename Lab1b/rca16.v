`include "./fa.v"
`include "./ha.v"
module rca16(sum, c_out, a, b, c_in);
    input [15:0]a, b;
    input c_in;
    output [15:0]sum;
    output c_out;
    wire [3:1]c;

    rca4 m1(.a(a[3:0]), .b(b[3:0]), .c_in(c_in), .sum(sum[3:0]), .c_out(c[1]));
    rca4 m2(.a(a[7:4]), .b(b[7:4]), .c_in(c[1]), .sum(sum[7:4]), .c_out(c[2]));
    rca4 m3(.a(a[11:8]), .b(b[11:8]), .c_in(c[2]), .sum(sum[11:8]), .c_out(c[3]));
    rca4 m4(.a(a[15:12]), .b(b[15:12]), .c_in(c[3]), .sum(sum[15:12]), .c_out(c_out));
endmodule

module rca4(sum, c_out, a, b, c_in);
    input [3:0]a, b;
    input c_in;
    output [3:0]sum;
    output c_out;
    wire [3:1]c;

    fa a1(.a(a[0]), .b(b[0]), .ci(c_in), .sum(sum[0]), .cout(c[1]));
    fa a2(.a(a[1]), .b(b[1]), .ci(c[1]), .sum(sum[1]), .cout(c[2]));
    fa a3(.a(a[2]), .b(b[2]), .ci(c[2]), .sum(sum[2]), .cout(c[3]));
    fa a4(.a(a[3]), .b(b[3]), .ci(c[3]), .sum(sum[3]), .cout(c_out));
endmodule

