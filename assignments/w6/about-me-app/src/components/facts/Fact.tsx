import React from "react";

interface IFactProps{
    id: number,
    fact: string,
}


class Fact extends React.Component<IFactProps> {

    render() {
        return (
            <tr>
            <th>{this.props.id}</th>
            <td>{this.props.fact}</td>
            </tr>
          
        )
    }

}

export default Fact;