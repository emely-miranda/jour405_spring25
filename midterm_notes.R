R functions to remember

read_csv("stuff goes in quotes")

set.seed(1234) -- make sure to use if it says so

naming something <- name of dataframe |>

mutate() -- do specific things
  calculations: mutate(thing = (x-y))
  pct_change: (x-y)/y -- multiply by 100 to get percentage
  *rates example: (violent_rate_2019 = violent2019/pop2019 * 10000 --- multiply by number that makes data make sense
  percentile: ntile(category, 100)

summarize()
  mean()
  median()
  min()
  max()
  IQR()
  sd() -- standard deviation are two points and the majority of the data lies between those points
  correlation: cor(x,y, method = "pearson")

graphs
  dataframe |> then ggplot() +
    Histogram:
      geom_histogram(aes(x=category), fill = "inside color", color = "border color", binwidth = reasonable amount that shows shape of data) +
        *example:   geom_histogram(aes(x=red), fill = "red", color = "black",  binwidth = 3) +
      geom_vline: (aes(xintercept = something), color = "color", linetype = "linetype/dashed or something", size = 1) +
        *example: geom_vline(aes(xintercept = mean(red) + sd(red)), color = "purple", linetype = "dashed")
    Scatterplot:
      geom_point(aes(x=something, y = somethingelse)) +
      geom_smooth(aes(x = something, y = somethingelse), method = "lm") +
      labs(title = "NAME", subtitle = "name", x = "name", y = "name")

samples
  sampleNUMBER <- dataframe |>
    sample_n(NUMBER)
