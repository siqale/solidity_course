## O que é Reentrância?

Ataques de reentrância ocorrem quando uma função de um contrato chama outra função (possivelmente em outro contrato) e, durante a execução dessa função chamada, o contrato original é chamado novamente (reentrando). Se o contrato não estiver preparado para isso, pode levar a comportamentos inesperados e exploração de vulnerabilidades, como drenagem de fundos.

Como o Modifier noReentrancy Previne Reentrância:



```Solidity

modifier noReentrancy() {
    require(!locked, "No reentrancy");
    locked = true;
    _;
    locked = false;
}

```

require(!locked, "No reentrancy");: Esta linha verifica se a variável booleana locked é false. Se locked for true, significa que a função já está em execução (devido a uma chamada anterior), e a execução é interrompida com a mensagem "No reentrancy".

locked = true;: Se a verificação passar (ou seja, locked é false), a variável locked é definida como true. Isso "tranca" a função, indicando que ela está agora em execução.

_;: Este caractere especial é um placeholder que será substituído pelo código da função que está usando o modifier. É aqui que a lógica da sua função decrement será executada.

locked = false;: Após a execução do código da função (ou seja, após o _), a variável locked é definida como false. Isso "destranca" a função, permitindo que ela seja chamada novamente (se necessário) após a conclusão da chamada atual.

Aplicando o Modifier noReentrancy na Função decrement:



```Solidity

function decrement(uint256 i) public noReentrancy {
    value -= i;
    if (i > 1) {
        decrement(i - 1);
    }
    // ...
}

```

Ao adicionar noReentrancy à declaração da função decrement, você garante que essa função só possa ser executada uma vez por vez. Se houver uma tentativa de reentrar na função enquanto ela já estiver em execução, a transação será revertida devido à verificação require(!locked, "No reentrancy");.

## Exemplo de Ataque de Reentrância (Sem Proteção):

Imagine que a função decrement não tivesse o modifier noReentrancy. Um atacante poderia criar um contrato malicioso que chama a função decrement repetidamente, aproveitando-se do fato de que a variável value é atualizada antes da função terminar sua execução. Isso poderia levar à subtração incorreta do valor e, potencialmente, à perda de fundos.

## Com o Modifier noReentrancy:

O modifier noReentrancy impede esse tipo de ataque. Se o contrato malicioso tentar chamar decrement novamente enquanto ela estiver em execução, a transação será revertida, protegendo o contrato de explorações.

Em resumo: O modifier noReentrancy é uma ferramenta crucial para escrever contratos inteligentes seguros. Ele garante que uma função só possa ser executada uma vez por vez, prevenindo ataques de reentrância e protegendo seus fundos.  É uma boa prática usar esse modifier em qualquer função que modifique o estado do contrato e que possa ser chamada externamente.