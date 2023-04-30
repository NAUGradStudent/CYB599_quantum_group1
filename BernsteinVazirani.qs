namespace BernsteinVazirani {
    open Microsoft.Quantum.Arithmetic;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Diagnostics;

    operation Oracle(s : Int[], qubits : Qubit[]) : Unit is Adj {
        for (idx, bit) in Enumerated(s) {
            if (bit == 1) {
                CNOT(qubits[idx], qubits[Length(qubits) - 1]);
            }
        }
    }

    operation BernsteinVaziraniAlgorithm(s : Int[]) : Int {
        use qubits = Qubit[Length(s) + 1];
        within {
            for qubit in qubits {
                H(qubit);
            }
            X(qubits[Length(qubits) - 1]);
        } apply {
            Oracle(s, qubits);
        }

        let result = MeasureInteger(LittleEndian(qubits[0 .. Length(qubits) - 2]));
        ResetAll(qubits);
        return result;
    }
}