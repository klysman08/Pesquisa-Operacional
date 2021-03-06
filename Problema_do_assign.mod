#Problema do Assign
#Nome: Klysman Rezende 
#Matricula: 2017108779


#numero de operarios
param m;

#numero de tarefas (tasks)
param n, <=m;


#Custo da alacacao
param c{i in 1..m, j in 1..n}, >= 0;

#Variaveis para o tipo binaria

var x{i in 1..m, j in 1..n}, binary;  

#Funcao objetivo
minimize obj: sum{i in 1..m, j in 1..n} c[i,j] * x[i,j];

s.t. oper{i in 1..m}: sum{j in 1..n} x[i,j] <= 1;

s.t. tarefas{j in 1..n}: sum{i in 1..m} x[i,j] = 1;

#solve;

#printf "\n"

/*
printf "Oper  Taref       Custo\n";
printf{i in I} "%5d %5d %10g\n", i, sum{j in J} j * x[i,j],
   sum{j in J} c[i,j] * x[i,j];
printf "----------------------\n";
printf "     Total: %10g\n", sum{i in I, j in J} c[i,j] * x[i,j];
printf "\n";
*/
end;

