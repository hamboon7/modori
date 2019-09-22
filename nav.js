$(document).ready(function() {
			$('#nav-icon1,#nav-icon2,#nav-icon3,#nav-icon4').click(function() {
				$(this).toggleClass('open');
			});
		});

		$(function() {
			'use strict'
			$('[data-toggle="offcanvas"]').on('click', function() {
				$('.offcanvas-collapse').toggleClass('open')
			})
		})

		$("#inpt_search").on('focus', function() {
			$(this).parent('label').addClass('active');
		});

		$("#inpt_search").on('blur', function() {
			if ($(this).val().length == 0)
				$(this).parent('label').removeClass('active');
		});

		$(document).ready(function() {
			$("#accordian a").click(function() {
				var link = $(this);
				var closest_ul = link.closest("ul");
				var parallel_active_links = closest_ul.find(".active")
				var closest_li = link.closest("li");
				var link_status = closest_li.hasClass("active");
				var count = 0;

				closest_ul.find("ul").slideUp(function() {
					if (++count == closest_ul.find("ul").length)
						parallel_active_links.removeClass("active");
				});

				if (!link_status) {
					closest_li.children("ul").slideDown();
					closest_li.addClass("active");
				}
			})
		})