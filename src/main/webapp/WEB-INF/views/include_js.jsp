<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	$(document).ready(function() {
		$('#show-dean-list').click(function() {
			$('#dean .float_i').html(formTHDean());
			get('/places/dean', function(response) {
				for (var i = 0; i < response.length; ++i) {
					$('#list-dean').append(formTBDean(response[i]));
				}
			}, function(xhr) {
				console.log(xhr);
			});
		}).trigger('click');

		$('#show-chair-list').click(function() {
			$('#chair .float_i').html(formTHChair());
			get('/places/chair', function(response) {
				for (var i = 0; i < response.length; ++i) {
					$('#list-chair').append(formTBDean(response[i]));
				}
			}, function(xhr) {
				console.log(xhr);
			});
		});

		$('#show-administration-list').click(function() {
			$('#administration .float_i').html(formTHAdministration());
			get('/places/administration', function(response) {
				for (var i = 0; i < response.length; ++i) {
					$('#list-administration').append(formTBDean(response[i]));
				}
			}, function(xhr) {
				console.log(xhr);
			});
		});
		
		$('#show-departments-list').click(function() {
			$('#departments .float_i').html(formTHDepartments());
			get('/places/departments', function(response) {
				for (var i = 0; i < response.length; ++i) {
					$('#list-departments').append(formTBDean(response[i]));
				}
			}, function(xhr) {
				console.log(xhr);
			});
		});
		
		$('#show-library-list').click(function() {
			$('#library .float_i').html(formTHLibrary());
			get('/places/library', function(response) {
				for (var i = 0; i < response.length; ++i) {
					$('#list-library').append(formTBLibrary(response[i]));
				}
			}, function(xhr) {
				console.log(xhr);
			});
		});

		
		$('#show-organizations-list').click(function() {
			$('#organizations .float_i').html(formTHOrganizations());
			get('/places/organizations', function(response) {
				for (var i = 0; i < response.length; ++i) {
					$('#list-organizations').append(formTBDean(response[i]));
				}
			}, function(xhr) {
				console.log(xhr);
			});
		});

		$('#show-coworking-list').click(function() {
			$('#coworking .float_i').html(formTHCoworking());
			get('/places/coworking', function(response) {
				for (var i = 0; i < response.length; ++i) {
					$('#list-coworking').append(formTBLibrary(response[i]));
				}
			}, function(xhr) {
				console.log(xhr);
			});
		});

		$('#show-friends-list').click(function() {
			$('#friends .float_i').html(formTHFriends());
			get('/places/friends', function(response) {
				for (var i = 0; i < response.length; ++i) {
					$('#list-friends').append(formTBDean(response[i]));
				}
			}, function(xhr) {
				console.log(xhr);
			});
		});

		$('#show-schools-list').click(function() {
			$('#schools .float_i').html(formTHSchools());
			get('/places/schools', function(response) {
				for (var i = 0; i < response.length; ++i) {
					$('#list-schools').append(formTBDean(response[i]));
				}
			}, function(xhr) {
				console.log(xhr);
			});
		});
		
		$('#show-services-list').click(function() {
			$('#services .float_i').html(formTHServices());
			get('/places/services', function(response) {
				for (var i = 0; i < response.length; ++i) {
					$('#list-services').append(formTBLibrary(response[i]));
				}
			}, function(xhr) {
				console.log(xhr);
			});
		});
		
		$('#show-health-list').click(function() {
			$('#health .float_i').html(formTHHealth());
			get('/places/health', function(response) {
				for (var i = 0; i < response.length; ++i) {
					$('#list-health').append(formTBLibrary(response[i]));
				}
			}, function(xhr) {
				console.log(xhr);
			});
		});


		$('#form').submit(function(e){
			e.preventDefault();
			var body = {};
			$(this).find('input').each(function(i, current){
				current = $(current);
				body[current.attr('name')] = current.attr('value');
			});

			body.text = $(this).find('textarea').val();

			$.ajax({
				url: '/mail',
				type: 'POST',
				contentType: "application/json; charset=utf-8",
				data: JSON.stringify(body),
				/*beforeSend: function(xhr){
					xhr.setRequestHeader('Content-type', 'application/json');
					xhr.setRequestHeader('Accept', 'application/json');
				},*/
				success: function(response){
					console.log(response);
				},
				error: function(xhr){
					console.log(xhr);
				}
			})

		});
	});

	function formTHDean() {
		return '<table>' + '<thead>' + '<tr>'
				+ '<th align="center"><spring:message code="label.name" /></th>'
				+ '<th align="center"><spring:message code="label.building" /></th>'
				+ '<th align="center"><spring:message code="label.aud" /></th>'
				+ '<th align="center"><spring:message code="label.info" /></th>'
				+ '<th align="center">&nbsp;</th>' + '</tr>' + '</thead>'
				+ '<tbody id="list-dean"></tbody>' + '</table>';
	}

	function formTHChair() {
		return '<table>' + '<thead>' + '<tr>'
				+ '<th align="center"><spring:message code="label.name" /></th>'
				+ '<th align="center"><spring:message code="label.building" /></th>'
				+ '<th align="center"><spring:message code="label.aud" /></th>'
				+ '<th align="center"><spring:message code="label.info" /></th>'
				+ '<th align="center">&nbsp;</th>' + '</tr>' + '</thead>'
				+ '<tbody id="list-chair"></tbody>' + '</table>';
	}
	function formTHAdministration() {
		return '<table>' + '<thead>' + '<tr>'
				+ '<th align="center"><spring:message code="label.name" /></th>'
				+ '<th align="center"><spring:message code="label.building" /></th>'
				+ '<th align="center"><spring:message code="label.aud" /></th>'
				+ '<th align="center"><spring:message code="label.info" /></th>'
				+ '<th align="center">&nbsp;</th>' + '</tr>' + '</thead>'
				+ '<tbody id="list-administration"></tbody>' + '</table>';
	}
	
	function formTHDepartments() {
		return '<table>' + '<thead>' + '<tr>'
				+ '<th align="center"><spring:message code="label.name" /></th>'
				+ '<th align="center"><spring:message code="label.building" /></th>'
				+ '<th align="center"><spring:message code="label.aud" /></th>'
				+ '<th align="center"><spring:message code="label.info" /></th>'
				+ '<th align="center">&nbsp;</th>' + '</tr>' + '</thead>'
				+ '<tbody id="list-departments"></tbody>' + '</table>';
	}
	
	function formTHLibrary() {
		return '<table >' + '<thead>' + '<tr>'
				+ '<th align="center"><spring:message code="label.name" /></th>'
				+ '<th align="center"><spring:message code="label.building" /></th>'
				+ '<th align="center"><spring:message code="label.stage" /></th>'
				+ '<th align="center"><spring:message code="label.info" /></th>'
				+ '<th align="center">&nbsp;</th>' + '</tr>' + '</thead>'
				+ '<tbody id="list-library"></tbody>' + '</table>';
	}
	
	function formTHOrganizations() {
		return '<table>' + '<thead>' + '<tr>'
				+ '<th align="center"><spring:message code="label.name" /></th>'
				+ '<th align="center"><spring:message code="label.building" /></th>'
				+ '<th align="center"><spring:message code="label.aud" /></th>'
				+ '<th align="center"><spring:message code="label.info" /></th>'
				+ '<th align="center">&nbsp;</th>' + '</tr>' + '</thead>'
				+ '<tbody id="list-organizations"></tbody>' + '</table>';
	}
	
	function formTHCoworking() {
		return '<table >' + '<thead>' + '<tr>'
				+ '<th align="center"><spring:message code="label.name" /></th>'
				+ '<th align="center"><spring:message code="label.building" /></th>'
				+ '<th align="center"><spring:message code="label.stage" /></th>'
				+ '<th align="center"><spring:message code="label.info" /></th>'
				+ '<th align="center">&nbsp;</th>' + '</tr>' + '</thead>'
				+ '<tbody id="list-coworking"></tbody>' + '</table>';
	}
	
	function formTHFriends() {
		return '<table>' + '<thead>' + '<tr>'
				+ '<th align="center"><spring:message code="label.name" /></th>'
				+ '<th align="center"><spring:message code="label.building" /></th>'
				+ '<th align="center"><spring:message code="label.aud" /></th>'
				+ '<th align="center"><spring:message code="label.info" /></th>'
				+ '<th align="center">&nbsp;</th>' + '</tr>' + '</thead>'
				+ '<tbody id="list-friends"></tbody>' + '</table>';
	}
	
	function formTHSchools() {
		return '<table >' + '<thead>' + '<tr>'
				+ '<th align="center"><spring:message code="label.name" /></th>'
				+ '<th align="center"><spring:message code="label.building" /></th>'
				+ '<th align="center"><spring:message code="label.stage" /></th>'
				+ '<th align="center"><spring:message code="label.info" /></th>'
				+ '<th align="center">&nbsp;</th>' + '</tr>' + '</thead>'
				+ '<tbody id="list-schools"></tbody>' + '</table>';
	}
	
	function formTHServices() {
		return '<table >' + '<thead>' + '<tr>'
				+ '<th align="center"><spring:message code="label.name" /></th>'
				+ '<th align="center"><spring:message code="label.building" /></th>'
				+ '<th align="center"><spring:message code="label.stage" /></th>'
				+ '<th align="center"><spring:message code="label.info" /></th>'
				+ '<th align="center">&nbsp;</th>' + '</tr>' + '</thead>'
				+ '<tbody id="list-services"></tbody>' + '</table>';
	}
	
	function formTHHealth() {
		return '<table >' + '<thead>' + '<tr>'
				+ '<th align="center"><spring:message code="label.name" /></th>'
				+ '<th align="center"><spring:message code="label.building" /></th>'
				+ '<th align="center"><spring:message code="label.stage" /></th>'
				+ '<th align="center"><spring:message code="label.info" /></th>'
				+ '<th align="center">&nbsp;</th>' + '</tr>' + '</thead>'
				+ '<tbody id="list-health"></tbody>' + '</table>';
	}
	
	function formTBDean(place) {
		return '<tr><td align="center">' + place.name + '</td>'
				+ '<td align="center">' + place.building + '</td>'
				+ '<td align="center">' + place.aud + '</td>'
				+ '<td align="center">' + place.info + '</td>';
		'<td><a href="delete/'+place.id+'"><spring:message code="label.delete" /></a></td></tr>';
	}

	function formTBLibrary(place) {
		return '<tr><td align="center">' + place.name + '</td>'
				+ '<td align="center">' + place.building + '</td>'
				+ '<td align="center">' + place.stage + '</td>'
				+ '<td align="center">' + place.info + '</td>';
		'<td><a href="delete/'+place.id+'"><spring:message code="label.delete" /></a></td></tr>';
	}
	
	function get(url, success, error) {
		$.ajax({
			url : url,
			type : 'GET',
			dataType : 'json',
			success : success,
			error : error
		});
	}
</script>