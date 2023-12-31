<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Cadastro de Meta</title>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<%@ include file="header.jsp"%>
</head>
<body>
	<%@ include file="menu.jsp"%>

	<div class="container-fluid">

		<div class="row justify-content-md-center p-5">

			<div class="col col-lg-9">

				<div class="container-fluid">

					<ul class="nav nav-tabs">

						<li class="nav-item"><a class="nav-link text-warning"
							href="${pageContext.request.contextPath}/meta?acao=listar">Listar
								Metas</a></li>

						<li class="nav-item"><a class="nav-link text-warning active"
							aria-current="page" href="${pageContext.request.contextPath}/meta?acao=abrirFormMeta">Cadastro de Meta</a></li>

						<li class="nav-item"><a class="nav-link disabled">Editar</a>
						</li>

					</ul>
					<form action="meta" method="post">

						<%-- <input type="hidden" value="cadastrar" name="acao">--%>
						<input type="hidden" value="cadastrar" name="acao">

						<div class="form-group">
							<label for="id-objetivo">Objetivo</label>
							 <select name="nome-objetivo" id="id-nome-objetivo" class="form-select text-body-tertiary">
								<option selected>Selecione uma opção</option>
								<c:forEach items="${objetivos}" var="c">
									<option value="${c.idObjetivo}">${c.dsObjetivo}</option>
								</c:forEach>
							</select>
						</div>

						<div class="form-group">
							<label for="id-valor">Meta</label> <input type="text" name="nome-meta"
								id="id-meta" class="form-control">
						</div>

						<div class="form-group">
							<label for="id-valor">Categoria</label> <input type="text"
								name="nome-categoria" id="id-categoria" class="form-control">
						</div>
						
						<div class="form-group">
							<label for="id-valor">Valor Alvo</label> <input type="text"
								name="valor-meta" id="id-valor-meta" class="form-control">
						</div>
						
						<div class="form-group">
							<label for="id-valor">Data Inicio</label> <input type="text"
								name="data-inicio" id="id-valor-meta" class="form-control">
						</div>
						
						<div class="form-group">
							<label for="id-valor">Data Fim</label> <input type="text"
								name="data-fim" id="id-valor-meta" class="form-control">
						</div>

						<div class="d-grid gap-2 d-md-flex justify-content-md-end p-3">
							<input type="submit" value="Salvar" class="btn btn-warning">
						</div>

					</form>
				</div>
				<c:if test="${not empty msg }">
					<div
						class="border border-warning alert alert-dismissible fade show  alert-outline-warning text-black text-center rounded mx-auto d-block w-50"
						role="alert">${msg}</div>
				</c:if>

				<c:if test="${not empty erro }">
					<div
						class="border border-warning alert alert-dismissible fade show  alert-outline-warning text-black text-center rounded mx-auto d-block w-50"
						role="alert">${erro}</div>
				</c:if>
			</div>
		</div>
	</div>
	<%@include file="alerts.jsp"%>
	<%@ include file="footer.jsp"%>
</body>
</html>