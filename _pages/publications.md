---
layout: page
permalink: /publications/
title: publications
description: 
years: [2024, 2023, 2021]
nav: true
---

As to why I got drawn to machine leatning or computer vision, I do believe it is one of the richest modalities but also read this excerpt when I was quite young, from the book, "[Visual Reconstruction](https://mitpress.mit.edu/9780262524063/visual-reconstruction/)" by Andrew Blake and Andrew Zisserman, some of my favourite researchers:

> We count it a great privilege to be working in a field as exciting as Vision. On the one hand there is all the satisfaction of making things that work - of specifying, in mathematical terms, processes that handle visual information and then using computers to bring that mathematics to life. On the other hand there is a sense of awe (when time permits) at the sheer intricacy of creation. Of course it is the Biological scientists who are right in there; but computational studies, in seeking to define Visual processes in mathematical language, have made it clear just how intrinsically complex must be the chain of events that constitutes "seeing something".

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
