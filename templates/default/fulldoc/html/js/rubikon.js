/**
 * This code is free software; you can redistribute it and/or modify it under
 * the terms of the new BSD License.
 *
 * Copyright (c) 2010, Sebastian Staudt
 */

function createCommandSourceLinks() {
    $('.command_details .source_code').
        before("<span class='showSource'>[<a href='#' class='toggleCommandSource'>View source</a>]</span>");
    $('.toggleCommandSource').toggle(function() {
       $(this).parent().next().slideDown(100);
       $(this).text("Hide source");
    },
    function() {
        $(this).parent().next().slideUp(100);
        $(this).text("View source");
    });
}

$(createCommandSourceLinks);
