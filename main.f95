  !Faça um programa que leia quinze valores inteiros, calcule e
       !escreva:
       !1) A soma dos números pares
       !2) O menor e o maior entre o valores lidos

        program numeros
        Real, dimension(:), allocatable :: x
        integer i ,n
        real y ,p ,soma,menor,maior
        
        Print*,'=============================================='
        Print*,'Entre com a quantidade de números que você tem:'
        read*,n
        Print*,'=============================================='
        allocate(x(n))
        print*, 'Entre com os valores:'
        soma=0
        do i=1,n
           read(*,*),x(i)
        p=2    !valor do modulo
            if  (mod(x(i),p)==0) then

                 print*,'O valor é par'
                 Print*,'=============================================='
                    soma=soma+x(i)
            else

            print*, 'O valor é impar'
            Print*,'=============================================='
            end if

        end do
           menor=9999999
            do i=n,1,-1

            if(x(i)<menor)then
                     menor=x(i)
            end if
            end do
              maior=0
            do i=1,n

            if(x(i)>maior)then
                     maior=x(i)
            end if
            end do
              Print*,'=============================================='
               print*,'A soma dos pares é:',soma
               Print*,'O menor valor é:',menor
               Print*,'O maior valor é:',maior
              Print*,'=============================================='
               deallocate(x)
        pause
        end program
