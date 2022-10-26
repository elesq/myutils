#!/bin/bash

cat << endOfBanner

  +-+-+-+-+-+-+-+
  |V|a|n|i|l|l|a|
  +-+-+-+-+-+-+-+
  |w|e|b| |a|p|p|
  +-+-+-+-+-+-+-+
  |p|r|o|j|e|c|t|
  +-+-+-+-+-+-+-+

endOfBanner

e=$(printf "\e")
red=`echo -e "$e[1;31m"`
green=`echo -e "$e[1;32m"`
grey=`echo -e "$e[1;90m"`

mkdir $1 && cd $1

echo -e "${green}\xE2\x9C\x94 ${grey}created project directory"

cat <<EOF >>index.html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="./styles.css">
  <title>project | Home</title>
</head>

<body>


  <script src="./script.js"></script>
</body>

</html>
EOF

cat <<EOF >>styles.css
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');

* {
  box-sizing: border-box;
}

body {
  font-family: 'Roboto', sans-serif;
  height: 100vh;
  margin: 0;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  overflow: hidden;
}
EOF

touch script.js

echo -e "${green}\xE2\x9C\x94 ${grey}created project files"
