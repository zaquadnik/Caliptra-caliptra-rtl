// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "caliptra_prim_assert.sv"

module caliptra_prim_sec_anchor_buf #(
  parameter int Width = 1
) (
  input        [Width-1:0] in_i,
  output logic [Width-1:0] out_o
);

  caliptra_prim_buf #(
    .Width(Width)
  ) u_secure_anchor_buf (
    .in_i,
    .out_o
  );

endmodule
