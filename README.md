# Matlab Sintese de Sinais de Voz-pelo-Processo-AR-p-
Síntese de Sinais de Voz pelo Processo AR(p) 


Após a gravação dos nomes utilizando o gravador de voz do Windows foi realizado a extração silábica dos áudios através do software mp3cut, então é feita a medição da duração dos mesmos,assim como pode ser observado na Fig.1 e Fig.2.
![image](https://user-images.githubusercontent.com/67208118/184558550-ec7f7ec6-bc38-4f77-9db4-b64af75e892f.png)
Figura 1(a): Espectro do sinal do primeiro nome.  

![image](https://user-images.githubusercontent.com/67208118/184558552-6f171efa-7c4d-4ecf-aac8-b004f15021c3.png)
Figura 1(b): Espectro do sinal do Segundo nome.  

![image](https://user-images.githubusercontent.com/67208118/184558568-49f8ae44-5dad-4d93-aeec-6ca0ab44bafe.png)
Figura 2(a): Corte no Áudio do primeiro nome.

![image](https://user-images.githubusercontent.com/67208118/184558582-eb168b27-d474-452a-b264-151d818809e7.png)
Figura 2(b): Corte no Áudio do segundo nome. 

Duração FINAL dos cortes silábicos:
Como  resultado do processo de corte silábico no primeiro e segundo nome temos a Tabela 1 que pode ser observada logo abaixo.

Tabela 1: Duração dos áudios silábicos obtidos através de edição (corte) das gravações.
![image](https://user-images.githubusercontent.com/67208118/184558675-9556be4a-e6b6-41de-a5b9-091c556b88e9.png)

Para o corte dos áudios foram utilizado o software mp3cut
Foi utilizado o software Octave para todo o procedimento de análise de dados e o software Matlab para plotagem da estimativa de autocorrelação. 

Os espectros de sinal dos intervalos silábicos no primeiro e segundo nome são visíveis na Fig.3
![image](https://user-images.githubusercontent.com/67208118/184852991-a635ecd8-7a25-47f0-806e-54c1a5d1ea02.png)
FIGURA 3: EXTRAÇÃO DOS INTERVALOS SILÁBICOS DO PRIMEIRO E SEGUNDO NOME.

Histogramas de sinal dos intervalos silábicos no 1° nome 1° sílaba são visíveis na Fig.4.
![image](https://user-images.githubusercontent.com/67208118/184853252-05e59a37-4bdd-4db0-8941-7fc75e9b782e.png)
figura 4: histogramas formados a partir  de trechos de 20ms do primeiro nome primeira sílaba.


Histogramas de sinal dos intervalos silábicos no 1° nome 2° sílaba são visíveis na Fig.5.
![image](https://user-images.githubusercontent.com/67208118/184853600-ea03c4b5-cd1f-436e-b781-47795189ce98.png)
figura 5: histogramas formados a partir  de trechos de 20ms do primeiro nome segunda sílaba.

Histogramas de sinal dos intervalos silábicos no 2° nome 1° sílaba são visíveis na Fig.6.
![image](https://user-images.githubusercontent.com/67208118/184853982-8b84b80b-3a63-4bb1-b857-fd8e66f31bd8.png)
figura 6: histogramas formados a partir  de trechos de 20ms do segundo nome segunda sílaba.

Histogramas de sinal dos intervalos silábicos no 2° nome 2° sílaba são visíveis na Fig.7.
![image](https://user-images.githubusercontent.com/67208118/184854067-e9944d01-fa94-4c9b-84b6-5431291eae51.png)
figura 7: histogramas formados a partir  de trechos de 20ms do segundo nome segunda sílaba.

Os gráficos da densidade espectral de potência para cada sílaba são visíveis na Fig.8(gráficos não logarítmos) para p=12.
![image](https://user-images.githubusercontent.com/67208118/184854217-7d04baec-67b0-4534-8141-44906bf254e8.png)
figura 8: gráfico das densidades espectrais de potência correspondentes as sílabas(sem aplicação do log).

Os gráficos da densidade espectral de potência para cada sílaba são visíveis na Fig.9(gráficos com 10*log10) para p=12.
![image](https://user-images.githubusercontent.com/67208118/184854363-443e9e4f-0b84-4422-a522-1b3fa1f57064.png)
figura 9: gráfico das densidades espectrais de potência correspondentes as sílabas(com aplicação do log).

Coeficientes de correlação a[k] e a variância σv2 para cada sílaba (onde p=12) são visíveis na TABELA 2.

Tabela 2: Coeficientes a[k] calculados para p=12. (matriz de autocorrelação de dimensão 12).
![image](https://user-images.githubusercontent.com/67208118/184854705-49214391-1b3b-4a4f-902f-9dd97e3b97a4.png)

Tabela 3: Variâncias  σv2 calculados para p=12. (matriz de autocorrelação de dimensão 12).
![image](https://user-images.githubusercontent.com/67208118/184855024-7867a67b-8fa0-49cd-bb9d-2e400abee218.png)


