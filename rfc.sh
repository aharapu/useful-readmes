#rfc - this command will create a React component folder and associated files
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

    echo "Creating $FILE_NAME.js, $FILE_NAME.test, $FILE_NAME.scss and package.json files..."

    echo "import React from 'react';
import './$FILE_NAME.scss';

const $FILE_NAME = () => {
    return (
        <div>
            
        </div>
    )
}

export default $FILE_NAME;" >>$FILE_NAME.js

    echo "import { shallow } from 'enzyme';
import $FILE_NAME from './$FILE_NAME';

describe('$FILE_NAME component', () => {
    const setup = () => shallow(<$FILE_NAME />);

    beforeAll(() => {

    });

    it('renders', () => {
    
    })

});" >>$FILE_NAME.test.js

    echo "{
    \"main\": \"$FILE_NAME.js\"
}" >>package.json

    touch $FILE_NAME.scss

    cd ..

done

echo -e "${GREEN}Done!"
echo -e "${NOCOLOR}Good bye."
