concrete StructuralChi of Structural = CatChi ** 
  open ParadigmsChi, ResChi, Prelude in {

  flags coding = utf8 ;

lin
    every_Det = mkDet "每" Sg ;
        
    this_Quant = mkDet "这" ;
    that_Quant = mkDet "那" ;

    i_Pron = pronNP "我" ;
    youSg_Pron = pronNP "你"  ;
    he_Pron = pronNP "他" ;
    she_Pron = pronNP "她" ;
    we_Pron = pronNP "我们" ;
    youPl_Pron = pronNP "你们" ;
    they_Pron = pronNP "他们" ;

    very_AdA = ssword "非常" ;    

    by8means_Prep = mkPrep "旁边" [] ;
    in_Prep = mkPrep "里" [];
    possess_Prep = mkPrep "的" [];
    with_Prep = mkPrep "一起" "和"; 
 
and_Conj = {s = table {
                    CPhr CNPhrase => mkConjForm "和" ;
                    CPhr CAPhrase => mkConjForm "而" ;
                    CPhr CVPhrase => mkConjForm "又" ;
                    CSent =>  mkConjForm []
                          }
                } ;
 or_Conj  = {s = table {
                    CPhr _ => mkConjForm "或" ;
                    CSent => mkConjForm "还是"
                          }
                } ;

    although_Subj = mkSubj "虽然" "但";
    because_Subj = mkSubj "因为" "所以" ;
    when_Subj = mkSubj [] "的时候" ; 

here_Adv = mkAdv "这里" ;
there_Adv = mkAdv "那里" ;
whoSg_IP, whoPl_IP = mkIPL "谁" ;
whatSg_IP, whatPl_IP = mkIPL " 什么" ;
where_IAdv = mkIAdvL "哪里" ;
when_IAdv = mkIAdvL "什么时候" ;
how_IAdv = mkIAdvL "如何" ;
all_Predet = ss "所有" ;
many_Det = mkDet "多" Pl ;
someSg_Det = mkDet (word "一些") Sg ;
somePl_Det = mkDet (word "一些") Sg ;
few_Det = mkDet "少" Pl ;
other_A = mkA "其他" ;

oper
  mkIPL, mkIAdvL, mkAdA, mkIDetL, mkPConjL, mkCAdv, mkIQuant = ssword ;

-- hsk

lin


above_Prep = mkPrep "上边" ;
after_Prep = mkPrep "以后" ;
under_Prep = mkPrep "下" ;
why_IAdv = mkIAdvL "为什么" ;
too_AdA = mkAdA "太" ;

before_Prep = mkPrep "从前" ; --s
between_Prep = mkPrep "之间" ; --s
but_PConj = mkPConjL "但是" ; --s


    can_VV  = mkVerb "能"  [] [] [] [] "不" ;
    must_VV = mkVerb "必须" [] [] [] [] "不" ;  ---- False "不能"
    want_VV = mkVerb "想" [] [] [] [] "不" ;

can8know_VV = mkV "会" [] [] [] [] "不" ; ----


except_Prep = mkPrep "除了" "以外" ; --s
for_Prep = mkPrep "为了" ; --s
from_Prep = mkPrep "从" ; --s
---how8many_IDet = mkIDet "几" ; --s
---how8much_IDet = mkIDet "多少" ; --s
in8front_Prep = mkPrep "前边" ; --s
it_Pron = pronNP "它" ; --s
---less_CAdv = mkCAdv "少" ; --s
much_Det = mkDet "多" Sg ; --s
---more_CAdv = mkCAdv "更" ; --s
---most_Predet = mkPredet "最" ; --s
no_Quant = mkDet "不" ; --s
not_Predet = ssword "不" ;
---only_Predet = mkPredet "只" ; --s
otherwise_PConj = mkPConjL "还是" ; --s
to_Prep = mkPrep "往" ; --s
---which_IQuant = mkIQuant "哪" ; --s

have_V2 = mkV2 "有" ;

yes_Utt = ss copula_s ;
no_Utt = ss neg_s ;

oper
  mkConjForm : Str -> {s1,s2 : Str} = \s -> {s1 = [] ; s2 = word s} ;

-- manually by AR

lin
  always_AdV = ssword "一直" ;
  part_Prep = mkPrep possessive_s ;  
  language_title_Utt = ssword "中文" ;  
  please_Voc = ss "请" ;
  quite_Adv = mkAdA "得很" ;

-- just missing

lin
almost_AdA = ssword "几乎" ;  
almost_AdN = ssword "几乎" ;  
--as_CAdv = ssword "什么" ;   -- as good as X
at_least_AdN = ssword "最少" ;  -- at least five
at_most_AdN = ssword "最多" ;
behind_Prep = mkPrep "后面" "在";  
--both7and_DConj = ssword "什么" ;  -- both - and
by8agent_Prep = mkPrep "被" ;    -- by for agent in passive 
                                  -- [mark] 被
during_Prep = mkPrep "期间" "在" ;  -- [mark] often equivalent to nothing
                                   -- translation for "he swam during this summer. " and "he swam this summer." are often the same
--either7or_DConj = ssword "什么" ;  
everybody_NP = ssword "每个人" ;  -- [mark] "每个人": 每(every)+个(classifier)+人(person)
everything_NP = ssword "每件事" ;  -- [mark] "每件事": 每(every)+件(classifier)+事(thing)
everywhere_Adv = mkAdv "到处" ;  
here7from_Adv = mkAdv "从这里" ;  -- from here
here7to_Adv = mkAdv "到这里" ;    -- to here
							    -- [mark] "从这里" 从(from) 这里(here)
								--        "到这里" 到( to ) 这里(here)
how8many_IDet = ssword "多少" ;  
how8much_IAdv = ssword "多少" ;  
if_Subj = mkSubj "如果" "就" ;  -- [mark] "就" often comes between NP and VP
--less_CAdv = ssword "什么" ;  -- less good than
--more_CAdv = ssword "什么" ;  
most_Predet = ssword "大多数" ;  
nobody_NP = ssword "没人" ;  
nothing_NP = ssword "没有什么" ;  
on_Prep = mkPrep "上" "在" ;    
only_Predet = ssword "只有" ;  -- only John
so_AdA = ssword "如此" ;  
somebody_NP = ssword "某人" ;  
something_NP = ssword "某事" ;  -- [mark] in sent, it depends on the context
somewhere_Adv = mkAdv "某处" ;  
that_Subj = mkSubj [] ", " ;  -- that + S [mark] comma
there7from_Adv = mkAdv "从那里" ;  -- from there
there7to_Adv = mkAdv "到那里" ;  
therefore_PConj = ssword "因此" ;  
through_Prep = mkPrep "通过" ;  
which_IQuant = ssword [] ;  -- [mark] in sent, it depends on the context
without_Prep = mkPrep "没有" []; 
youPol_Pron = ssword "您" ;  -- polite you 

}