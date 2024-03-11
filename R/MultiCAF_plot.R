#' Graphing Cumulative Age Frequencies for Multiple Species
#' @param df A dataframe with columns: species, age, and cumulative age frequency values for multiple fish species
#' @param age The age class of fish by year
#' @param CAF Cumulative age frequency values
#' @param species A species identifier for each row with age class and cumulative age frequency value
#'
#' @return Produces cumulative age frequency line plots for species contained in the dataframe
#' @export
#'
#' @examples Aqua_CAF(dataframe, age, CAF, species)
Aqua_CAF<- function(df, age, CAF, species) {
df|>
  ggplot(aes(x={{ age }}, y = {{ CAF }}, color = {{species}}))+
  geom_line(linetype = "dashed", size = 1.25)+
  labs(x = "Age (years)", y = "Relative Frequency (%)")+
  ggtitle(label = "Cumulative Age Frequency Plot")+
  theme_bw()
}
