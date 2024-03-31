#' Age Distribution Plot
#'
#' @param WildDATA Dataset; Number of individuals and cumulative age frequencies of each age group for various fish species
#' @param species Fish species contained in the dataset including tomtate, blue runner, french angel, and white grunt
#' @param age The age in years
#' @param CAF The cumulative age frequency for each age class
#' @param count The number of individual fish in a specific age class (in years).
#'
#' @return A distribution plot of the number of fish in each age class based on data from the following references:
#'
#' Atlantic Spadefish, Chaetodipterus faber
#'
#' Hayse, J. (1990). Feeding habits, age, growth, and reproduction of Atlantic Spadefish, Cheatodipterus faber (Pisces: Ephippidae) in South Carolina. Fish. Bull. 88: 67-83.
#'
#' Blackfin Snapper, Lutjanus buccanella
#'
#' Burton, M.L., Potts, J.C. & Carr, D.R. (2016). Age, growth, and natural mortality of blackfin snapper, Lutjanus buccanella, from the southeastern United States and U.S. Caribbean. Gulf and Caribbean Research, 27(1), 66-73. doi:10.18785/gcr.2701.10
#'
#' Bluestriped Grunt, Haemulon sciurus
#'
#' Pitt, J.M., Trott, T.M. & Luckhurst, B.E. (2010). Bluestriped grunt (Haemulon sciurus) in Bermuda: age, growth, and reproduction studies. [Conference Paper]. 62nd Gulf and Caribbean Fisheries Institute, Cumana, Venezuela
#'
#' Blue Runner, Caranx crysos
#'
#' Goodwin, J.M. IV & Johnson, A.G. (1986). Age, growth, and mortality of blue runner, Caranx crysos, from the northern Gulf of Mexico. Northeast Gulf Science, 8(2), 107-114. doi:10.18785/negs.0802.02
#'
#' French Angelfish, Pomacanthus paru
#'
#' Feitosa CV, Araújo ME, and Ferreira BP. Estimates on age, growth and mortality of the French angelfish Pomacanthus paru (Bloch, 1787) (Teleostei: Pomacanthidae) in the southwestern Atlantic. J Appl Ichthyol. 2017;00:1–6. doi:10.1111/jai.13246.
#'
#' Hogfish, Lachnolaimus maximus
#'
#' Towne, I. A. (2018). Age and growth of hogfish (Lachnolaimus maximus) in Southeast Florida. Master's thesis. Noa Southeasatern University. Retrieved from NSUWorks, (465).
#'
#' Jolthead Porgy, Calamus bajonado
#'
#' Burton, M. L., Potts, J. C., Page, J., and A Poholek.(2017). Age, growth, mortality, and reproductive seasonality of jolthead porgy, Calamus bajonado, from Florida waters. PeerJ 5:e3774. doi: 10.7717/peerj.3774
#'
#' Permit, Trachinotus falcatus
#'
#' Crabtree, R. E., Hood, P. B., and Snodgrass D. (2002) Age, growth, and reproduction of permit (Trachinotus falcatus) in Florida water. Fish. Bull. 100:26-34 (2002)
#'
#' Queen Triggerfish, Balistes vetula
#'
#' Albuquerque, C.Q., Martins, A.S., Leite, N.O. Jr., Araujo, J.N, & Ribeiro, A.M. (2011). Age and growth of the queen triggerfish Balistes vetula (Tetraodontiformes, Balistidae) of the central coast of Brazil. Brazilian Journal of Oceanography, 59(3), 231-239.
#'
#' Schoolmaster, Lutjanus apodus
#'
#' Potts, J. C., Burton, M. L., and A. R. Myers. (2016). Age, growth, and natural mortlaityu of schoolmaster (Lutjanus apodus) from the southeastern United States. PeerJ 4:e2543. doi: 10.7717/peerj.2543
#'
#' Snowy Grouper, Hyporthodus niveatus
#'
#' Kowal, K. (2010). Aspects of the life history of the snowy grouper, Epinephelus niveatus, in the Gulf of Mexico. Graduate Theses and Dissertations, http://scholarcommons.usf.edu/etd/3505
#'
#' Tomtate, Haemulon aurolineatum
#'
#' Manooch, C.S. III & Barans, C.A. (1982). Distribution, abundance, and age and growth of the tomtate, Haemulon aurolineatum, along the southeastern United States coast. Fishery Bulletin, 80(1), 1-19
#'
#' White Grunt, Haemulon plumierii
#'
#' Araujo, J. N. and A. S. Martins. (2007). Age, growth and mortality of white grunt (Haemulon plumierii) from the central coast of Brazil. Scientia Marina, 71(4). 793-800
#'
#' @export
#'
#' @examples WildDATA |> Wild_Dist(WildDATA, species == "white grunt", age, count)
#' @examples Wild_Dist(WildDATA, species == "french angel", age, count)

Wild_Dist<- function(WildDATA, species, age, count ) {
  Agelabel <- rlang::englue("Age Distribution for {{ species }}")

  WildDATA |>
    filter ({{ species }}) |>
    ggplot(aes(x = {{ age }}, y = {{ count}}, fill = {{ species }})) +
    geom_bar(stat = "identity")+
    scale_fill_brewer(palette = "Set1")+
    labs(x = "Age (Years)", y = "Number of Fish", title = Agelabel )+
    scale_y_continuous(expand = c(0,0))+
    theme_bw()+
    theme(legend.position = "none")
}
