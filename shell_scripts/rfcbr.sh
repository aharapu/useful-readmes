#rfcbr - this variation of the rfc command is for the brai project
#!/usr/bin/bash

GREEN='\e[92m'
NOCOLOR='\033[0m'

# We can store arguments from bash command line in special array
args=("$@")

# FILE_NAME=${args[0]}

for FILE_NAME in "${args[@]}"; do

echo "Creating $FILE_NAME directory..."
mkdir $FILE_NAME
cd $FILE_NAME

echo "Creating $FILE_NAME.js, styles.js, constants.js, utils.js and package.json files..."

echo "import useStyles from './$styles.js';
import * as utils from './utils.js';
import * as constants from './constants.js';

const $FILE_NAME = () => {
  return (
    <div>
        
    </div>
  );
};

export default $FILE_NAME;
" >>$FILE_NAME.js

echo "import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles(theme => ({
  nameOfClass: {
    // put your styles here
  },
}));

export default useStyles;
" >>styles.js

echo "{
  \"main\": \"$FILE_NAME.js\"
}
" >>package.json

echo "export const helperFunction = () => {
  // your functionality goes here
};
" >>utils.js

echo "export const CONSTANT_NAME = 'Some string or other type of constant.';
" >>constants.js

cd ..

done

echo -e "${GREEN}Done!"
echo -e "${NOCOLOR}Good bye."