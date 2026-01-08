create or replace trigger atualizar_registro_propriedes
after update on propriedades
for each row 
execute function insercao_de_dados_log_precos();


create or replace function insercao_de_dados_log_precos()
returns trigger as $$

begin 

        insert into log_precos(propriedade_id,preco_antigo,preco_novo,data_alteracao)
                    values(new.id_propriedade,old.preco_noite,new.preco_noite,current_timestamp);

return new;

end;
 $$ LANGUAGE plpgsql;



 create or replace trigger alteracao_de_dados_hospede
before insert on hospedes
for each row 
execute function nomes_em_lowercase ();

create or replace function nomes_em_lowercase()
returns trigger as $$

begin 
        new.nome = lower(new.nome);

return new;

end;
$$ LANGUAGE plpgsql;




CREATE OR REPLACE FUNCTION modificar_reservas()
RETURNS trigger AS $$
DECLARE
    qtd_dias INTEGER;
    valor_diaria NUMERIC(5,2);
BEGIN
    -- Verifica se as datas foram alteradas
    IF NEW.data_inicio <> OLD.data_inicio
       OR NEW.data_fim <> OLD.data_fim THEN

        -- Validação de datas
        IF NEW.data_fim <= NEW.data_inicio THEN
            RAISE EXCEPTION 'Data fim deve ser maior que data início';
        END IF;

        -- Calcula quantidade de dias1
        qtd_dias := NEW.data_fim - NEW.data_inicio;

        -- Busca o preço por noite da propriedade
        SELECT p.preco_noite
        INTO valor_diaria
        FROM propriedades p
        WHERE p.id_propriedade = NEW.fk_propriedades;

        -- Recalcula o valor total
        NEW.valor_total := qtd_dias * valor_diaria;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE TRIGGER atualizar_tabela_reservas
BEFORE UPDATE ON reservas
FOR EACH ROW
EXECUTE FUNCTION modificar_reservas();
