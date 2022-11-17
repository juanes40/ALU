library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alufinal is
	port (
			A, B : in std_logic_vector(7 downto 0);
			ALU_Sel : in std_logic_vector(2 downto 0);
			HEX0, HEX1, HEX2, HEX3 : out std_logic_vector(0 to 6);
			NZVC : out std_logic_vector(3 downto 0));
end entity;

architecture arch_alu of alufinal is
	component alu
		port (
			A, B : in std_logic_vector(7 downto 0);
			ALU_Sel : in std_logic_vector(2 downto 0);
			Result : out std_logic_vector(7 downto 0);
			NZVC : out std_logic_vector(3 downto 0));
	end component;
	
	component bcdceroan 
		port( 
		SW : in std_logic_vector( 3 downto 0);
		HEX0 : out std_logic_vector(0 to 6));
	end component;
	
	signal salida_datos0 : std_logic_vector(7 downto 0);
	signal salida_datos1 : std_logic_vector(3 downto 0) := salida_datos0(3 downto 0);
	signal salida_datos2 : std_logic_vector(3 downto 0) := salida_datos0(7 downto 4);
	
	signal salida_datos3 : std_logic_vector(3 downto 0) := B(3 downto 0);
	signal salida_datos4 : std_logic_vector(3 downto 0) := B(7 downto 4);
	
	begin
		Alutest : alu port map(A, B, ALU_Sel, salida_datos0, NZVC);
		salida0 : bcdceroan port map(salida_datos1, HEX0);
		salida1 : bcdceroan port map(salida_datos2, HEX1);
		salida2 : bcdceroan port map(salida_datos3, HEX2);
		salida3 : bcdceroan port map(salida_datos4, HEX3);
end architecture;	
	
	