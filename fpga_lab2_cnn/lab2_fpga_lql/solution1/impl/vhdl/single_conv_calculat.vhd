-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity single_conv_calculat is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    cal_conv_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    cal_conv_ce0 : OUT STD_LOGIC;
    cal_conv_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    kernel_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    kernel_ce0 : OUT STD_LOGIC;
    kernel_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of single_conv_calculat is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_88_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reg_167 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal sub_ln35_fu_110_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal sub_ln35_reg_172 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln31_fu_82_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_fu_122_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_reg_180 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln33_fu_116_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cal_conv_load_reg_195 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal kernel_load_reg_200 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln35_fu_143_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln35_reg_205 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal i_0_reg_52 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_0_reg_63 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal sext_ln35_fu_137_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ans_1_fu_22 : STD_LOGIC_VECTOR (31 downto 0);
    signal ans_fu_147_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_98_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln35_1_fu_106_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln35_fu_94_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln35_2_fu_128_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln35_fu_132_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);


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


    ans_1_fu_22_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                ans_1_fu_22 <= ans_fu_147_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ans_1_fu_22 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    i_0_reg_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln33_fu_116_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_52 <= i_reg_167;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_52 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    j_0_reg_63_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln31_fu_82_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_reg_63 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                j_0_reg_63 <= j_reg_180;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                cal_conv_load_reg_195 <= cal_conv_q0;
                kernel_load_reg_200 <= kernel_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_167 <= i_fu_88_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_reg_180 <= j_fu_122_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                mul_ln35_reg_205 <= mul_ln35_fu_143_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln31_fu_82_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                sub_ln35_reg_172 <= sub_ln35_fu_110_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln31_fu_82_p2, ap_CS_fsm_state3, icmp_ln33_fu_116_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln31_fu_82_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln33_fu_116_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln35_fu_132_p2 <= std_logic_vector(unsigned(sub_ln35_reg_172) + unsigned(zext_ln35_2_fu_128_p1));
    ans_fu_147_p2 <= std_logic_vector(unsigned(ans_1_fu_22) + unsigned(mul_ln35_reg_205));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln31_fu_82_p2)
    begin
        if ((((icmp_ln31_fu_82_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln31_fu_82_p2)
    begin
        if (((icmp_ln31_fu_82_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= ans_1_fu_22;
    cal_conv_address0 <= sext_ln35_fu_137_p1(4 - 1 downto 0);

    cal_conv_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            cal_conv_ce0 <= ap_const_logic_1;
        else 
            cal_conv_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_88_p2 <= std_logic_vector(unsigned(i_0_reg_52) + unsigned(ap_const_lv2_1));
    icmp_ln31_fu_82_p2 <= "1" when (i_0_reg_52 = ap_const_lv2_3) else "0";
    icmp_ln33_fu_116_p2 <= "1" when (j_0_reg_63 = ap_const_lv2_3) else "0";
    j_fu_122_p2 <= std_logic_vector(unsigned(j_0_reg_63) + unsigned(ap_const_lv2_1));
    kernel_address0 <= sext_ln35_fu_137_p1(4 - 1 downto 0);

    kernel_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            kernel_ce0 <= ap_const_logic_1;
        else 
            kernel_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    mul_ln35_fu_143_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(kernel_load_reg_200) * signed(cal_conv_load_reg_195))), 32));
        sext_ln35_fu_137_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln35_fu_132_p2),64));

    sub_ln35_fu_110_p2 <= std_logic_vector(unsigned(zext_ln35_1_fu_106_p1) - unsigned(zext_ln35_fu_94_p1));
    tmp_fu_98_p3 <= (i_0_reg_52 & ap_const_lv2_0);
    zext_ln35_1_fu_106_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_98_p3),5));
    zext_ln35_2_fu_128_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_63),5));
    zext_ln35_fu_94_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_52),5));
end behav;