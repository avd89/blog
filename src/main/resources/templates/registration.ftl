<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="mb-1">Add new user</div>
    ${message?ifExists}
    <@l.registration "/registration" false />
</@c.page>