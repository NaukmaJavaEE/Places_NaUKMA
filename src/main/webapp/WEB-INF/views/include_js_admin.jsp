<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>
    $(document).ready(function () {
        $('#show-new-list').click(function () {
            $('#newplaces .float_i').html(formTableHeaderNew());
            get('/admin/newplaces', function (response) {
                for (var i = 0; i < response.length; ++i) {
                    $('#list-new').append(formTableBodyNew(response[i]));
                }
            }, function (xhr) {
                console.log(xhr);
            });
        }).trigger('click');

        $('#show-all-list').click(function () {
            $('#allplaces .float_i').html(formTableHeaderAll());
            get('/admin/allplaces', function (response) {
                for (var i = 0; i < response.length; ++i) {
                    $('#list-all').append(formTableBodyAll(response[i]));
                }
            }, function (xhr) {
                console.log(xhr);
            });
        });

    });

    function formTableHeaderNew() {
        return '<table>' + '<thead>' + '<tr>'
                + '<th><spring:message code="label.name" /></th>'
                + '<th><spring:message code="label.building" /></th>'
                + '<th><spring:message code="label.stage" /></th>'
                + '<th><spring:message code="label.aud" /></th>'
                + '<th><spring:message code="label.info" /></th>'
                + '<th><spring:message code="label.status" /></th>'
                + '<th>&nbsp;</th>'
                + '<th>&nbsp;</th>'
                + '</tr>' + '</thead>'
                + '<tbody id="list-new"></tbody>' + '</table>';
    }
    function formTableHeaderAll() {
        return '<table>' + '<thead>' + '<tr>'
                + '<th><spring:message code="label.name" /></th>'
                + '<th><spring:message code="label.building" /></th>'
                + '<th><spring:message code="label.stage" /></th>'
                + '<th><spring:message code="label.aud" /></th>'
                + '<th style="width: 100px"><spring:message code="label.info" /></th>'
                + '<th><spring:message code="label.status" /></th>'
                + '<th>&nbsp;</th>'
                + '<th>&nbsp;</th>'
                + '</tr>' + '</thead>'
                + '<tbody id="list-all"></tbody>' + '</table>';
    }
    function formTableBodyNew(place) {
        return '<tr><td align="center">' + place.name + '</td>'
                + '<td align="center">' + place.building + '</td>'
                + '<td align="center">' + place.stage + '</td>'
                + '<td align="center">' + place.aud + '</td>'
                + '<td align="center">' + place.info + '</td>'
                + '<td align="center">' + place.status + '</td> </tr>' +
                '<tr><td align="center"><a href="delete/' + place.id + '"><spring:message code="label.delete" /></a></td>'
                + '<td align="center"><a href="approve/' + place.id + '"><spring:message code="label.add" /></a></td></tr>';
    }
    function formTableBodyAll(place) {
        return '<tr><td align="center">' + place.name + '</td>'
                + '<td align="center">' + place.building + '</td>'
                + '<td align="center">' + place.stage + '</td>'
                + '<td align="center">' + place.aud + '</td>'
                + '<td align="center" style="width: 100px">' + place.info + '</td>'
                + '<td align="center">' + place.status + '</td></tr>' +
                '<tr><td align="center"><a href="delete/' + place.id + '"><spring:message code="label.delete" /></a></td></tr>';
    }

    function get(url, success, error) {
        $.ajax({
            url: url,
            type: 'GET',
            dataType: 'json',
            success: success,
            error: error
        });
    }
</script>