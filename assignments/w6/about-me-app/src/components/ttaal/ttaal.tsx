import Fact from "../facts/Fact";
import './ttaal.css';

interface IPropsTTAAL{

}

function TTAAL(props: IPropsTTAAL) {

    const facts = [
        {
            id: 1,
            fact: 'Fact 1'
        },
        {
            id: 2,
            fact: 'Fact 2'
        },
        {
            id: 3,
            fact: 'Fact 3'
        }

    ]

    return (
        <main>
            <h3>Two Truths and a Lie</h3>
            <table>
                {
                facts.map( fact => {
                    return <Fact id={fact.id} fact={fact.fact} />})
                }
            </table>
        </main>
    )
}

export default TTAAL;