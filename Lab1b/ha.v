module  ha(a, b, sum, cout);
    // input and output interface
    input a, b;
    output sum, cout;

    // structural modeling
    xor(sum, a, b);
    and(cout, a, b);


endmodule
