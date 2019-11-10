--# -path=.:../abstract:../common:prelude

concrete GrammarMer of Grammar = 
  NounMer, 
  VerbMer, 
  AdjectiveMer,
  AdverbMer,
  NumeralMer,
  SentenceMer,
  QuestionMer,
  RelativeMer,
  ConjunctionMer,
  PhraseMer,
  TextX - [Adv],
  StructuralMer,
  IdiomMer,
  TenseX - [Adv]
  **  {

flags startcat = Phr ; unlexer = text ; lexer = text;

--lin
  --PPos = {s = [] ; p = CPos} ;
 -- PNeg = {s = [] ; p = CNeg True} ; -- contracted: don't
 --PPos  = {s = [] ; b = True} ;
 --  PNeg  = {s = [] ; b = False} ;
 --  TPres = {s = [] ; t = ResMer.Pres} ;
 -- TPast = {s = [] ; t = ResMer.Past };
 --  TFut = {s = [] ; t = ResMer.Fut };
} ;