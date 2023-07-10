
	.data
arr: .word 800,700,5000,90,50,2
arr_len: .word 6

.text
main:
    la $a0, arr
    lw $a1, arr_len
    jal Top_rank
    jal Sel_Sort 
    jal Sem_abroad 
    j Exitmain 

Sel_Sort:   
	    add $sp, $sp, -44
            sw $ra, 0($sp)
            sw $t0, 4($sp)
            sw $t1, 8($sp)
            sw $t2, 12($sp)
            sw $t3, 16($sp)
            sw $t4, 20($sp)
            sw $t5, 24($sp)
            sw $t6, 28($sp)
            sw $t7, 32($sp)
            sw $t8, 36($sp)
            sw $t9, 40($sp)
            
            add $t0, $zero, $a0       
            subi $t1, $a1, 1   

            addi $t2, $zero, 0         
            addi $t4, $t1, 1         

OuterLoop:  addi $t3, $t2, 1            

InnerLoop:  sll $t8, $t3, 2             
            add $t8, $t8, $a0           
            lw $t6, 0($t8)              

            sll $t9, $t2, 2             
            add $t9, $t9, $a0           
            lw $t7, 0($t9)              

            slt $t5, $t6, $t7          
            beq $t5, $zero, NoSwap      
          	
            sw $t6, 0($t9)              
            sw $t7, 0($t8)
            
NoSwap:     addi $t3, $t3, 1           
            blt $t3, $t4, InnerLoop    

            addi $t2, $t2, 1           
            blt $t2, $t1, OuterLoop    
	    lw $t9, 40($sp)
            lw $t8, 36($sp)
            lw $t7, 32($sp)
            lw $t6, 28($sp)
            lw $t5, 24($sp)
            lw $t4, 20($sp)
            lw $t3, 16($sp)
            lw $t2, 12($sp)
            lw $t1, 8($sp)
            lw $t0, 4($sp)
            lw $ra, 0($sp)
            addi $sp, $sp, 44
            jr $ra  
            
           
Top_rank:   
	addi $sp, $sp, -12
        sw $ra, 0($sp)
        sw $t0, 4($sp)
        sw $t1, 8($sp)

        jal Sel_Sort

	addi $t1, $a1, -1
        sll $t0, $t1, 2
        add $t0, $t0, $a0
        lw $v0, 0($t0)

        lw $t1, 8($sp)
        lw $t0, 4($sp)
        lw $ra, 0($sp)
        addi $sp, $sp, 12

        jr $ra

Sem_abroad:
	addi $sp, $sp, -20
	sw $ra, 0($sp)
	sw $t0, 4($sp)
	sw $t1, 8($sp)
	sw $t2, 12($sp)
	sw $t3, 16($sp)

    	add $t0, $zero, $a0   
   	addi $t1, $a1, 0   
	sll $t1, $t1, 2    
	add $t1, $t1, $a0  
    
Loop:
	beq $t0, $t1, end
	lw $t2, 0($t0)      
    	
	slti $t3, $t2, 70    
	beq $t3, $zero, end  
   	
	addi $t0, $t0, 4    
	j Loop
	
end:
	add $v0, $t0, $zero   
	sub $v1, $t1, $t0
	srl $v1, $v1, 2
	lw $t3, 16($sp)
	lw $t2, 12($sp)
	lw $t1, 8($sp)
	lw $t0, 4($sp)
	lw $ra, 0($sp)
	addi $sp, $sp, 20
	jr $ra 
	  
Exitmain: