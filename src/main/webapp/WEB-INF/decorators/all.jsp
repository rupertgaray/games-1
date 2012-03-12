<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://vidageek.net/autoweb" prefix="aw"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="google-site-verification"
	content="FjDxiddkSQXOHTFWCpYqrXpjj7wCoCcX1krRxTCHuq0" />
<title><decorator:title /></title>
<aw:css url="/css/bootstrap.min.css" />
<aw:css url="/css/style.css" />
<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a id="select-a-provider" class="brand pull-right" data-toggle="modal"
					href="#logon-provider">Logar...</a>
			</div>
			<div class="ribbon-holder" >
				<a href="https://github.com/vidageek/games" class="ribbon"> 
					<span class="text">Ajude-nos no GitHub</span>
				</a>
			</div>
		</div>
	</div>
	<div class="container">
		<decorator:body />
	</div>

	<section>
		<div id="logon-provider" class="modal hide fade in">
			<div class="modal-header">
				<a class="close" data-dismiss="modal">×</a>
				<h3>Selecione por onde deseja logar</h3>
			</div>
			<div class="modal-body">
				<ul class="nav nav-tabs nav-stacked">
					<li>
						<a href="<c:url  value="/auth/provider/twitter" />">Twitter</a>
					</li>
				</ul>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Cancelar</a>
			</div>
		</div>
	</section>
	
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<aw:js url="/js/games-packaged.js" />

	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-1508082-6' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
</body>
</html>
