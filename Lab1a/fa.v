module fa(a, b, ci, sum, cout);
    // input and output declaration
    input  a, b, ci;
    output sum, cout;

    // wire and reg declaration
    wire [2:0]tmp;

    // module instance
    ha h1(.a(a), .b(b), .sum(tmp[1]), .cout(tmp[0]));
    ha h2(.a(tmp[1]), .b(ci), .sum(sum), .cout(tmp[2]));
    xor(cout, tmp[0], tmp[2]);
endmodule
