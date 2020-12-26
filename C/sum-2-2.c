#include <stdio.h>
#include <time.h>

main (){
	srand(time(NULL)); // inicialitiazion
	int a,b,c,score,cont,final_score;
	
	clock_t start, end; //iniciar reloj
    double cpu_time_used;
	
	score = 0;
	start = clock();
	for (cont=1;cont<=5; cont++){
	
	a= rand()% 99;
	b = rand() % 99;
		
	printf("%i + %i = ",a,b);
	scanf("%i",&c);
		if(a+b==c){
			printf("Correct!\n");
			score++;
		}else
			printf("Wrong! %i \n",a+b);
	}
	end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC; // time in seconds
	printf("\n\nFinal score: %i ! %i\n Time: %0.1f\n\n\n",score,cont,cpu_time_used);
	
	return 0;
}

