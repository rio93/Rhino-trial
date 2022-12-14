box::use(
  rhino,
  reactable[reactable],
  dplyr,
  tidyr,
  magrittr[`%>%`],
)

#' @export
fetch_data <- function(){
  rhino::rhinos
}

#' @export
table <- function(data){
data %>%
    tidyr::pivot_wider(names_from = "Species", values_from = "Population") %>%
    dplyr::arrange(Year) %>%
    reactable()
}

