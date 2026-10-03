*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Abrir Consulta Pública de Processos
    Click Element    ${CONSULTA_PUBLICA_DE_PROCESSOS}

Digitar Numero do Processo
    [Arguments]    ${numero_processo}
    Sleep    5s
    Input Text    ${NUM_PROCESSO}    ${numero_processo}

Clicar Botão Consultar
    Click Element    ${BOTAO_CONSULTAR}

Validar Resultado da Consulta
    [Arguments]    ${resultado_esperado}
    ${resultado_atual}=    Get Text    //div/dt[@id='lblNumProcesso']
    Should Be Equal As Strings    ${resultado_atual}    ${resultado_esperado}

Validar Mensagem Nenhum Registro Encontrado
    ${mensagem_atual}=    Get Text    ${MENSAGEM_NENHUM_REGISTRO_ENCONTRADO}
    Should Be Equal As Strings    ${mensagem_atual}    Nenhum registro encontrado.