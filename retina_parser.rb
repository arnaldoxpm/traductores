#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.14
# from Racc grammer file "".
#

require 'racc/parser.rb'

require_relative "retina.rb"
require_relative "retina_ast.rb"

class SyntacticError < RuntimeError

    def initialize(tok)
        @token = tok
    end

    def to_s
        "Syntactic error on: #{@token}"
    end
end

class Parser < Racc::Parser

module_eval(<<'...end retina.y/module_eval...', 'retina.y', 185)
begin
def on_error(id, token, stack)
    #raise SyntacticError::new(token)
end

def next_token
		if !@tokens.empty?
	    token = @tokens[0]
			@tokens = @tokens[1..@tokens.length]
			#puts "#{token.class},#{token}"
			return [token.class,token]
		else
    	return [false,false]
		end
end

def parse(tokens)
    @yydebug = true
    #@lexer = lexer
    @tokens = tokens
		#puts " #{@tokens}..."
    ast = do_parse
		#puts "#{ast} astast"
    return ast
end
end
...end retina.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    19,    20,    19,    20,    21,    12,    21,    19,    20,    19,
    20,    21,     6,    21,    36,     6,    36,    13,    19,    20,
    13,    36,    21,    36,    19,    20,    19,    20,    21,    10,
    21,     5,    36,    19,    20,    19,    20,    21,    36,    21,
    36,    19,    20,    13,    26,    21,   nil,    14,    16,    36,
    17,    16,   nil,    17,     7,    14,     7,     7,     7,    16,
   nil,    17,   nil,     7,   nil,     7,   nil,    19,    20,    19,
    20,    21,   nil,    21,     7,     3,     2,   nil,   nil,   nil,
     7,    36,     7,    36,   nil,   nil,     7,   nil,   nil,     7,
   nil,     7,   nil,    47,   nil,   nil,   nil,     7,    30,    32,
    31,    35,    33,    34,    13,   nil,   nil,   nil,   nil,    -2,
    -2,    -2,    -2,    -2,    -2,    30,    32,    31,    35,    33,
    34,   nil,   nil,     7,   nil,     7,    30,    32,    31,    35,
    33,    34,    30,    32,    31,    35,    33,    34,    30,    32,
    31,    35,    33,    34,   nil,    29,    30,    32,    31,    35,
    33,    34,   nil,   nil,   nil,   nil,    -2,   nil,   nil,   nil,
   nil,   nil,    29,    30,    32,    31,    35,    33,    34,   nil,
    26,    26,   nil,    29,    16,    16,    17,    17,    26,    29,
   nil,   nil,    16,   nil,    17,    29,    30,    32,    31,    35,
    33,    34,   nil,    29,    30,    32,    31,    35,    33,    34,
    30,    32,    31,    35,    33,    34,   nil,   nil,   nil,   nil,
    29,    26,     7,     7,   nil,    16,   nil,    17,    26,    26,
     7,   nil,    16,    16,    17,    17,    26,   nil,   nil,   nil,
    16,    26,    17,    29,   nil,    16,   nil,    17,   nil,   nil,
   nil,    29,   nil,   nil,   nil,   nil,   nil,    29,   nil,   nil,
   nil,    43,    44,     7,    45,    46,    41,    42,    39,    40,
     7,     7,   nil,   nil,    48,   nil,   nil,   nil,     7,   nil,
   nil,   -13,   -13,     7,   -13,   -13,   -13,   -13,   -13,   -13,
    43,    44,   nil,    45,    46,    41,    42,    39,    40,    43,
    44,   nil,    45,    46,    41,    42,    39,    40,    43,    44,
   nil,    45,    46,    41,    42,    39,    40,    43,    44,   nil,
    45,    46,    41,    42,    39,    40,    43,    44,   nil,    45,
    46,    41,    42,    39,    40,    43,    44,   nil,    45,    46,
    41,    42,    39,    40,    43,    44,   nil,    45,    46,    41,
    42,    39,    40,    43,    44,   nil,    45,    46,    41,    42,
    39,    40,    43,    44,   nil,    45,    46,    41,    42,    39,
    40,    43,    44,   nil,    45,    46,    41,    42,    39,    40 ]

racc_action_check = [
    36,    36,    42,    42,    36,     8,    42,    41,    41,    40,
    40,    41,     6,    40,    36,     4,    42,    11,    39,    39,
    49,    41,    39,    40,    45,    45,    46,    46,    45,     5,
    46,     1,    39,    12,    12,    44,    44,    12,    45,    44,
    46,    14,    14,    57,    33,    14,   nil,    12,    33,    44,
    33,    12,   nil,    12,     6,    14,    36,     4,    42,    14,
   nil,    14,   nil,    41,   nil,    40,   nil,    21,    21,    43,
    43,    21,   nil,    43,    39,     0,     0,   nil,   nil,   nil,
    45,    21,    46,    43,   nil,   nil,    33,   nil,   nil,    12,
   nil,    44,   nil,    23,   nil,   nil,   nil,    14,    23,    23,
    23,    23,    23,    23,    24,   nil,   nil,   nil,   nil,    24,
    24,    24,    24,    24,    24,    52,    52,    52,    52,    52,
    52,   nil,   nil,    21,   nil,    43,    51,    51,    51,    51,
    51,    51,    56,    56,    56,    56,    56,    56,    55,    55,
    55,    55,    55,    55,   nil,    23,    28,    28,    28,    28,
    28,    28,   nil,   nil,   nil,   nil,    24,   nil,   nil,   nil,
   nil,   nil,    52,    54,    54,    54,    54,    54,    54,   nil,
    31,    35,   nil,    51,    31,    35,    31,    35,    30,    56,
   nil,   nil,    30,   nil,    30,    55,    53,    53,    53,    53,
    53,    53,   nil,    28,    18,    18,    18,    18,    18,    18,
    50,    50,    50,    50,    50,    50,   nil,   nil,   nil,   nil,
    54,    29,    31,    35,   nil,    29,   nil,    29,    26,    17,
    30,   nil,    26,    17,    26,    17,    34,   nil,   nil,   nil,
    34,    32,    34,    53,   nil,    32,   nil,    32,   nil,   nil,
   nil,    18,   nil,   nil,   nil,   nil,   nil,    50,   nil,   nil,
   nil,    25,    25,    29,    25,    25,    25,    25,    25,    25,
    26,    17,   nil,   nil,    25,   nil,   nil,   nil,    34,   nil,
   nil,    15,    15,    32,    15,    15,    15,    15,    15,    15,
    60,    60,   nil,    60,    60,    60,    60,    60,    60,    38,
    38,   nil,    38,    38,    38,    38,    38,    38,    22,    22,
   nil,    22,    22,    22,    22,    22,    22,    58,    58,   nil,
    58,    58,    58,    58,    58,    58,    61,    61,   nil,    61,
    61,    61,    61,    61,    61,    62,    62,   nil,    62,    62,
    62,    62,    62,    62,    63,    63,   nil,    63,    63,    63,
    63,    63,    63,    64,    64,   nil,    64,    64,    64,    64,
    64,    64,    59,    59,   nil,    59,    59,    59,    59,    59,
    59,    65,    65,   nil,    65,    65,    65,    65,    65,    65 ]

racc_action_pointer = [
    19,    31,   nil,   nil,    -1,    29,    -4,   nil,    -9,   nil,
   nil,     0,    31,   nil,    39,   267,   nil,   203,   172,   nil,
   nil,    65,   294,    76,    87,   247,   202,   nil,   124,   195,
   162,   154,   215,    28,   210,   155,    -2,   nil,   285,    16,
     7,     5,     0,    67,    33,    22,    24,   nil,   nil,     3,
   178,   104,    93,   164,   141,   116,   110,    26,   303,   348,
   276,   312,   321,   330,   339,   357 ]

racc_action_default = [
   -34,   -34,   -27,   -28,   -34,   -34,   -34,   -26,   -29,   -30,
    66,   -34,   -34,   -25,   -34,    -2,    -3,   -34,   -32,   -14,
   -15,   -34,   -31,   -34,   -13,   -34,   -34,    -2,    -4,   -34,
   -34,   -34,   -34,   -34,   -34,   -34,   -34,   -13,   -16,   -34,
   -34,   -34,   -34,   -34,   -34,   -34,   -34,    -1,   -12,    -2,
    -5,    -6,    -7,    -8,    -9,   -10,   -11,   -13,   -17,   -18,
   -19,   -20,   -21,   -22,   -23,   -24 ]

racc_goto_table = [
    22,     1,     4,     9,   nil,   nil,   nil,   nil,   nil,    38,
   nil,   nil,   nil,     8,   nil,    11,   nil,   nil,   nil,   nil,
   nil,    15,   nil,    24,   nil,   nil,    27,    58,    59,    60,
    61,    62,    63,    64,    65,    49,   nil,   nil,    27,    27,
    27,    27,    27,    27,    27,    57,    18,   nil,   nil,   nil,
   nil,    28,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    50,    51,    52,    53,    54,    55,    56 ]

racc_goto_check = [
     4,     1,     5,     6,   nil,   nil,   nil,   nil,   nil,     4,
   nil,   nil,   nil,     3,   nil,     3,   nil,   nil,   nil,   nil,
   nil,     3,   nil,     3,   nil,   nil,     3,     4,     4,     4,
     4,     4,     4,     4,     4,     3,   nil,   nil,     3,     3,
     3,     3,     3,     3,     3,     3,     2,   nil,   nil,   nil,
   nil,     2,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,     2,     2,     2,     2,     2,     2,     2 ]

racc_goto_pointer = [
   nil,     1,    34,     9,   -12,     2,    -1,   nil ]

racc_goto_default = [
   nil,   nil,    23,    37,    25,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  3, 73, :_reduce_1,
  1, 73, :_reduce_2,
  1, 73, :_reduce_3,
  2, 73, :_reduce_4,
  3, 73, :_reduce_5,
  3, 73, :_reduce_6,
  3, 73, :_reduce_7,
  3, 73, :_reduce_8,
  3, 73, :_reduce_9,
  3, 73, :_reduce_10,
  3, 73, :_reduce_11,
  3, 75, :_reduce_12,
  1, 75, :_reduce_13,
  1, 75, :_reduce_14,
  1, 75, :_reduce_15,
  2, 75, :_reduce_16,
  3, 75, :_reduce_17,
  3, 75, :_reduce_18,
  3, 75, :_reduce_19,
  3, 75, :_reduce_20,
  3, 75, :_reduce_21,
  3, 75, :_reduce_22,
  3, 75, :_reduce_23,
  3, 75, :_reduce_24,
  3, 74, :_reduce_25,
  1, 74, :_reduce_26,
  1, 76, :_reduce_27,
  1, 76, :_reduce_28,
  2, 72, :_reduce_29,
  2, 72, :_reduce_30,
  3, 77, :_reduce_31,
  3, 77, :_reduce_32,
  0, 78, :_reduce_none ]

racc_reduce_n = 34

racc_shift_n = 66

racc_token_table = {
  false => 0,
  :error => 1,
  True => 2,
  False => 3,
  And => 4,
  Or => 5,
  Not => 6,
  Igual => 7,
  Distinto => 8,
  MayorIgual => 9,
  MenorIgual => 10,
  Mayor => 11,
  Menor => 12,
  Separador => 13,
  Asignacion => 14,
  BackSlash => 15,
  ParentesisA => 16,
  ParentesisC => 17,
  Flecha => 18,
  Coma => 19,
  Numero => 20,
  "Strings" => 21,
  Menos => 22,
  Por => 23,
  Entre => 24,
  Porcentaje => 25,
  Mod => 26,
  Div => 27,
  Program => 28,
  Read => 29,
  Write => 30,
  Writeln => 31,
  If => 32,
  Then => 33,
  End => 34,
  While => 35,
  Do => 36,
  Repeat => 37,
  Times => 38,
  Func => 39,
  Begin => 40,
  Return => 41,
  For => 42,
  From => 43,
  To => 44,
  By => 45,
  Is => 46,
  Home => 47,
  "openeye" => 48,
  CloseEye => 49,
  Forward => 50,
  Backward => 51,
  RotateL => 52,
  RotateR => 53,
  SetPosition => 54,
  Arc => 55,
  Boolean => 56,
  Number => 57,
  Variables => 58,
  :UMENOS => 59,
  :UMINUS => 60,
  :Por => 61,
  :Entre => 62,
  :Porcentaje => 63,
  :Div => 64,
  :Mod => 65,
  :Mas => 66,
  :Menos => 67,
  Strings => 68,
  Mas => 69,
  OpenEye => 70 }

racc_nt_base = 71

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "\"true\"",
  "\"false\"",
  "\"and\"",
  "\"or\"",
  "\"not\"",
  "\"==\"",
  "\"\\\\=\"",
  "\">=\"",
  "\"<=\"",
  "\">\"",
  "\"<\"",
  "\";\"",
  "\"=\"",
  "\"\\\\\"",
  "\"(\"",
  "\")\"",
  "\"->\"",
  "\",\"",
  "\"numero\"",
  "\"Strings\"",
  "\"-\"",
  "\"*\"",
  "\"/\"",
  "\"%\"",
  "\"mod\"",
  "\"div\"",
  "\"program\"",
  "\"read\"",
  "\"write\"",
  "\"writeln\"",
  "\"if\"",
  "\"then\"",
  "\"end\"",
  "\"while\"",
  "\"do\"",
  "\"repeat\"",
  "\"times\"",
  "\"func\"",
  "\"begin\"",
  "\"return\"",
  "\"for\"",
  "\"from\"",
  "\"to\"",
  "\"by\"",
  "\"is\"",
  "\"home\"",
  "\"openeye\"",
  "\"closeeye\"",
  "\"forward\"",
  "\"backward\"",
  "\"rotatel\"",
  "\"rotater\"",
  "\"setposition\"",
  "\"arc\"",
  "\"boolean\"",
  "\"number\"",
  "\"variable\"",
  "UMENOS",
  "UMINUS",
  "Por",
  "Entre",
  "Porcentaje",
  "Div",
  "Mod",
  "Mas",
  "Menos",
  "\"strings\"",
  "\"+\"",
  "\"openeeye\"",
  "$start",
  "Declaracion",
  "Aritmetica",
  "Variables",
  "Logica",
  "TipoDeDato",
  "Asignacion",
  "Funciones" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'retina.y', 117)
  def _reduce_1(val, _values, result)
    val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 118)
  def _reduce_2(val, _values, result)
     result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 119)
  def _reduce_3(val, _values, result)
    result = Num.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 120)
  def _reduce_4(val, _values, result)
    result = UnaryMenos.new(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 121)
  def _reduce_5(val, _values, result)
    result = OpSuma.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 122)
  def _reduce_6(val, _values, result)
    result = OpResta.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 123)
  def _reduce_7(val, _values, result)
    result = OpDivision.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 124)
  def _reduce_8(val, _values, result)
    result = OpMultiplication.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 125)
  def _reduce_9(val, _values, result)
    result = OpMod.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 126)
  def _reduce_10(val, _values, result)
    result = OpDiv.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 127)
  def _reduce_11(val, _values, result)
    result = OpModulo.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 130)
  def _reduce_12(val, _values, result)
    result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 131)
  def _reduce_13(val, _values, result)
     result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 132)
  def _reduce_14(val, _values, result)
    result = True_.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 133)
  def _reduce_15(val, _values, result)
    result = False_.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 134)
  def _reduce_16(val, _values, result)
    result = UnaryNot.new(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 135)
  def _reduce_17(val, _values, result)
    result = OpMayor.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 136)
  def _reduce_18(val, _values, result)
    result = OpMenor.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 137)
  def _reduce_19(val, _values, result)
    result = OpMayorIgual.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 138)
  def _reduce_20(val, _values, result)
    result = OpMenorIgual.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 139)
  def _reduce_21(val, _values, result)
    result = OpAnd.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 140)
  def _reduce_22(val, _values, result)
    result = OpOr.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 141)
  def _reduce_23(val, _values, result)
    result = OpIgual.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 142)
  def _reduce_24(val, _values, result)
    result = OpDistinto.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 145)
  def _reduce_25(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 146)
  def _reduce_26(val, _values, result)
    result = Identificado.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 149)
  def _reduce_27(val, _values, result)
    result = TipoDato_.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 150)
  def _reduce_28(val, _values, result)
    result = TipoDato_.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 153)
  def _reduce_29(val, _values, result)
    result = OpDeclaracion.new(val[0],val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 154)
  def _reduce_30(val, _values, result)
    result = OpDeclaracion.new(val[0],val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 157)
  def _reduce_31(val, _values, result)
    result = OpAsignacion.new(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'retina.y', 158)
  def _reduce_32(val, _values, result)
    result = OpAsignacion.new(val[0],val[2])
    result
  end
.,.,

# reduce 33 omitted

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
