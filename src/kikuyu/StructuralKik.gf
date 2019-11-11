concrete StructuralKik of Structural = CatKik ** 
  open MorphoKik, ParadigmsKik, DiffKik, 
  (C = ConstructX), Prelude in {
  flags optimize=all ;
  lin
  above_Prep = mkPrep "iguru ria" False;
  after_Prep = mkPrep "thuta wa" False;
  all_Predet = {s = \\g => Allpredetprefix g + "ote"} ;
  almost_AdA = mkAdA "hakuhi " ;
  almost_AdN = mkAdN "hakuhi " ;
  although_Subj = ss "onakorwo" ;
  always_AdV = mkAdV "tene na tene" ;
  and_Conj = mkConj "na" ;
  because_Subj = ss "tondu" | ss "tondu"| ss "ni tondu";
  before_Prep = mkPrep "mbere" False ;
  behind_Prep = mkPrep "thutha" False;
  between_Prep = mkPrep "gatagati"False ;
  both7and_DConj = mkConj "eli" "na";
  but_PConj = ss "no" ;
  by8agent_Prep = mkPrep "na"False ;
  by8means_Prep = mkPrep "gwa"False ;
 can8know_VV, can_VV = MorphoKik.regV "hota";
  during_Prep = mkPrep "ihinda ria" False;
  either7or_DConj = mkConj "ima" "au" singular ;
 everybody_NP = regNP "oo mundu" a_wa singular  False;
  every_Det = { s =\\g => "oo"; n = Sg; isPre =False} ; 
  everything_NP = regNP "oo kindu" ki_vi singular False ;
  everywhere_Adv = mkAdv "oo handu" ;
 
  few_Det = {s =\\g => Few_prefix g + "gi" ; n= Pl; isPre=True};
             
  for_Prep = mkPrep nonExist False;
  from_Prep = mkPrep "ya"False | mkPrep "kuuma" False;
  he_Pron = mkPron "yee" "ake" G1 Sg P3 ;
  here_Adv = mkAdv "haha" ;
  here7to_Adv = mkAdv ["kou"] ;
  here7from_Adv = mkAdv ["haha"] ;
  how_IAdv = ss "je" ;
  how8much_IAdv = ss "cigana" ; --check with how many
  if_Subj = ss "akorwo"  ;
  in8front_Prep = mkPrep ["ubere "] False;
 i_Pron   =mkPron "nie" "akwa" G1 Sg P1 ;
  in_Prep = mkPrep "kuria" True;
 it_Pron   ={ s=\\c=>nonExist; poss=\\n,g=> nonExist; a=Ag G4 Sg P3};
 more_CAdv =C.mkCAdv "muno" "";
 --less_CAdv = C.mkCAdv "gathina" ;
 much_Det, many_Det = { s =\\g =>  Many_prefix g + "ngi" ; n= Pl; isPre =True };

  more_Adv = mkAdv "muno" ; 
  most_Predet = {s = \\g => MorphoKik.Mostpredetprefix g + "ngi"} ;
 --  must_VV = {   
  no_Phr = ss "hatire" ;
  no_Utt = ss "hatire" ;
  on_Prep = mkPrep "kwenye" True | mkPrep "kuhusu"  True;
  one_Quant = {s = \\n,g =>  "imwe" } ; 
  only_Predet = {s = \\g =>  "tu" } ;z
  or_Conj = mkConj "kana" singular ;
  otherwise_PConj = ss "np" ;
  please_Voc = ss "wooi" ;
  part_Prep, possess_Prep = let
       questo : ParadigmsKik.Number =>   MorphoKik.Cgender =>  Str = table {
    Sg => \\g=> case <g> of {    <G3> => "ri" ; 
                                 <G4> => "kia" ; 
                                 <G5> => "ya" ; 
                                 <G11> => "ha";
                                 <G12> => "gwa";
                                 <G13> => "wa";
                                 <G1> |<G2>|<G6>|<G7> |<G8> => "wa" ; 
                                  _ => ""}; 
                       
      Pl => \\g=> case <g> of{<G1> => "wa" ; 
                              <G4> => "cia" ; 
                              <G5>|<G6> => "cia" ; 
                              <G2>|<G3> |<G8> |<G9> |<G10> => "ya"; 
                                 _ => ""}}
                     in { s= questo; isFused= False};
  quite_Adv = mkAdA "biu" ;
  she_Pron  = mkPron "wee" "ake" G1 Sg P3;
  so_AdA = mkAdA "so" ;
  somebody_NP = regNP "mundu ungi" a_wa singular False;
  someSg_Det = { s =\\g =>  Detsomesgprefix g + "ngi"; n= Sg; isPre=True  } ;
  somePl_Det = { s =\\g => Detsomeplprefix g + "ingi" ; n= Pl; isPre=True } ;
  something_NP = regNP "kindu kina" ki_vi singular False;
  somewhere_Adv = mkAdv "handu hana" ;
  that_Quant = let
       questo : ParadigmsKik.Number =>  MorphoKik.Cgender =>  Str = table {
    Sg => \\g=> case <g> of {
                    <G1> => "ucio" ;
                    <G2 > => "ucio";
                    <G3 > => "iyo";
                    <G4 > => "keu";
                    <G5 > => "iyo";
                    <G6 > => "ucio";
                    <G7> => "ucio";
                    <G8> => "ucio" ;
                    <G11 > => "hau";
                    <G12 > => "kou";
                    <G13 > => "kou";
                    <G9 > | <G10 >=> ""          
                   }; 
                       
      Pl => \\g=> case <g> of{
                    <G1> => "acio" ;
                    <G2 > => "iyo";
                    <G3 > => "macio";
                    <G4 > => "ugwo";
                    <G5 > => "icio";
                    <G6 > => "icio";
                    <G8> => "macio" ;
                    <G10 > => "iyo";
                    <G12 > => "kou";
                    <G13 > => "kou";
                   _ => ""
                   } 
               
           };
    in {
         s = questo ;
        } ;
  there_Adv = mkAdv "haria" ;
  there7to_Adv = mkAdv "okou " ;
  there7from_Adv = mkAdv [" kuuma haria"] ;
  therefore_PConj = ss "ugwo" ;
  they_Pron  =mkPron "wao" "ao" G1 Pl P3 ;   
  this_Quant = let
       questo : ParadigmsKik.Number =>  MorphoKik.Cgender =>  Str = table {
    Sg => \\g=> case <g> of {
                    <G1> => "uyu" ;
                    <G11> => "haha" ;
                    <G12> => "guku" ;
                    <G13> => "guku" ;
                    <G4 > => "giki";
                    <G3 > => "riri";
                    <G5 > => "eno";
                    <G9 > |<G10 >=> "";
                    <G2 > |<G8>|<G7> |<G6> => "uyu"        
                   }; 
                       
      Pl => \\g=> case <g> of{                  
                    <G1> => "aya" ;
                    <G4 > => "ici";
                    <G5 > |<G6 > => "ici";
                    <G2 > |<G10> => "eno";
                     <G3 > |<G8 >|<G9 > => "maya";
                      _=> ""
                   } 
               
           }
    in {
         s = questo ;
        } ;
    through_Prep = mkPrep "guciekera" False;
  too_AdA = mkAdA "uria" ;
  to_Prep = mkPrep "nginya" False ;
  under_Prep = mkPrep "thi ya"False ;
  very_AdA = mkAdA "muno" ;
  want_VV = MorphoKik.regV  "renda" ;
  we_Pron  =mkPron "ithue" "etu" G1 Pl P1 ;
  whatPl_IP = mkIP "kii"  plural ;
  whatSg_IP = mkIP "kii"  singular ;
  when_IAdv = ss "ri" ;
  when_Subj = ss "ihinda" ;
  where_IAdv = ss "haa" ;
  which_IQuant = let
       questo : ParadigmsKik.Number =>  DiffKik.Cgender =>  Str =
        table {
    Sg => \\g=> IDetprefixsg  g + "pi"   ;
    Pl => \\g=> IDetprefixpl g + "pi" };
        in { s = questo ; } ;
  how8many_IDet= {s=\\g=> PrefixPlNom g + "ngapi" ; n=Pl} ;
  whichPl_IDet = {s=\\g=> "amba" + IQuantprefixpl g  ; n=Pl} ;
  whichSg_IDet = {s=\\g=> "amba" + IQuantprefixsg g ; n=Sg} ;
 whoPl_IP = mkIP "nuu" plural ;
  whoSg_IP = mkIP "nuu" singular ;
  why_IAdv = ss "niki" ;
  without_Prep = mkPrep "hatari" False ;
  with_Prep = mkPrep "aria" False ;
 yes_Phr = ss "niguo" ;
  yes_Utt = ss "niguo" ;
  youSg_Pron  =  mkPron "wee" "ee" G1 Sg P2 ;
  youPol_Pron,youPl_Pron  = mkPron "inyue" "yanyu" G1 Pl P2 ;
  not_Predet = {s = \\g =>  "rora"} ;
  no_Quant =  {s = \\g,n =>  "gutire"} ;   
  if_then_Conj = mkConj "akorwo" "basi" singular ;
  nobody_NP = regNP "gutire mundu" a_wa singular False;
  nothing_NP = regNP "gutire kindu" ki_vi singular False ;
  at_least_AdN = mkAdN "" ;
  at_most_AdN = mkAdN "kuhubira" ;
  except_Prep = mkPrep "gathina" False ;
  as_CAdv = C.mkCAdv "akorwo" [] ;
  have_V2 = dirV2 (mkV "ena") ;
  that_Subj = ss "iyo" ;
  lin language_title_Utt = ss "Kikuyu" ;
}

