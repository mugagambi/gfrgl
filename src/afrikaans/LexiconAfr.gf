--# -path=.:../common:../abstract:../../prelude

-- work by Aarne Ranta

concrete LexiconAfr of Lexicon = CatAfr ** 
  open Prelude, ParadigmsAfr, IrregAfr in {

flags 
  optimize=all_subs ;

lin
  add_V3 = mkV3 (mkV "toe" (mkV "voeg")) (mkPrep "aan") ;
  already_Adv = mkAdv "al" ;
  answer_V2S = mkV2S (mkV "antwoord") noPrep ;
  ask_V2Q = mkV2Q (mkV "vra") noPrep ;
  bad_A = mkA "boos" ;
  beautiful_A = mkA "mooi" ;
  become_VA = mkVA (mkV "word") ;
  beer_N = mkN "bier" neuter ;
  beg_V2V = mkV2V (mkV "smeek") noPrep ; ---- om te
  big_A = mkA "groot" "groot" "groots" "groter" "grootste";
  bike_N = mkN "fiets" ;
  black_A = mkA "swart" ;
  blue_A = mkA "blou";
  
  book_N = mkN "boek" ;
  
  brother_N2 = mkN2 (mkN "broer" "broers" masculine) van_Prep ;
  brown_A = mkA "bruin" ;
  buy_V2 = mkV2 (mkV "koop") ;
  child_N = mkN "kind" "kinders" neuter ;
  come_V = zijnV (mkV "kom") ;
  die_V = zijnV (mkV "sterf") ;
  distance_N3 = mkN3 (mkN "afstand") van_Prep (mkPrep "na") ;
  drink_V2 = mkV2 (mkV "drink") ;
  easy_A2V = mkA2 (mkA "gemaklik") noPrep ;
  eat_V2 = mkV2 (mkV "eet") ;
  father_N2 = mkN2 (mkN "vader") van_Prep ;
  fear_VS = mkVS (mkV "vrees") ;
  fish_N = mkN "vis" ;
  go_V = mkV "gaan" ;
  hope_VS = mkVS (mkV "hoop") ;
  house_N = mkN "huis" neuter ;
  know_VQ = mkVQ (mkV "weet") ;
  know_VS = mkVS (mkV "weet") ;
  married_A2 = mkA2 (mkA "getroud") (mkPrep "met") ;
  mother_N2 = mkN2 (mkN "ma") ;
  now_Adv = mkAdv "nou" ;
  paint_V2A = mkV2A (mkV "skilder") noPrep ;
  paris_PN = mkPN "Parys" ;
  red_A = mkA "rooi" ;
  say_VS = mkVS (mkV "s�") ;
  see_V2 = mkV2 (mkV "sien") ;
  sell_V3 = mkV3 (mkV "verkoop") ;
  send_V3 = mkV3 (mkV "stuur") (mkPrep "na") ;
  sleep_V = mkV "slaap" ;
  small_A = mkA "klein" ;
  talk_V3 = mkV3 (mkV "praat") (mkPrep "met") (mkPrep "oor") ;
  warm_A = mkA "warm" ;
  wine_N = mkN "wyn" ;
  john_PN = mkPN "Jan" ;
  left_Ord = mkOrd (invarA "linker") ; ----
  right_Ord = mkOrd (invarA "regter") ; ----
  today_Adv = mkAdv "vandag" ;
  far_Adv = mkAdv "ver" ;
  give_V3 = mkV3 (mkV "gee") ;
  wonder_VQ = mkVQ (reflV (mkV "af" (mkV "vra"))) ;
airplane_N = mkN "vliegtuig" neuter ;
animal_N = mkN "dier" neuter ;
apartment_N = mkN "woonstel" "woonstelle" neuter ;
apple_N = mkN "appel" neuter ;
art_N = mkN "kuns" "kunste" neuter ;
ashes_N = mkN "as" neuter ;
baby_N = mkN "baba" neuter ;
back_N = mkN "agterkant" neuter ;
bank_N = mkN "bank" neuter ;
bark_N = mkN "blaf" neuter ;
belly_N = mkN "maag" neuter ;
bird_N = mkN "vo�l" "vo�ls" neuter ;
bite_V2 = mkV2 (mkV "byt") ;
black_A = mkA "swart" ;
blood_N = mkN "bloed" neuter ;
blow_V = mkV "blaas" ;
boat_N = mkN "boot" neuter ;
bone_N = mkN "been" neuter ;
boot_N = mkN "stewel" neuter ;
boss_N = mkN "baas" neuter ;
boy_N = mkN "seun" "seuns" neuter ;
bread_N = mkN "brood" neuter ;
break_V2 = mkV2 (mkV "breek") ;
breast_N = mkN "bors" "borste" neuter ;
breathe_V = mkV "asem" ;
broad_A = mkA "breed" ;
burn_V = mkV "brand" ;
butter_N = mkN "botter" neuter ;
camera_N = mkN "kamera" neuter ;
cap_N = mkN "keps" neuter ;
car_N = mkN "kar" neuter ;
carpet_N = mkN "tapyt" neuter ;
cat_N = mkN "kat" neuter ;
ceiling_N = mkN "plafon" neuter ;
chair_N = mkN "stoel" neuter ;
cheese_N = mkN "kaas" neuter ;
church_N = mkN "kerk" neuter ;
city_N = mkN "stad" "stede" neuter ;
clean_A = mkA "skoon" ;
clever_A = mkA "slim" ;
close_V2 = mkV2 (mkV "sluit") ;
cloud_N = mkN "wolk" neuter ;
coat_N = mkN "baadjie" neuter ;

	cold_A = mkA "koud" ;

computer_N = mkN "rekenaar" neuter ;
correct_A = mkA "korrek" ;
-- correct_A = mkA "reg" ;	--afr
count_V2 = mkV2 "tel" ;
country_N = mkN "land" neuter ;
cousin_N = mkN "neef" "neefs" neuter ;
cow_N = mkN "koei" neuter ;
cut_V2 = mkV2 (mkV "sny") ;
day_N = mkN "dag" neuter ;
dig_V = mkV "grawe" ;
dirty_A = mkA "vuil" ;
do_V2 = mkV2 (mkV "doen") ;
doctor_N = mkN "dokter" neuter ;
dog_N = mkN "hond" neuter ;
door_N = mkN "deur" neuter ;
dry_A = mkA "droog" ;
dull_A = mkA "vervelig" ;
dust_N = mkN "stof" neuter ;
ear_N = mkN "oor" neuter ;
earth_N = mkN "aarde" neuter ;
egg_N = mkN "eier" "eiers" neuter ;
empty_A = mkA "leeg" ;
enemy_N = mkN "vyand" neuter ;
eye_N = mkN "oog" neuter ;
factory_N = mkN "fabriek" neuter ;
fall_V = mkV "val" ;
fat_N = mkN "vet" neuter ;
fear_V2 = mkV2 "vrees" ;
feather_N = mkN "veer" neuter ;
fight_V2 = mkV2 (mkV "veg") ;
find_V2 = mkV2 (mkV "vind") ;
fingernail_N = mkN "vingernael" neuter ;
fire_N = mkN "brand" neuter ;
float_V = mkV "dryf" ;
floor_N = mkN "vloer" neuter ;
flow_V = mkV "stroom" ;
flower_N = mkN "blom" neuter ;
fly_V = mkV "vlieg" ;
fog_N = mkN "mis" neuter ;
foot_N = mkN "voet" neuter ;
forest_N = mkN "bos" neuter ;
forget_V2 = mkV2 (mkV "vergeet") ;
freeze_V = mkV "vries" ;
fridge_N = mkN "yskas" "yskaste" neuter ;
friend_N = mkN "vriend" neuter ;
fruit_N = mkN "vrug" "vrugte" neuter ;
full_A = mkA "vol" ;
fun_AV = mkA "prettig" ;	--afr
garden_N = mkN "tuin" neuter ;
girl_N = mkN "meisie" neuter ;
glove_N = mkN "handskoen" neuter ;
gold_N = mkN "goud" neuter ;
good_A = mkA "goed" "goeie" "goeds" "beter" "beste" ;
grammar_N = mkN "grammatika" neuter ;
grass_N = mkN "gras" neuter ;
green_A = mkA "groen" ;
guts_N = mkN "derms" "derms" neuter ;
hair_N = mkN "haar" neuter ;
hand_N = mkN "hand" neuter ;
harbour_N = mkN "hawe" "hawens" neuter ;
hat_N = mkN "hoed" "hoedens" neuter ;
hate_V2 = mkV2 "haat" ;
head_N = mkN "hoof" "hoofde" neuter ;
hear_V2 = mkV2 "hoor" ;
heart_N = mkN "hart" neuter ;
heavy_A = mkA "swaar" ;
hill_N = mkN "heuwel" neuter ;
hit_V2 = mkV2 "tref" ;	--afr
hold_V2 = mkV2 (mkV "hou") ;
horn_N = mkN "horing" neuter ;
horse_N = mkN "perd" neuter ;
hot_A = mkA "warm" ;
hunt_V2 = mkV2 "jag" ;
husband_N = mkN "man" "mans" neuter ;
ice_N = mkN "ys" neuter ;
important_A = mkA "belangrik" ;
industry_N = mkN "industrie" "industrie�" neuter ;
iron_N = mkN "yster" neuter ;
jump_V = mkV "spring" ;
kill_V2 = mkV2 "dood" ;
-- kill_V2 = mkV2 "doodmaak" ;	--afr
king_N = mkN "koning" neuter ;
knee_N = mkN "knie" neuter ;
know_V2 = mkV2 "ken" ;
lake_N = mkN "meer" neuter ;
lamp_N = mkN "lamp" neuter ;
language_N = mkN "taal" neuter ;
laugh_V = mkV "lag" ;
leaf_N = mkN "blaar" neuter ;
learn_V2 = mkV2 "leer" ;
leather_N = mkN "leer" neuter ;
leave_V2 = mkV2 (mkV "verlaat") ;
leg_N = mkN "been" neuter ;
lie_V = mkV "l�" ;
like_V2 = mkV2 (mkV "hou") van_Prep ;
listen_V2 = mkV2 "luister" ;
live_V = mkV "leef" ;
liver_N = mkN "lewer" neuter ;
long_A = mkA "lank" "lang" "langs" "langer" "langste" ;
lose_V2 = mkV2 (mkV "verloor") ;
louse_N = mkN "luis" neuter ;
love_N = mkN "liefde" neuter ;
love_V2 = mkV2 (mkV "lief" hebben_V) ;
man_N = mkN "man" "mans" neuter ;
meat_N = mkN "vleis" neuter ;
milk_N = mkN "melk" neuter ;
moon_N = mkN "maan" neuter ;
mountain_N = mkN "berg" neuter ;
mouth_N = mkN "mond" neuter ;
music_N = mkN "musiek" neuter ;
name_N = mkN "naam" neuter ;
narrow_A = mkA "smal" ;
near_A = mkA "naby" "naby" "nabys" "nader" "naaste";
neck_N = mkN "nek" neuter ;
new_A = mkA "nuut" "nuwe" ;
newspaper_N = mkN "koerant" neuter ;
night_N = mkN "nag" "nagte" neuter ;
nose_N = mkN "neus" neuter ;
number_N = mkN "nommer" neuter ;
oil_N = mkN "olie" neuter ;
old_A = mkA "oud" "ou" "ouds" "ouer" "oudste";
open_V2 = mkV2 "oop" ;
paper_N = mkN "papier" "papiere" neuter ;
peace_N = mkN "vrede" neuter ;
pen_N = mkN "pen" neuter ;
person_N = mkN "persoon" neuter ;
planet_N = mkN "planeet" neuter ;
plastic_N = mkN "plastiek" neuter ;
play_V = mkV "speel" ;
play_V2 = mkV2 "speel" ;
policeman_N = mkN "polisieman" neuter ;
priest_N = mkN "priester" neuter ;
probable_AS = mkA "waarskynlik" ;
pull_V2 = mkV2 "trek" ;
push_V2 = mkV2 "stoot" ;
put_V2 = mkV2 "sit" ;
queen_N = mkN "koningin" neuter ;
question_N = mkN "vraag" neuter ;
radio_N = mkN "radio" neuter ;
rain_N = mkN "re�n" "re�ns" neuter ;
rain_V0 = mkV "re�n" ;
read_V2 = mkV2 (mkV "lees") ;
ready_A = mkA "reg" ;
reason_N = mkN "rede" neuter ;
-- red_A = mkA "rooi" ;
religion_N = mkN "godsdiens" "godsdienste" neuter ;
restaurant_N = mkN "restaurant" neuter ;
river_N = mkN "rivier" "riviere" neuter ;
road_N = mkN "pad" "paaie" neuter ;
rock_N = mkN "rots" neuter ;
roof_N = mkN "dak" neuter ;
root_N = mkN "wortel" neuter ;
rope_N = mkN "tou" neuter ;
rotten_A = mkA "vrot" ;
round_A = mkA "rond" ;
rub_V2 = mkV2 (mkV "vryf") ;
rubber_N = mkN "rubber" neuter ;
rule_N = mkN "re�l" "re�l" neuter ;
run_V = zijnV (mkV "hardloop") ;
salt_N = mkN "sout" neuter ;
sand_N = mkN "sand" neuter ;
school_N = mkN "skool" neuter ;
science_N = mkN "wetenskap" neuter ;
scratch_V2 = mkV2 "krap" ;
sea_N = mkN "see" neuter ;
seed_N = mkN "saad" neuter ;
seek_V2 = mkV2 (mkV "soek") ;
sew_V = mkV "naai" ;
sharp_A = mkA "skerp" ;
sheep_N = mkN "skaap" neuter ;
ship_N = mkN "skip" "skepe" neuter ;
shirt_N = mkN "hemp" "hemde" neuter ;
shoe_N = mkN "skoen" neuter ;
shop_N = mkN "winkel" neuter ;
short_A = mkA "kort" ;
silver_N = mkN "silwer" neuter ;
sing_V = mkV "sing" ;
sister_N = mkN "suster" neuter ;
sit_V = mkV "sit" ;
skin_N = mkN "vel" neuter ;
sky_N = mkN "lug" "lugte" neuter ;
smell_V = mkV "ruik" ;
smoke_N = mkN "rook" neuter ;
smooth_A = mkA "glad" ;
snake_N = mkN "slang" neuter ;
snow_N = mkN "sneeu" neuter ;
sock_N = mkN "sokkie" neuter ;
song_N = mkN "liedjie" neuter ;
speak_V2 = mkV2 (mkV "spreek") ;
spit_V = mkV "spoeg" ;
split_V2 = mkV2 (mkV "splits") ;
squeeze_V2 = mkV2 (mkV "knyp") ;
stab_V2 = mkV2 (mkV "steek") ;
stand_V = mkV "staan" ;
star_N = mkN "ster" neuter ;
steel_N = mkN "staal" neuter ;
stick_N = mkN "stok" neuter ;
stone_N = mkN "steen" neuter ;
stop_V = mkV "stop" ;
stove_N = mkN "stoof" neuter ;
straight_A = mkA "reguit" ;
student_N = mkN "student" neuter ;
stupid_A = mkA "dom" ;
suck_V2 = mkV2 (mkV "suig") ;
sun_N = mkN "son" neuter ;
swell_V = mkV "swel" ;
swim_V = mkV "swem" ;
switch8off_V2 = mkV2 "skakel" ;
switch8on_V2 = mkV2 (mkV "aan" (mkV "skakel")) ;	--afr
table_N = mkN "tabel" "tabelle" neuter ;
tail_N = mkN "stert" neuter ;
teach_V2 = mkV2 "leer" ;
teacher_N = mkN "onderwyser" neuter ;
television_N = mkN "televisie" neuter ;
thick_A = mkA "dik" ;
--afr
--thief_N = mkN "dief" neuter ;
thin_A = mkA "dun" ;
think_V = mkV "dink" ;
throw_V2 = mkV2 "gooi" ;
tie_V2 = mkV2 "bind" ;
tongue_N = mkN "tong" neuter ;
tooth_N = mkN "tand" neuter ;
train_N = mkN "trein" neuter ;
travel_V = mkV "reis" ;
tree_N = mkN "boom" neuter ;
turn_V = mkV "draai" ;
ugly_A = mkA "lelik" ;
uncertain_A = mkA "onseker" ;
understand_V2 = mkV2 (mkV "verstaan") ;
university_N = mkN "universiteit" neuter ;
village_N = mkN "dorp" neuter ;
vomit_V = mkV "braak" ;
wait_V2 = mkV2 "wag" ;
walk_V = mkV "loop" ;
war_N = mkN "oorlog" neuter ;
wash_V2 = mkV2 (mkV "was") ;
watch_V2 = mkV2 (mkV "kyk") (mkPrep "na") ;
water_N = mkN "water" neuter ;
wet_A = mkA "nat" ;
white_A = mkA "wit" ;
wide_A = mkA "breed" ;
wife_N = mkN "vrou" neuter ;
win_V2 = mkV2 (mkV "wen") ;
wind_N = mkN "wind" neuter ;
window_N = mkN "venster" neuter ;
wing_N = mkN "vlerk" neuter ;
wipe_V2 = mkV2 "vee" ;
woman_N = mkN "vrou" neuter ;
wood_N = mkN "hout" neuter ;
worm_N = mkN "wurm" neuter ;
write_V2 = mkV2 (mkV "skryf") ;
year_N = mkN "jaar" neuter ;
yellow_A = mkA "geel" ;
young_A = mkA "jonk" "jong" "jongs" "jonger" "jongste";

}
