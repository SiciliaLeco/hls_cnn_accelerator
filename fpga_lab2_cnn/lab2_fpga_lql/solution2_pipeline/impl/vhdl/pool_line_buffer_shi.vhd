-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pool_line_buffer_shi is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data : IN STD_LOGIC_VECTOR (31 downto 0);
    cal_pool_address0 : OUT STD_LOGIC_VECTOR (0 downto 0);
    cal_pool_ce0 : OUT STD_LOGIC;
    cal_pool_we0 : OUT STD_LOGIC;
    cal_pool_d0 : OUT STD_LOGIC_VECTOR (unknown downto unknown);
    cal_pool_q0 : IN STD_LOGIC_VECTOR (unknown downto unknown);
    cal_pool_address1 : OUT STD_LOGIC_VECTOR (0 downto 0);
    cal_pool_ce1 : OUT STD_LOGIC;
    cal_pool_we1 : OUT STD_LOGIC;
    cal_pool_d1 : OUT STD_LOGIC_VECTOR (unknown downto unknown);
    cal_pool_q1 : IN STD_LOGIC_VECTOR (unknown downto unknown);
    pool_line_buffer_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    pool_line_buffer_ce0 : OUT STD_LOGIC;
    pool_line_buffer_we0 : OUT STD_LOGIC;
    pool_line_buffer_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    pool_line_buffer_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    pool_line_buffer_address1 : OUT STD_LOGIC_VECTOR (2 downto 0);
    pool_line_buffer_ce1 : OUT STD_LOGIC;
    pool_line_buffer_we1 : OUT STD_LOGIC;
    pool_line_buffer_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    pool_line_buffer_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of pool_line_buffer_shi is 
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
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal reg_71 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal reg_79 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal go_up_reg_86 : STD_LOGIC_VECTOR (31 downto 0);
    signal pool_line_buffer_loa_3_reg_91 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_port_reg_data : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
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


    reg_71_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce)) then
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    reg_71 <= pool_line_buffer_q1;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    reg_71 <= pool_line_buffer_q0;
                end if;
            end if; 
        end if;
    end process;

    reg_79_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce)) then
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    reg_79 <= pool_line_buffer_q0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    reg_79 <= pool_line_buffer_q1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                ap_port_reg_data <= data;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                go_up_reg_86 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(cal_pool_q0),32));
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                pool_line_buffer_loa_3_reg_91 <= pool_line_buffer_q1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_ce, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_ce, ap_CS_fsm_state6)
    begin
        if ((((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_ce, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    cal_pool_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            cal_pool_address0 <= ap_const_lv1_0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            cal_pool_address0 <= ap_const_lv1_1;
        else 
            cal_pool_address0 <= "X";
        end if; 
    end process;


    cal_pool_address1_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            cal_pool_address1 <= ap_const_lv1_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            cal_pool_address1 <= ap_const_lv1_0;
        else 
            cal_pool_address1 <= "X";
        end if; 
    end process;


    cal_pool_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_ce, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state3)
    begin
        if ((((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            cal_pool_ce0 <= ap_const_logic_1;
        else 
            cal_pool_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    cal_pool_ce1_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_ce, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if ((((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            cal_pool_ce1 <= ap_const_logic_1;
        else 
            cal_pool_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    cal_pool_d0_assign_proc : process(cal_pool_q1, reg_71, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state3, ap_port_reg_data)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            cal_pool_d0 <= ap_port_reg_data(0 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            cal_pool_d0 <= reg_71(0 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            cal_pool_d0 <= cal_pool_q1;
        else 
            cal_pool_d0 <= "";
        end if; 
    end process;

    cal_pool_d1 <= cal_pool_q1;

    cal_pool_we0_assign_proc : process(ap_ce, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state3)
    begin
        if ((((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            cal_pool_we0 <= ap_const_logic_1;
        else 
            cal_pool_we0 <= ap_const_logic_0;
        end if; 
    end process;


    cal_pool_we1_assign_proc : process(ap_ce, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            cal_pool_we1 <= ap_const_logic_1;
        else 
            cal_pool_we1 <= ap_const_logic_0;
        end if; 
    end process;


    pool_line_buffer_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            pool_line_buffer_address0 <= ap_const_lv3_5;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            pool_line_buffer_address0 <= ap_const_lv3_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            pool_line_buffer_address0 <= ap_const_lv3_0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            pool_line_buffer_address0 <= ap_const_lv3_3;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            pool_line_buffer_address0 <= ap_const_lv3_2;
        else 
            pool_line_buffer_address0 <= "XXX";
        end if; 
    end process;


    pool_line_buffer_address1_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state3, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            pool_line_buffer_address1 <= ap_const_lv3_2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            pool_line_buffer_address1 <= ap_const_lv3_5;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            pool_line_buffer_address1 <= ap_const_lv3_4;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            pool_line_buffer_address1 <= ap_const_lv3_1;
        else 
            pool_line_buffer_address1 <= "XXX";
        end if; 
    end process;


    pool_line_buffer_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_ce, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if ((((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            pool_line_buffer_ce0 <= ap_const_logic_1;
        else 
            pool_line_buffer_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    pool_line_buffer_ce1_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_ce, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state3, ap_CS_fsm_state5)
    begin
        if ((((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            pool_line_buffer_ce1 <= ap_const_logic_1;
        else 
            pool_line_buffer_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    pool_line_buffer_d0_assign_proc : process(reg_71, ap_CS_fsm_state4, reg_79, ap_CS_fsm_state3, go_up_reg_86, pool_line_buffer_loa_3_reg_91, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            pool_line_buffer_d0 <= go_up_reg_86;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            pool_line_buffer_d0 <= pool_line_buffer_loa_3_reg_91;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            pool_line_buffer_d0 <= reg_71;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            pool_line_buffer_d0 <= reg_79;
        else 
            pool_line_buffer_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    pool_line_buffer_d1_assign_proc : process(reg_71, ap_CS_fsm_state4, reg_79, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            pool_line_buffer_d1 <= reg_71;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            pool_line_buffer_d1 <= reg_79;
        else 
            pool_line_buffer_d1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    pool_line_buffer_we0_assign_proc : process(ap_ce, ap_CS_fsm_state4, ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if ((((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            pool_line_buffer_we0 <= ap_const_logic_1;
        else 
            pool_line_buffer_we0 <= ap_const_logic_0;
        end if; 
    end process;


    pool_line_buffer_we1_assign_proc : process(ap_ce, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            pool_line_buffer_we1 <= ap_const_logic_1;
        else 
            pool_line_buffer_we1 <= ap_const_logic_0;
        end if; 
    end process;

end behav;