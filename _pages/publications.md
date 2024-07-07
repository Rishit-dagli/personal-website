---
layout: page
permalink: /publications/
title: publications
description: 
years: [2024, 2023, 2022, 2021]
nav: false
---

<div class="publications">

{% for y in page.years %}
  <div class="row">
    <div class="col-sm-12">
      <h2 class="year">{{y}}</h2>
    </div>
  </div>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>