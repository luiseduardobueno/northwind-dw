with
    fonte_fornecedores as (
        select 
            cast(supplier_id as int) as id_fornecedor
            , cast(company_name as string) as nome_fornecedor
            , cast(contact_name as string) as contato_fornecedor
            , cast(contact_title as string) as contato_funcao
            , cast(address as string) as endereco_forncedor
            , cast(city as string) as cidade_forncedor
            , cast(region as string) as regiao_forncedor
            , cast(postal_code as string) as cep_forncedor
            , cast(country as string) as pais_forncedor
            , cast(phone as string) as telefone_forncedor
            , cast(fax as string) as fax_forncedor
            , cast(homepage as string) as site_forncedor
        from {{ source('erp', 'suppliers') }}
    )

select *
from fonte_fornecedores 