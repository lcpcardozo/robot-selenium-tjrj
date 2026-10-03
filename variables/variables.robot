*** Variables ***

${BASE_URL}       https://eproc1g.tjrj.jus.br/eproc/
${PROCESSO_VALIDO}     30147645820258190001
${PROCESSO_INVALIDO}    30147600000000000000

${CONSULTA_PUBLICA_DE_PROCESSOS}    //span[text()='Consulta Pública de Processos']
${NUM_PROCESSO}    //*[@id="txtNumProcesso"]
${BOTAO_CONSULTAR}    //*[@id="sbmNovo"]
${MENSAGEM_NENHUM_REGISTRO_ENCONTRADO}    //label[text()='Nenhum registro encontrado.']
