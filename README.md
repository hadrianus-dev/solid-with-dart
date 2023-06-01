# solid-with-dart
Este é uma nova trilha de compartilhamento de códito em Dart, a começar pelo tão falado SOLID.

### SIMGLE RESPONSABILITY PRINCIPLE
O SRP afirma que uma classe deve ter apenas uma única responsabilidade e motivo para mudar. Vamos criar classes separadas para lidar com diferentes responsabilidades relacionadas a um sistema de pagamento.

### OPEN-CLOSED PRINCIPLE
O OCP afirma que as entidades de software (classes, módulos, etc.) devem estar abertas para extensão, mas fechadas para modificação. Em outras palavras, devemos ser capazes de adicionar novos comportamentos ou funcionalidades sem modificar o código existente.

### LISKOV SUBSTITUITION PRINCIPLE
Para aplicar o Princípio de Substituição de Liskov (Liskov Substitution Principle - LSP), é necessário garantir que as subclasses sejam substituíveis por suas classes base (superclasses) sem afetar a integridade do sistema. Isso significa que as subclasses devem aderir ao contrato definido pela classe base, sem introduzir comportamentos inesperados ou violar as precondições e pós-condições definidas pela classe base.

### INTERFACE SEGREGATION PRINCIPLE
O ISP afirma que "os clientes não devem ser forçados a depender de interfaces que não usam". Em outras palavras, as interfaces devem ser projetadas de forma granular, fornecendo apenas os métodos e comportamentos necessários para cada cliente específico. Isso evita que os clientes dependam de funcionalidades desnecessárias ou indesejadas.

Ao aplicar o ISP, buscamos evitar interfaces genéricas e abrangentes, que podem levar a acoplamento excessivo e dependências indesejadas. Em vez disso, devemos criar interfaces mais específicas, orientadas para os requisitos dos clientes individuais.

### DEPENDENCY INVERSION
Essencialmente, o DIP incentiva a dependência em abstrações em vez de dependências em implementações concretas. Isso é alcançado por meio do uso de interfaces, classes abstratas ou outros mecanismos de abstração.

Ao seguir o DIP, as classes de alto nível não conhecem as classes de baixo nível diretamente. Em vez disso, elas dependem de abstrações que definem os contratos ou comportamentos esperados. As classes de baixo nível, por sua vez, implementam essas abstrações.
