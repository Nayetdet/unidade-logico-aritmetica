module alu
#(parameter N = 4)(
  input  logic signed [N-1:0] a, b,
  input  logic [2:0] opcode,
  output logic signed [N*2-1:0] out
);
  logic signed [N*2-1:0] a_ext, b_ext;
  assign a_ext = {{N{a[N-1]}}, a};
  assign b_ext = {{N{b[N-1]}}, b};

  always_comb begin
    case (opcode)
      3'b000:  out = a_ext + b_ext;      // Adição
      3'b001:  out = a_ext - b_ext;      // Subtração
      3'b010:  out = a * b;              // Multiplicação
      3'b011:  out = {{N{1'b1}}, a & b}; // Bitwise AND
      default: out = {{N{1'b0}}, a | b}; // Bitwise OR
    endcase
  end
endmodule
