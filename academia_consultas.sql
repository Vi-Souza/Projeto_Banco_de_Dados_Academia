-- 1) Alunos ativos da unidade "Unidade Centro"
SELECT a.nome_aluno, u.nome_unid
FROM academia.alunos a
JOIN academia.alunos_unidades au ON a.id_aluno = au.id_aluno
JOIN academia.unidades u ON u.id_unid = au.id_unid
WHERE a.status_aluno = 'ativo' AND u.nome_unid = 'Unidade Centro'
ORDER BY a.nome_aluno;

-- 2) Quantidade de alunos por plano e receita total estimada
SELECT p.nome_plano,
       COUNT(a.id_aluno) AS qtde_alunos,
       COUNT(a.id_aluno) * p.preco_plan AS receita_total_estimada
FROM academia.planos p
LEFT JOIN academia.alunos a ON a.id_plano = p.id_plano
GROUP BY p.id_plano, p.nome_plano, p.preco_plan
ORDER BY qtde_alunos DESC;

-- 3) Unidades com pelo menos 2 alunos ativos (lista unidade e aluno)
SELECT u.nome_unid, a.nome_aluno
FROM academia.unidades u
JOIN academia.alunos_unidades au ON u.id_unid = au.id_unid
JOIN academia.alunos a ON a.id_aluno = au.id_aluno
WHERE a.status_aluno = 'ativo'
  AND u.id_unid IN (
    SELECT au2.id_unid
    FROM academia.alunos_unidades au2
    JOIN academia.alunos a2 ON a2.id_aluno = au2.id_aluno
    WHERE a2.status_aluno = 'ativo'
    GROUP BY au2.id_unid
    HAVING COUNT(*) >= 2
  )
ORDER BY u.nome_unid, a.nome_aluno;