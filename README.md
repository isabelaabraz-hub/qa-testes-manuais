# qa-testes-manuais
Este projeto simula o ciclo completo de teste manual de um e-commerce, focado nas funcionalidades de gerenciamento de carrinho e finalização de compra (checkout). O objetivo é demonstrar habilidades em 
planejamento, escrita de casos de teste, reporte de bugs e análise de qualidade final.

🗺️ 1. Planejamento (Mapa Mental)
A estratégia inicial foi baseada no mapeamento das funcionalidades principais para garantir a cobertura total dos requisitos de negócio.
Funcionalidades Mapeadas:
* Carrinho: Adição, remoção, alteração de quantidade e validação de estoque. 
* Checkout: Dados de entrega, seleção de frete, métodos de pagamento e aplicação de cupons.
📝 2. Plano de Teste e Casos de Teste (TC)
Abaixo, a tabela detalhada com os cenários testados, incluindo pré-condições, dados de teste e resultados esperados.
[Baixar Planilha de Casos de Teste]( https://github.com/isabelaabraz-hub/qa-testes-manuais/blob/b82b39245b7b249666ce6b04aa7a0d98eecaa603/Planilha%20TC.pdf)



🐞 3. Gestão de Defeitos (Bug Report)
Durante a execução, foi identificado um bug crítico no módulo de carrinho, documentado via Jira sob a issue KAN-17.
[Visualizar o Mapa Mental] ( https://github.com/isabelaabraz-hub/qa-testes-manuais/blob/84cdc7b3cc6d0774910cbff26c658cadea7e6272/QA%20TESTE%20-%20BUG%20.png )
ou 
[Acessar o link do Mapa Mental ] 
( https://www.mindmeister.com/app/map/3927305585)

Título: [Carrinho de Compras] Item não é excluído do Carrinho.

Severidade: Alta.

Prioridade: Alta.

Resultado Atual: O item permanece na interface e no banco de dados após comando de remoção.

Evidência Técnica (SQL): Para confirmar que o erro ocorria no backend, foi realizada a seguinte query no banco de dados.

SELECT * FROM carrinho_itens WHERE usuario_id = 1 AND produto_nome = 'Meia Esportiva';
-- O registro persistiu no banco mesmo após a tentativa de exclusão.--


📊 4. Relatório de Sumário de Testes (TSR)
[Acessar o relatório] (https://isabelaabraz.atlassian.net/wiki/x/AYAE)

Resumo da Execução
Total de Testes: 6

Passaram: 5

Falharam: 1 (TC-002)

Taxa de Passagem: 83,3%

Conclusão e Decisão Final
🔴 NO-GO (NÃO LANÇAR)


O projeto não está apto para publicação devido ao bug crítico KAN-17. A falha na remoção de itens impacta diretamente a experiência do usuário e a integridade financeira do pedido. 
Recomenda-se correção imediata e reteste total do módulo de carrinho de compras.

🛠️ Tecnologias e Ferramentas Utilizadas
Jira: Gestão de bugs e fluxo de trabalho.

Confluence : Geração de Relatório.

MindMeister: Mapeamento visual de funcionalidades.

MySQL: Validação técnica de dados e evidências.

Markdown: Documentação do projeto.

## 📂 Documentação e Links Úteis
* 🗺️ [Mapa Mental Completo (MindMeister)][(https://github.com/isabelaabraz-hub/qa-testes-manuais/blob/84cdc7b3cc6d0774910cbff26c658cadea7e6272/QA%20TESTE%20-%20BUG%20.png)]
* 📑 [Plano de Teste Detalhado (PDF)](./Planilha-sem-titulo-Pagina1.pdf)
* 📊 [Relatório Sumário de Testes (TSR)](https://isabelaabraz.atlassian.net/wiki/x/AYAE))
* 🔗 [Meu LinkedIn](https://www.linkedin.com/in/isabela-braz)
