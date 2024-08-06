module tb_alu;
  parameter N = 2;
  /*
  N = 2 para que o número de casos
  não fique muito grande
  */

  logic signed [N-1:0] a, b;
  logic [2:0] opcode;
  logic signed [N*2-1:0] out;

  alu #(N) dut (
    .a(a),
    .b(b),
    .opcode(opcode),
    .out(out)
  );

  localparam MIN_VAL = -2**(N-1);
  localparam MAX_VAL = +2**(N-1)-1;

  string name, symbol;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, a, b, opcode, out);
    $display();
    
    for (int op = 0; op <= 4; op++) begin
      opcode = op;
      case (op)
        3'b000: begin
          name = "Adição";
          symbol = "+";
        end
        3'b001: begin
          name = "Subtração";
		      symbol = "-";
        end
        3'b010: begin
		      name = "Multiplicação";
		      symbol = "*";
		    end
        3'b011: begin
		      name = "Bitwise AND";
          symbol = "&";
		    end
        default: begin
		      name = "Bitwise OR";
		      symbol = "|";
		    end
      endcase

      $display("%s:", name);
      for (int i = MIN_VAL; i <= MAX_VAL; i++) begin
      	a = i;
        for (int j = MIN_VAL; j <= MAX_VAL; j++) begin
          b = j;
          #200;

          $display(
            "%b (%d) %s %b (%d) = %b (%d)",
            a, a, symbol, b, b, out, out
          );
        end
      end
      $display();
    end

    $finish;
  end
endmodule
