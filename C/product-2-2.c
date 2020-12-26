#include <stdio.h>
#include <time.h>

main (){
	srand(time(NULL)); // inicialitiazion
	int a,b,c,cont;
	float score,final_score;
	
	clock_t start, end; //iniciar reloj
    double cpu_time_used;
	
	score = 0;
	start = clock();
	for (cont=1;cont<=50; cont++){
	
	a= rand()% 15;
	b = rand() % 15;
	a=a+5; b=b+2;
		
	printf("%i x %i = ",a,b);
	scanf("%i",&c);
		if(a*b==c){
			printf("Correct!\n\n");
			score = score + 1;
		}else
			printf("Wrong! %i \n\n",a*b);
	}
	
	final_score = (score/50)*10;
	end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC; // time in seconds
	printf("\n\nFinal score (max 10): %0.2f\nTime: %0.1f\n\n\n",final_score,cpu_time_used);
	
	return 0;
}
