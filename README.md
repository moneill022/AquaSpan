## README

#AquaSpan

AquaSpan allows users to graph cumulative age frequencies for multiple fish species based on input data. Reference data for wild populations described in the literature are also contained within the package and full citations can be found at the end of this document. Visualizations of both age class distributions and cumulative age frequencies can be generated for the reference data.

Age/Longevity distributions and cumulative age frequencies can be used to better understand the age structure and population dynamics of target taxa. In the context of multi-taxa aquatic exhibits, the examination of population age structure based on longevity data can assist in both exhibit and animal management.

Functions include:
Wild_Dist() - This function can be used to plot the age distributions of species contained in the WildDATA dataframe using the format:

Wild_Dist(WildDATA, species == "EXAMPLE", age, count)

Wild_CAF() - This function can be used to plot the cumulative age frequencies of species contained in the WildDATA dataframe using the format: 

Wild_CAF(WildDATA, species == "EXAMPLE", age, CAF)

Aqua_CAF() - This function can be used to plot cumulative age frequencies for multiple species contained in a user-supplied dataframe using the following format:

Aqua_CAF(dataframe, age, CAF, species)

The input dataframe is comprised of a row for each age class of the target species (in years) columns: age, CAF, species.

age: year classes of target species (0,1,2,3,4,5,6) etc.)

CAF: cumulative age frequency values as a percentage based on the number 
of fish in each age class added to the percentages from previous age classes i.e.(15, 20, 35, 77, 95, 98, 100)

species: name or identifier of target species for each age class (species01, species01, species01 etc.)

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><span property="dct:title">AquaSpan</span> by <span property="cc:attributionName">Michael O'Neill</span> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>


Blackfin Snapper, Lutjanus buccanella
Burton, M.L., Potts, J.C. & Carr, D.R. (2016). Age, growth, and natural mortality of blackfin snapper, Lutjanus buccanella, from the southeastern United States and U.S. Caribbean. Gulf and Caribbean Research, 27(1), 66-73. doi:10.18785/gcr.2701.10

Bluestriped Grunt, Haemulon sciurus
Pitt, J.M., Trott, T.M. & Luckhurst, B.E. (2010). Bluestriped grunt (Haemulon sciurus) in Bermuda: age, growth, and reproduction studies. [Conference Paper]. 62nd Gulf and Caribbean Fisheries Institute, Cumana, Venezuela

Blue Runner, Caranx crysos
Goodwin, J.M. IV & Johnson, A.G. (1986). Age, growth, and mortality of blue runner, Caranx crysos, from the northern Gulf of Mexico. Northeast Gulf Science, 8(2), 107-114. doi:10.18785/negs.0802.02

French Angelfish, Pomacanthus paru
Feitosa CV, Araújo ME, and Ferreira BP. Estimates on age, growth and mortality of the French angelfish Pomacanthus paru (Bloch, 1787) (Teleostei: Pomacanthidae) in the southwestern Atlantic. J Appl Ichthyol. 2017;00:1–6. doi:10.1111/jai.13246.

Permit, Trachinotus falcatus
Crabtree, R. E., Hood, P. B., and Snodgrass D. (2002) Age, growth, and reproduction of permit (Trachinotus falcatus) in Florida water. Fish. Bull. 100:26-34 (2002)

Queen Triggerfish, Balistes vetula
Albuquerque, C.Q., Martins, A.S., Leite, N.O. Jr., Araujo, J.N, & Ribeiro, A.M. (2011). Age and growth of the queen triggerfish Balistes vetula (Tetraodontiformes, Balistidae) of the central coast of Brazil. Brazilian Journal of Oceanography, 59(3), 231-239.

Snowy Grouper, Hyporthodus niveatus
Kowal, K. (2010). Aspects of the life history of the snowy grouper, Epinephelus niveatus, in the Gulf of Mexico. Graduate Theses and Dissertations, http://scholarcommons.usf.edu/etd/3505

Tomtate, Haemulon aurolineatum
Manooch, C.S. III & Barans, C.A. (1982). Distribution, abundance, and age and growth of the tomtate, Haemulon aurolineatum, along the southeastern United States coast. Fishery Bulletin, 80(1), 1-19

White Grunt, Haemulon plumierii
Araujo, J. N. and A. S. Martins. (2007). Age, growth and mortality of white grunt (Haemulon plumierii) from the central coast of Brazil. Scientia Marina, 71(4). 793-800
