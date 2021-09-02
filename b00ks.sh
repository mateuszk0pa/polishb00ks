sudo apt-get install jq

echo -e "Po czym chcesz znaleźć \e[4mksiążkę\e[0m? (\e[41mWpisz cyfrę!\e[49m)"
echo " "
echo -e "\e[1m \e[91m[1]\e[39m Tytule                 \e[91m[2]\e[39m Autorze"
echo -e "\e[1m \e[91m[3]\e[39m Epoce                  \e[91m[4]\e[39m Gatunku Literackim"
echo -e "\e[1m \e[91m[5]\e[39m Rodzaju Literackim     \e[91m[6]\e[39m Motywie Literackim"
echo " "
read option

if [ $option = 1 ]
  then
    echo "Wpisz tytuł użyj samych małych liter i zamiast spacji użyj -:"
    read title
    curl "https://wolnelektury.pl/books/$title" | jq
fi

if [ $option = 2 ]
  then
    echo "Wpisz autora użyj samych małych liter i zamiast spacji użyj -:"
    read author
    curl "https://wolnelektury.pl/authors/$author" | jq
fi

if [ $option = 3 ]
  then
    echo "Wpisz nazwę epoki użyj samych małych liter i zamiast spacji użyj -:"
    read epoch
    curl "https://wolnelektury.pl/epochs/$epoch" | jq
fi

if [ $option = 4 ]
  then
    echo "Wpisz nazwę gatunku literackiego użyj samych małych liter i zamiast spacji użyj -:"
    read genre
    curl "https://wolnelektury.pl/genres/$genre" | jq
fi

if [ $option = 5 ]
  then
    echo "Wpisz nazwę rodzaju literackiego użyj samych małych liter i zamiast spacji użyj -:"
    read kind
    curl "https://wolnelektury.pl/kinds/$kind" | jq
fi

if [ $option = 6 ]
  then
    echo "Wpisz nazwę motywu literackiego użyj samych małych liter i zamiast spacji użyj -:"
    read theme
    curl "https://wolnelektury.pl/themes/$theme" | jq
fi
