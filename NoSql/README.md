# RELATÓRIO DE IMPLEMENTAÇÃO DE SERVIÇOS AWS EM FARMÁCIA

**Data:** 24 de Janeiro de 2026  
**Empresa:** Farmácia São Paulo  
**Responsável:** Rafaela Pinheiro  

## Introdução
Este relatório apresenta o processo de implementação de ferramentas na empresa Farmácia São Paulo, realizado por Rafaela Pinheiro. O objetivo do projeto foi elencar 3 serviços AWS, com a finalidade de realizar diminuição de custos imediatos.

## Descrição do Projeto
O projeto de implementação de ferramentas foi dividido em 3 etapas, cada uma com seus objetivos específicos. A seguir, serão descritas as etapas do projeto:

**Etapa 1:**  
- Amazon S3  
- Armazenamento escalável e seguro de dados  
- Ideal para uma farmácia armazenar receitas digitais, imagens de produtos e históricos de estoque de forma ilimitada, sem necessidade de servidores locais caros; o Intelligent-Tiering move dados menos acessados automaticamente para tiers mais baratos (cerca de US$ 0,023/GB/mês na região São Paulo), reduzindo custos em até 40-75% comparado a hardware on-premise, eliminando manutenção e energia.

**Etapa 2:**  
- Amazon RDS  
- Gerenciamento automatizado de bancos de dados relacionais  
- Perfeito para gerenciar dados de vendas, estoque de medicamentos e cadastros de clientes com backups automáticos, alta disponibilidade e escalabilidade sob demanda; para uma instância db.t3.micro MySQL na região sa-east-1, custa cerca de US$ 0,017/hora (pague por uso, sem compromisso inicial), evitando gastos com DBAs e downtime que custam milhares em vendas perdidas em uma farmácia movimentada.

**Etapa 3:**  
- Amazon EC2  
- Computação flexível com instâncias virtuais  
- Executa aplicativos de análise de vendas ou dashboards de estoque sem comprar servidores físicos; uma t3.micro sob demanda custa ~US$ 0,0042/hora na região Brasil, com opções de Savings Plans para até 72% de desconto em uso contínuo, escalando automaticamente para picos de demanda como Black Friday de remédios, pagando só pelo usado e liberando capital para expansão da farmácia.

## Conclusão
A implementação de ferramentas na empresa *Farmácia São Paulo* tem como esperado redução de custos operacionais em até 75%, maior confiabilidade sem interrupções e escalabilidade para crescimento, o que aumentará a eficiência e a produtividade da empresa. Recomenda-se a continuidade da utilização das ferramentas implementadas e a busca por novas tecnologias que possam melhorar ainda mais os processos da empresa.

## Anexos
- Manuais de configuração EC2, S3 e RDS  
- Planilha de estimativa de custos AWS Pricing Calculator  
- Diagramas de arquitetura para farmácia  

**Assinatura do Responsável pelo Projeto:**  

Rafaela Pinheiro
