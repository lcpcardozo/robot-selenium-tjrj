*** Settings ***
Library    SeleniumLibrary

Resource    ../pages/eproc_page.robot
Resource    ../variables/variables.robot
Resource    ../resources/common.robot


*** Test Cases ***
Consultar Processo Invalido

    Abrir Navegador    ${BASE_URL}

    Abrir Consulta Pública de Processos
    Digitar Numero Do Processo    ${PROCESSO_INVALIDO}
    Clicar Botão Consultar
    Validar Mensagem Nenhum Registro Encontrado

    Fechar Navegador

Consultar Processo Valido

    Abrir Navegador    ${BASE_URL}

    Abrir Consulta Pública de Processos
    Digitar Numero Do Processo    ${PROCESSO_VALIDO}
    Clicar Botão Consultar
    Validar Resultado Da Consulta    Nº do Processo:

    Fechar Navegador
