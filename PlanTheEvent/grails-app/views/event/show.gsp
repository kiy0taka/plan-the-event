
<%@ page import="digitalsoul.plantheevent.Event" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="body">
            <h1 id="pageTitle">イベント情報</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:if test="${fullToCapacity}">
              <div class="message" id="fullToCapacityMessage">満席になりました</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>                    
                        <tr class="prop">
                            <td valign="top" class="name">詳細</td>
                            <td valign="top" class="value" id="detail">${event.detail}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name">会場キャパシティ</td>
                            <td valign="top" class="value" id="roomsCapacity">${event.roomsCapacity()}</td>
                        </tr>                    
                        <tr class="prop">
                            <td valign="top" class="name">参加者数</td>
                            <td valign="top" class="value" id="participantsCount">${event.participantsCount()}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                  <g:if test="${!fullToCapacity}">
                    <span class="button"><g:actionSubmit id="apply" action="apply" value="申し込み" /></span>
                  </g:if>
                  <span class="button"><g:actionSubmit id="participantsList" action="participantsList" value="参加者一覧" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
