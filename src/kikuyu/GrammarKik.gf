--# -path=.:../abstract:../common:prelude

concrete GrammarKik of Grammar = 
  NounKik, 
  VerbKik, 
  AdjectiveKik,
  AdverbKik,
  NumeralKik,
  SentenceKik,
  QuestionKik,
  RelativeKik,
  ConjunctionKik,
  PhraseKik,
  TextX - [Adv],
  StructuralKik,
  IdiomKik,
  TenseX - [Adv]
  **  {

flags startcat = Phr ; unlexer = text ; lexer = text;

--lin
  --PPos = {s = [] ; p = CPos} ;
 -- PNeg = {s = [] ; p = CNeg True} ; -- contracted: don't
 --PPos  = {s = [] ; b = True} ;
 --  PNeg  = {s = [] ; b = False} ;
 --  TPres = {s = [] ; t = ResKik.Pres} ;
 -- TPast = {s = [] ; t = ResKik.Past };
 --  TFut = {s = [] ; t = ResKik.Fut };
} ;