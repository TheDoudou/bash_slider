#!/bin/bash

# Code By TheDoudou
# For BeCode
#
# Need Bash 4.x >=
#
# slide size 81x18 (79x16) (4 themes)
# font 5x6 (all char upercase and "?" "<" ">" "'")
# 13x2 char

# Check with https://www.shellcheck.net


#<THEME_ID>[LINE1][LINE2]
drawSlide() {

    declare -A FONT

    FONT=(
[" "]="     
     
     
     
     
     " # space
["a"]=" ▄▄▄ 
█   █
█   █
█■■■█
█   █
▀   ▀"
["b"]="▄▄▄▄ 
█   █
█■■■ 
█   █
█   █
▀▀▀▀ "
["c"]=" ▄▄▄ 
█   █
█    
█    
█   █
 ▀▀▀ "
["d"]="▄▄▄▄ 
█   █
█   █
█   █
█   █
▀▀▀▀ "
["e"]="▄▄▄▄▄
█    
█■■■ 
█    
█    
▀▀▀▀▀"
["f"]="▄▄▄▄▄
█    
█■■■ 
█    
█    
▀    "
["g"]=" ▄▄▄ 
█    
█    
█  ▀█
█   █
 ▀▀▀ "
["h"]="▄   ▄
█   █
█■■■█
█   █
█   █
▀   ▀"
["i"]="▄▄▄▄▄
  █  
  █  
  █  
  █  
▀▀▀▀▀"
["j"]=" ▄▄▄▄
   █ 
   █ 
   █ 
█  █ 
 ▀▀  "
["k"]="█   ■
█  ■
█ ■  
█■   
█ ■  
█  ■ "
["l"]="▄    
█    
█    
█    
█    
▀▀▀▀▀"
["m"]="▄   ▄
█▄ ▄█
█ ▀ █
█   █
█   █
▀   ▀"
["n"]="▄   ▄
█▄  █
█ █ █
█ █ █
█  ▀█
▀   ▀"
["o"]=" ▄▄▄ 
█   █
█   █
█   █
█   █
 ▀▀▀ "
["p"]="▄▄▄▄ 
█   █
█   █
█▀▀▀ 
█    
▀    "
["q"]=" ▄▄▄ 
█   █
█   █
█   █
█ ▀▄█
 ▀▀▀ "
["r"]="▄▄▄▄ 
█   █
█   █
█■■■ 
█  █ 
▀   ▀"
["s"]=" ▄▄▄ 
█   ▀
 ▀▄  
   ▀▄
▄   █
 ▀▀▀ "
["t"]="▄▄▄▄▄
  █  
  █  
  █  
  █  
  ▀  "
["u"]="▄   ▄
█   █
█   █
█   █
█   █
 ▀▀▀ "
["v"]="▄   ▄
█   █
█   █
█   █
█   █
 ▀▄▀ "
["w"]="▄   ▄
█   █
█   █
█   █
█ ▄ █
 ▀ ▀ "
 ["w"]="█   █
█   █
█   █
█   █
█ ▄ █
 ▀ ▀ "
 ["w"]="█   █
█   █
█   █
█   █
█ ▄ █
 ▀ ▀ "
 ["w"]="█   █
█   █
█   █
█   █
█ ▄ █
 ▀ ▀ "
 ["0"]="   █ 
   ▀ 
     
     
     
     "
 ["1"]=" ▄▄▄ 
█   █
  ▄▀ 
  █  
     
  ▀  "
 ["2"]="     
     
     
 ▀▀▀▀
     
     ")


    if [ "$1" = 0 ]
    then
        FONT["line"]=" │                                                                               │"
        FONT["in"]=" ┌───────────────────────────────────────────────────────────────────────────────┐"
        FONT["out"]=" └───────────────────────────────────────────────────────────────────────────────┘"
        FONT["io"]=" │
 │
 │
 │
 │
 │"

    elif [ "$1" = 1 ]
    then
        FONT["line"]=" ║                                                                               ║"
        FONT["in"]=" ╔═══════════════════════════════════════════════════════════════════════════════╗"
        FONT["out"]=" ╚═══════════════════════════════════════════════════════════════════════════════╝"
        FONT["io"]=" ║
 ║
 ║
 ║
 ║
 ║"
    elif [ "$1" = 2 ]
    then
        FONT["line"]=" #                                                                               #"
        FONT["in"]=" #################################################################################"
        FONT["out"]=" #################################################################################"
        FONT["io"]=" #
 #
 #
 #
 #
 #"
    elif [ "$1" = 3 ]
    then
        FONT["line"]=" █                                                                               █"
        FONT["in"]=" ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄"
        FONT["out"]=" █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█"
        FONT["io"]=" █
 █
 █
 █
 █
 █"
    fi
    

    LOOP_DRAW=0
    LINE1=""
    LINE2=""

    while [ $LOOP_DRAW -le 12 ]
    do
        TMP_CHAR1=${2:$LOOP_DRAW:1}
        TMP_CHAR2=${3:$LOOP_DRAW:1}

        if [ -z "$TMP_CHAR1" ]
        then
            LINE1=$(paste -d " " <(echo "${LINE1}") <(echo "${FONT[" "]}"))
        else
            LINE1=$(paste -d " " <(echo "${LINE1}") <(echo "${FONT[$TMP_CHAR1]}"))
        fi

        if [ -z "$TMP_CHAR2" ]
        then
            LINE2=$(paste -d " " <(echo "${LINE2}") <(echo "${FONT[" "]}"))
        else
            LINE2=$(paste -d " " <(echo "${LINE2}") <(echo "${FONT[$TMP_CHAR2]}"))
        fi
        
        if [ $LOOP_DRAW = 12 ]
        then
            LINE1=$(paste -d "" <(echo "${FONT[io]}") <(echo "${LINE1}") <(echo "${FONT[io]}"))
            LINE2=$(paste -d "" <(echo "${FONT[io]}") <(echo "${LINE2}") <(echo "${FONT[io]}"))
        fi


        ((LOOP_DRAW++))
    done

    
    if [ -n "$1" ]
    then
        echo "${FONT[in]}"
        echo "${FONT[line]}"
        echo "${LINE1}"
        echo "${FONT[line]}"
        echo "${FONT[line]}"
        echo "${LINE2}"
        echo "${FONT[line]}"
        echo "${FONT[out]}"
    fi

    
}

if [ -z $1]
then
	drawSlide $1 "$2" "$3"
	exit 1
fi

clear

printf "Sildes loading ... \n"
#spinner &
echo -ne '|                    | (0%)\r'
SLIDES[0]=$(drawSlide 1 "presentation" " du terminal")
echo -ne '|#                   | (5%)\r'
SLIDES[1]=$(drawSlide 2 " c0est quoi" " un terminal 1")
echo -ne '|##                  | (10%)\r'
SLIDES[2]=$(drawSlide 3 "  terminal" " shell bash")
echo -ne '|###                 | (15%)\r'
#SLIDES[3]=$(drawSlide 1)
echo -ne '|####                | (20%)\r'
SLIDES[4]=$(drawSlide 0 "   return")
echo -ne '|#####               | (25%)\r'
SLIDES[5]=$(drawSlide 0 "   return" "     up")
echo -ne '|######              | (30%)\r'
SLIDES[6]=$(drawSlide 0 "   return" "   up  tab")
echo -ne '|#######             | (35%)\r'
SLIDES[7]=$(drawSlide 1 "     ls")
echo -ne '|########            | (40%)\r'
SLIDES[8]=$(drawSlide 1 "   man ls")
echo -ne '|#########           | (45%)\r'
SLIDES[9]=$(drawSlide 1 "   man ls" "    ls 2a")
echo -ne '|##########          | (50%)\r'
SLIDES[10]=$(drawSlide 1 "des questions" "      1")
echo -ne '|###########         | (55%)\r'
#SLIDES[10]=$(drawSlide 1 "")
echo -ne '|############        | (60%)\r'
#SLIDES[10]=$(drawSlide 1 "")
echo -ne '|#############       | (65%)\r'
#SLIDES[10]=$(drawSlide 1 "")
echo -ne '|##############      | (70%)\r'
#SLIDES[10]=$(drawSlide 1 "")
echo -ne '|###############     | (75%)\r'
#SLIDES[10]=$(drawSlide 1 "")
echo -ne '|################    | (80%)\r'
#SLIDES[10]=$(drawSlide 1 "")
echo -ne '|#################   | (85%)\r'
#SLIDES[10]=$(drawSlide 1 "")
echo -ne '|##################  | (90%)\r'
#SLIDES[10]=$(drawSlide 1 "")
echo -ne '|################### | (95%)\r'
#SLIDES[10]=$(drawSlide 1 "")
echo -ne '|####################| (100%)\r'
#kill "$!"
#wait "$!" 2>/dev/null
echo ""
read -r -p "Slides loading [OK]"

SLIDES[3]="╔═══════════════════════════════════════════════════════════════════════════════╗
║                                   ╔══════╗                                    ║
║                                   ║  SH  ║                                    ║
║                                   ╚══╦═══╝                                    ║
║                                      ║                  ╔══════╗              ║
║         ╔════════════════════════════╬══════════════════╣ CZH  ║              ║
║         ║                            ║                  ╚══╦═══╝              ║
║         ║                            ║                     ║                  ║
║      ╔══╩═══╗                     ╔══╩═══╗              ╔══╩═══╗              ║
║      ║ BASH ║                     ║ KSH  ║              ║ TCSH ║              ║
║      ╚══╦═══╝                     ╚══╦═══╝              ╚══╦═══╝              ║
║         ║                            ║                     ║                  ║
║         ╚════════════════════════════╬═════════════════════╝                  ║
║                                      ║                                        ║
║                                   ╔══╩═══╗                                    ║
║                                   ║ ZSH  ║                                    ║
║                                   ╚══════╝                                    ║
╚═══════════════════════════════════════════════════════════════════════════════╝"

clear

# Slide show
for SLIDE in "${SLIDES[@]}"
do
    clear
    echo "$SLIDE"
    read -r -p ""
done

sleep 5

clear
echo "I TAKE THE CONTROL"
sleep 2
echo "You want to watch Stars Wars ?"
sleep 3
echo "HAHAHAHA SURE :D"
sleep 2
clear
telnet towel.blinkenlights.nl

#LOOP_ANIM=0
#ANIM_VIEW[0]=$(drawSlide 1 "e" "            b")
#ANIM_VIEW[1]=$(drawSlide 1 "de" "           be")
#ANIM_VIEW[2]=$(drawSlide 1 "ode" "          bec")
#ANIM_VIEW[3]=$(drawSlide 1 "code" "         beco")
#ANIM_VIEW[4]=$(drawSlide 1 "ecode" "        becod")
#ANIM_VIEW[5]=$(drawSlide 1 "becode" "       becode")
#ANIM_VIEW[6]=$(drawSlide 1 " becode" "      becode ")
#ANIM_VIEW[7]=$(drawSlide 1 "  becode" "     becode  ")
#ANIM_VIEW[8]=$(drawSlide 1 "   becode" "    becode   ")
#ANIM_VIEW[9]=$(drawSlide 1 "    becode" "   becode    ")
#ANIM_VIEW[10]=$(drawSlide 1 "     becode" " becode      ")
#ANIM_VIEW[11]=$(drawSlide 1 "      becode" "becode       ")
#ANIM_VIEW[12]=$(drawSlide 1 "        becod" "ecode        ")
#ANIM_VIEW[13]=$(drawSlide 1 "         beco" "code         ")
#ANIM_VIEW[14]=$(drawSlide 1 "          bec" "ode          ")
#ANIM_VIEW[15]=$(drawSlide 1 "           be" "de           ")
#ANIM_VIEW[16]=$(drawSlide 1 "            b" "e            ")
#ANIM_VIEW[17]=$(drawSlide 1 "             " "             ")
#
#for ANN in "${ANIM_VIEW[@]}"
#do
#    echo "$ANN"
#    sleep 0.1
#    ((LOOP_ANIM++))
#done
#
#clear

"
┌┬┐
├┼┤
└┴┘
╔╦╗
╠╬╣
╚╩╝
"