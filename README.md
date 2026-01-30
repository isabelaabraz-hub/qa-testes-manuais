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





🐞 3. Gestão de Defeitos (Bug Report)
Durante a execução, foi identificado um bug crítico no módulo de carrinho, documentado via Jira sob a issue KAN-17.

Título: [Carrinho de Compras] Item não é excluído do Carrinho.

Severidade: Alta.

Prioridade: Alta.

Resultado Atual: O item permanece na interface e no banco de dados após comando de remoção.

Evidência Técnica (SQL): Para confirmar que o erro ocorria no backend, foi realizada a seguinte query no banco de dados.



📊 4. Relatório de Sumário de Testes (TSR)
Resumo da Execução
Total de Testes: 6

Passaram: 5

Falharam: 1 (TC-002)

Taxa de Passagem: 83,3%

Conclusão e Decisão Final
🔴 NO-GO (NÃO LANÇAR)

O projeto não está apto para publicação devido ao bug crítico KAN-17. A falha na remoção de itens impacta diretamente a experiência do usuário e a integridade financeira do pedido. Recomenda-se correção imediata e reteste total do módulo de carrinho.

🛠️ Tecnologias e Ferramentas Utilizadas
Jira: Gestão de bugs e fluxo de trabalho.

Confluence : Geração de Relatório.

MindMeister: Mapeamento visual de funcionalidades.

MySQL: Validação técnica de dados e evidências.

Markdown: Documentação do projeto.
