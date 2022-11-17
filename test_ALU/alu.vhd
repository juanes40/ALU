library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
	port (
			A, B : in std_logic_vector(7 downto 0);
			ALU_Sel : in std_logic_vector(2 downto 0);
			Result : out std_logic_vector(7 downto 0);
			NZVC : out std_logic_vector(3 downto 0));
end entity;

architecture operations of alu is
	
	begin 
		ALU_PROCESS : process (A, B, ALU_Sel)
			variable Sum_uns : unsigned (8 downto 0);
			variable Res_uns : unsigned (8 downto 0);
			
			begin
				--La Suma--
				if (ALU_Sel = "000") then  
					--- Sum Calculation 
					Sum_uns := unsigned('0' & A) + unsigned('0' & B);
					Result <= std_logic_vector(Sum_uns(7 downto 0));
					--- Bandera negativa (N) 
					NZVC(3) <= Sum_uns(7);
					--- Bandera cero (Z) 
					if (Sum_uns(7 downto 0) = x"00") then
						NZVC(2) <= '1';
					else
						NZVC(2) <= '0';
					end if;
					--- Bandera desborde (V) 
					if ((A(7)='0' and B(7)='0' and Sum_uns(7)='1') or (A(7)='1' and B(7)='1' and Sum_uns(7)='0')) then
						NZVC(1) <= '1';
					else
						NZVC(1) <= '0';
					end if;
					--- Bandera carga (C) 
					NZVC(0) <= Sum_uns(8);
					
				--La Resta--
				elsif (ALU_Sel = "001") then
					if(A >= B) then
						Res_uns := unsigned('0' & A) - unsigned('0' & B);
						Result <= std_logic_vector(Res_uns(7 downto 0));
						-- Bandera negativa (N)
						NZVC(3) <= Res_uns(7);
						-- Bandera cero (Z)
						if (Res_uns(7 downto 0) = x"00") then
							NZVC(2) <= '1';
						else 
							NZVC(2) <= '0';
						end if;
						-- Bandera desborde (V)
						if ((A(7)='1' and B(7)='0' and Res_uns(7)='0') or (A(7)='0' and B(7)='1' and Res_uns(7)='1')) then
							NZVC(0) <= '1';
						else
							NZVC(1) <= '0';
						end if;
						-- Bandera carga (C)
						NZVC(0) <= Res_uns(8);
						
						-- Resta negativos
						elsif(A < B) then
							
							Res_uns := unsigned('0' & A) - unsigned('0' & B);
							Result <= std_logic_vector(Res_uns(7 downto 0));
							-- Bandera negativa
							NZVC(3) <= Res_uns(7);
							-- Bandera cero
							if (Res_uns(7 downto 0) = x"00") then
								NZVC(2) <= '1';
							else
								NZVC(2) <= '0';
							end if;
							-- Bandera sobrecarga
							if ((A(7)='0' and B(7)='0' and Res_uns(7)='1') or (A(7)='1' and B(7)='1' and Res_uns(7)='0')) then
								NZVC(1) <= '0';
							else
								NZVC(0) <= '1';
							end if;
							-- Bandera carga
								NZVC(0) <= Res_uns(8);
						end if;
				end if;
		end process;
end architecture;