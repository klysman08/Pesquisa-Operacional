#Problema do Caminho Critico
#Nome: Klysman Rezende 
#Matricula: 2017108779


/*  PROBLEMA DO CAMINHO CRITICO */

set J;
#CONJUNTO DE ATIVIDADES

set P{j in J}, in J, default {};
#SUB-CONJUNTO DE TAREFAS QUE PRECEDE IMEDIATAMENTE O TRABALHO j

param t{j in J}, >= 0;
#DURAÇÃO NECESSÁRIA PRA EXECUTAR O TRABALHO j

var x{j in J}, >= 0;
#HORA DE INICIO DO TRABALHO j

s.t. phi{j in J, k in P[j]}: x[j] >= x[k] + t[k];
#TRABALHO SÓ PODE COMEÇAR DEPOIS DE TODOS OS TRABALHOS IMEDIATAMENTE ANTERIORES TEREM SIDO COMPLETAMENTE EXECUTADO

var z;
#PROJETO MAKESPAN

s.t. fin{j in J}: z >= x[j] + t[j];
# QUE É O MAXIMO DOS TEMPOS DE CONCLUSÃO DE TODOS OS TRABALHOS

minimize obj: z;
#OBJETIVO É TORNAR O Z O MENOR POSSÍVEL

