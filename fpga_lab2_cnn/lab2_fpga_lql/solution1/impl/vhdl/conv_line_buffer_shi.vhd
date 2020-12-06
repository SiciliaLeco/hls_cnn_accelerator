-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity conv_line_buffer_shi is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data : IN STD_LOGIC_VECTOR (31 downto 0);
    conv_line_buffer_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    conv_line_buffer_ce0 : OUT STD_LOGIC;
    conv_line_buffer_we0 : OUT STD_LOGIC;
    conv_line_buffer_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    conv_line_buffer_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    cal_conv_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    cal_conv_ce0 : OUT STD_LOGIC;
    cal_conv_we0 : OUT STD_LOGIC;
    cal_conv_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    cal_conv_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    cal_conv_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    cal_conv_ce1 : OUT STD_LOGIC;
    cal_conv_we1 : OUT STD_LOGIC;
    cal_conv_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    cal_conv_q1 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of conv_line_buffer_shi is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv5_3 : STD_LOGIC_VECTOR (4 downto 0) := "00011";
    constant ap_const_lv59_0 : STD_LOGIC_VECTOR (58 downto 0) := "00000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv5_7 : STD_LOGIC_VECTOR (4 downto 0) := "00111";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal go_up_0_reg_411 : STD_LOGIC_VECTOR (31 downto 0);
    signal go_up_1_reg_416 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_186_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reg_424 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln63_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln68_fu_231_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal sub_ln68_reg_434 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_3_reg_441 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_line_buffer_loa_reg_446 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_fu_251_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_reg_454 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_4_fu_257_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_reg_459 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln65_fu_245_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln68_1_fu_283_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln68_1_reg_468 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_10_fu_318_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_10_reg_476 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal zext_ln81_fu_332_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln81_reg_481 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln76_fu_312_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_line_buffer_add_1_reg_487 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln81_fu_355_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln81_reg_492 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_4_fu_367_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_4_reg_500 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal icmp_ln80_fu_373_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln80_reg_505 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln78_fu_361_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln83_1_fu_397_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln83_1_reg_514 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_0_reg_135 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_0_reg_147 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal i1_0_reg_158 : STD_LOGIC_VECTOR (1 downto 0);
    signal j2_0_reg_169 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal tmp_8_fu_206_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln68_fu_274_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln70_fu_297_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln68_1_fu_308_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_342_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln83_1_fu_388_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln83_3_fu_402_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_192_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal or_ln70_fu_200_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_fu_219_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln68_1_fu_227_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln68_fu_215_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln68_2_fu_265_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln68_fu_269_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln68_3_fu_279_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln70_fu_288_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln70_fu_292_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_9_fu_324_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal or_ln81_fu_336_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln81_fu_351_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln83_fu_379_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln83_fu_383_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln83_2_fu_393_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i1_0_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln63_fu_180_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i1_0_reg_158 <= ap_const_lv2_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln78_fu_361_p2 = ap_const_lv1_1))) then 
                i1_0_reg_158 <= i_10_reg_476;
            end if; 
        end if;
    end process;

    i_0_reg_135_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln65_fu_245_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                i_0_reg_135 <= i_reg_424;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                i_0_reg_135 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    j2_0_reg_169_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln76_fu_312_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                j2_0_reg_169 <= ap_const_lv4_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                j2_0_reg_169 <= j_4_reg_500;
            end if; 
        end if;
    end process;

    j_0_reg_147_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                j_0_reg_147 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                j_0_reg_147 <= j_reg_454;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln65_fu_245_p2 = ap_const_lv1_0) and (tmp_4_fu_257_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                add_ln68_1_reg_468 <= add_ln68_1_fu_283_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln78_fu_361_p2 = ap_const_lv1_0) and (icmp_ln80_fu_373_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                add_ln83_1_reg_514 <= add_ln83_1_fu_397_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln76_fu_312_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    conv_line_buffer_add_1_reg_487(3) <= tmp_s_fu_342_p3(4 - 1 downto 0)(3);
                select_ln81_reg_492 <= select_ln81_fu_355_p3;
                    zext_ln81_reg_481(4 downto 3) <= zext_ln81_fu_332_p1(4 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                conv_line_buffer_loa_reg_446 <= conv_line_buffer_q0;
                sub_ln68_reg_434 <= sub_ln68_fu_231_p2;
                tmp_3_reg_441 <= i_0_reg_135(1 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                go_up_0_reg_411 <= cal_conv_q0;
                go_up_1_reg_416 <= cal_conv_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                i_10_reg_476 <= i_10_fu_318_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                i_reg_424 <= i_fu_186_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln78_fu_361_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                icmp_ln80_reg_505 <= icmp_ln80_fu_373_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                j_4_reg_500 <= j_4_fu_367_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                j_reg_454 <= j_fu_251_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln65_fu_245_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                tmp_4_reg_459 <= j_0_reg_147(1 downto 1);
            end if;
        end if;
    end process;
    zext_ln81_reg_481(2 downto 0) <= "000";
    zext_ln81_reg_481(5) <= '0';
    conv_line_buffer_add_1_reg_487(2 downto 0) <= "111";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state3, icmp_ln63_fu_180_p2, ap_CS_fsm_state5, icmp_ln65_fu_245_p2, ap_CS_fsm_state7, icmp_ln76_fu_312_p2, ap_CS_fsm_state8, icmp_ln78_fu_361_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln63_fu_180_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((icmp_ln65_fu_245_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln76_fu_312_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln78_fu_361_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    add_ln68_1_fu_283_p2 <= std_logic_vector(unsigned(sub_ln68_reg_434) + unsigned(zext_ln68_3_fu_279_p1));
    add_ln68_fu_269_p2 <= std_logic_vector(unsigned(sub_ln68_reg_434) + unsigned(zext_ln68_2_fu_265_p1));
    add_ln70_fu_292_p2 <= std_logic_vector(unsigned(sub_ln68_reg_434) + unsigned(zext_ln70_fu_288_p1));
    add_ln83_1_fu_397_p2 <= std_logic_vector(unsigned(zext_ln81_reg_481) + unsigned(zext_ln83_2_fu_393_p1));
    add_ln83_fu_383_p2 <= std_logic_vector(unsigned(zext_ln81_reg_481) + unsigned(zext_ln83_fu_379_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state7, icmp_ln76_fu_312_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln76_fu_312_p2 = ap_const_lv1_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state7, icmp_ln76_fu_312_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln76_fu_312_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    cal_conv_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state5, tmp_4_fu_257_p3, icmp_ln65_fu_245_p2, sext_ln68_fu_274_p1, sext_ln70_fu_297_p1)
    begin
        if (((tmp_4_fu_257_p3 = ap_const_lv1_1) and (icmp_ln65_fu_245_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            cal_conv_address0 <= sext_ln70_fu_297_p1(4 - 1 downto 0);
        elsif (((icmp_ln65_fu_245_p2 = ap_const_lv1_0) and (tmp_4_fu_257_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            cal_conv_address0 <= sext_ln68_fu_274_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            cal_conv_address0 <= ap_const_lv4_3;
        else 
            cal_conv_address0 <= "XXXX";
        end if; 
    end process;


    cal_conv_address1_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state6, sext_ln68_1_fu_308_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            cal_conv_address1 <= sext_ln68_1_fu_308_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            cal_conv_address1 <= ap_const_lv4_6;
        else 
            cal_conv_address1 <= "XXXX";
        end if; 
    end process;


    cal_conv_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5, tmp_4_fu_257_p3, icmp_ln65_fu_245_p2)
    begin
        if ((((icmp_ln65_fu_245_p2 = ap_const_lv1_0) and (tmp_4_fu_257_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((tmp_4_fu_257_p3 = ap_const_lv1_1) and (icmp_ln65_fu_245_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            cal_conv_ce0 <= ap_const_logic_1;
        else 
            cal_conv_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    cal_conv_ce1_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            cal_conv_ce1 <= ap_const_logic_1;
        else 
            cal_conv_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    cal_conv_d0 <= 
        data when (tmp_3_reg_441(0) = '1') else 
        conv_line_buffer_loa_reg_446;
    cal_conv_d1 <= cal_conv_q0;

    cal_conv_we0_assign_proc : process(ap_CS_fsm_state5, tmp_4_fu_257_p3, icmp_ln65_fu_245_p2)
    begin
        if (((tmp_4_fu_257_p3 = ap_const_lv1_1) and (icmp_ln65_fu_245_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            cal_conv_we0 <= ap_const_logic_1;
        else 
            cal_conv_we0 <= ap_const_logic_0;
        end if; 
    end process;


    cal_conv_we1_assign_proc : process(tmp_4_reg_459, ap_CS_fsm_state6)
    begin
        if (((tmp_4_reg_459 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            cal_conv_we1 <= ap_const_logic_1;
        else 
            cal_conv_we1 <= ap_const_logic_0;
        end if; 
    end process;


    conv_line_buffer_address0_assign_proc : process(ap_CS_fsm_state3, conv_line_buffer_add_1_reg_487, ap_CS_fsm_state8, icmp_ln80_fu_373_p2, icmp_ln78_fu_361_p2, ap_CS_fsm_state9, tmp_8_fu_206_p3, zext_ln83_1_fu_388_p1, zext_ln83_3_fu_402_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            conv_line_buffer_address0 <= zext_ln83_3_fu_402_p1(4 - 1 downto 0);
        elsif (((icmp_ln78_fu_361_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln80_fu_373_p2 = ap_const_lv1_1))) then 
            conv_line_buffer_address0 <= conv_line_buffer_add_1_reg_487;
        elsif (((icmp_ln78_fu_361_p2 = ap_const_lv1_0) and (icmp_ln80_fu_373_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            conv_line_buffer_address0 <= zext_ln83_1_fu_388_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            conv_line_buffer_address0 <= tmp_8_fu_206_p3(4 - 1 downto 0);
        else 
            conv_line_buffer_address0 <= "XXXX";
        end if; 
    end process;


    conv_line_buffer_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state8, icmp_ln80_fu_373_p2, icmp_ln78_fu_361_p2, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state9) or ((icmp_ln78_fu_361_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln80_fu_373_p2 = ap_const_lv1_1)) or ((icmp_ln78_fu_361_p2 = ap_const_lv1_0) and (icmp_ln80_fu_373_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
            conv_line_buffer_ce0 <= ap_const_logic_1;
        else 
            conv_line_buffer_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_line_buffer_d0_assign_proc : process(conv_line_buffer_q0, select_ln81_reg_492, ap_CS_fsm_state8, icmp_ln80_fu_373_p2, icmp_ln78_fu_361_p2, ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            conv_line_buffer_d0 <= conv_line_buffer_q0;
        elsif (((icmp_ln78_fu_361_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln80_fu_373_p2 = ap_const_lv1_1))) then 
            conv_line_buffer_d0 <= select_ln81_reg_492;
        else 
            conv_line_buffer_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    conv_line_buffer_we0_assign_proc : process(ap_CS_fsm_state8, icmp_ln80_fu_373_p2, icmp_ln80_reg_505, icmp_ln78_fu_361_p2, ap_CS_fsm_state9)
    begin
        if ((((icmp_ln80_reg_505 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state9)) or ((icmp_ln78_fu_361_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln80_fu_373_p2 = ap_const_lv1_1)))) then 
            conv_line_buffer_we0 <= ap_const_logic_1;
        else 
            conv_line_buffer_we0 <= ap_const_logic_0;
        end if; 
    end process;

    i_10_fu_318_p2 <= std_logic_vector(unsigned(i1_0_reg_158) + unsigned(ap_const_lv2_1));
    i_fu_186_p2 <= std_logic_vector(unsigned(i_0_reg_135) + unsigned(ap_const_lv2_1));
    icmp_ln63_fu_180_p2 <= "1" when (i_0_reg_135 = ap_const_lv2_3) else "0";
    icmp_ln65_fu_245_p2 <= "1" when (j_0_reg_147 = ap_const_lv2_3) else "0";
    icmp_ln76_fu_312_p2 <= "1" when (i1_0_reg_158 = ap_const_lv2_2) else "0";
    icmp_ln78_fu_361_p2 <= "1" when (j2_0_reg_169 = ap_const_lv4_8) else "0";
    icmp_ln80_fu_373_p2 <= "1" when (j2_0_reg_169 = ap_const_lv4_7) else "0";
    j_4_fu_367_p2 <= std_logic_vector(unsigned(j2_0_reg_169) + unsigned(ap_const_lv4_1));
    j_fu_251_p2 <= std_logic_vector(unsigned(j_0_reg_147) + unsigned(ap_const_lv2_1));
    or_ln70_fu_200_p2 <= (tmp_7_fu_192_p3 or ap_const_lv5_3);
    or_ln81_fu_336_p2 <= (tmp_9_fu_324_p3 or ap_const_lv5_7);
    select_ln81_fu_355_p3 <= 
        go_up_1_reg_416 when (trunc_ln81_fu_351_p1(0) = '1') else 
        go_up_0_reg_411;
        sext_ln68_1_fu_308_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_1_reg_468),64));

        sext_ln68_fu_274_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_fu_269_p2),64));

        sext_ln70_fu_297_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln70_fu_292_p2),64));

    sub_ln68_fu_231_p2 <= std_logic_vector(unsigned(zext_ln68_1_fu_227_p1) - unsigned(zext_ln68_fu_215_p1));
    tmp_4_fu_257_p3 <= j_0_reg_147(1 downto 1);
    tmp_7_fu_192_p3 <= (i_0_reg_135 & ap_const_lv3_0);
    tmp_8_fu_206_p3 <= (ap_const_lv59_0 & or_ln70_fu_200_p2);
    tmp_9_fu_324_p3 <= (i1_0_reg_158 & ap_const_lv3_0);
    tmp_fu_219_p3 <= (i_0_reg_135 & ap_const_lv2_0);
    tmp_s_fu_342_p3 <= (ap_const_lv59_0 & or_ln81_fu_336_p2);
    trunc_ln81_fu_351_p1 <= i1_0_reg_158(1 - 1 downto 0);
    zext_ln68_1_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_219_p3),5));
    zext_ln68_2_fu_265_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_fu_251_p2),5));
    zext_ln68_3_fu_279_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_147),5));
    zext_ln68_fu_215_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_135),5));
    zext_ln70_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_147),5));
    zext_ln81_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_9_fu_324_p3),6));
    zext_ln83_1_fu_388_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln83_fu_383_p2),64));
    zext_ln83_2_fu_393_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j2_0_reg_169),6));
    zext_ln83_3_fu_402_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln83_1_reg_514),64));
    zext_ln83_fu_379_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_4_fu_367_p2),6));
end behav;
