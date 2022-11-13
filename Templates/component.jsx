import React from 'react';
import styled from 'styled-components';

const SDiv = styled.div`
	background-color: #dddddd;
`;

function Div(props) {

return (
	<SDiv>
	{props.children}
	</SDiv>
);

}

export default Div;
