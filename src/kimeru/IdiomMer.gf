concrete IdiomMer of Idiom = 
  CatMer ** IdiomBantu -[ProgrVP] with  (ResBantu = ResMer) ** open MorphoMer in 
  {
  flags coding=utf8;
  lin
  ProgrVP vp = {s=\\ag,pol,tes,ant=>case < tes ,pol> of {
     <Pres, _> => vp.s!ag!pol!Pres!ant;
      <_, _> => auxBe.s!ag!pol!tes!ant ++vp.s!ag!pol!Pres!ant};
                    compl=\\a => vp.compl!a;
                   progV= []; imp =\\po,n =>vp.imp!po!n;inf=vp.inf};
oper ibind : Str = Predef.BIND ;
};  
