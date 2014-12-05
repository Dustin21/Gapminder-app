Gapminder-app
=============

This is a Shiny app that enables you to interactively select data pertaining to country and year, while analysing it through a plot. You will be able to look at multiple countries at once in one plot, or simply click a box to facet wrap each country individially.

Click [here](https://dustin21.shinyapps.io/Gapminder-app/) to begin using the app.

### Instructions

1. Run locally by cloning into a directory and click `Run App` when either `server.R` or `ui.R` is open. You can also run the app with the command `shiny::runApp('Gapminder-app')`  in the console.
2. Check it out in your web browser by clicking [here](https://dustin21.shinyapps.io/Gapminder-app/).

### Reflections
This was a great training excercise for the big game. I didn't have many issues with this exercise, although I did run into some problems when integrating `facet_wrap`. After throwing in an `if` function, to the plot itself, everything worked out well.

One thing I am not too keen on is the `dateRangeInput`, as it forces me to enter months when I access the widget manually. I would prefer a simple input box to just enter the year in question.

I relied mainly on Julia Gustavsen's and Jenny Bryan's [Shiny Overview](http://stat545-ubc.github.io/shiny00_index.html), and links provided. The rest of my energy was set on developing my own app, so check out my [Market App](https://dustin21.shinyapps.io/MarketApp/)!