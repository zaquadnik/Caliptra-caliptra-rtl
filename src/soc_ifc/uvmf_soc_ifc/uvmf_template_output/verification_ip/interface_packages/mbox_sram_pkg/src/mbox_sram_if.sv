//----------------------------------------------------------------------
// Created with uvmf_gen version 2022.3
//----------------------------------------------------------------------
// SPDX-License-Identifier: Apache-2.0
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// pragma uvmf custom header begin
// pragma uvmf custom header end
//----------------------------------------------------------------------
//----------------------------------------------------------------------
//     
// DESCRIPTION: This interface contains the mbox_sram interface signals.
//      It is instantiated once per mbox_sram bus.  Bus Functional Models, 
//      BFM's named mbox_sram_driver_bfm, are used to drive signals on the bus.
//      BFM's named mbox_sram_monitor_bfm are used to monitor signals on the 
//      bus. This interface signal bundle is passed in the port list of
//      the BFM in order to give the BFM access to the signals in this
//      interface.
//
//----------------------------------------------------------------------
//----------------------------------------------------------------------
//
// This template can be used to connect a DUT to these signals
//
// .dut_signal_port(mbox_sram_bus.mbox_sram_req), // Agent output 
// .dut_signal_port(mbox_sram_bus.mbox_sram_resp), // Agent input 

import uvmf_base_pkg_hdl::*;
import mbox_sram_pkg_hdl::*;

interface  mbox_sram_if 

  (
  input tri clk, 
  input tri dummy,
  inout tri [$bits(cptra_mbox_sram_req_t)-1:0] mbox_sram_req,
  inout tri [$bits(cptra_mbox_sram_resp_t)-1:0] mbox_sram_resp
  );

modport monitor_port 
  (
  input clk,
  input dummy,
  input mbox_sram_req,
  input mbox_sram_resp
  );

modport initiator_port 
  (
  input clk,
  input dummy,
  output mbox_sram_req,
  input mbox_sram_resp
  );

modport responder_port 
  (
  input clk,
  input dummy,  
  input mbox_sram_req,
  output mbox_sram_resp
  );
  

// pragma uvmf custom interface_item_additional begin
// pragma uvmf custom interface_item_additional end

endinterface

// pragma uvmf custom external begin
// pragma uvmf custom external end

