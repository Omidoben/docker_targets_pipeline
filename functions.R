get_data <- function(){
  CleanData::unemp           # This function is as simple as it gets; it doesn’t take any arguments and returns the data that we added to our package
}


make_plot <- function(data){
  ggplot(data) +
    geom_col(
      aes(x = year,
          y = active_population,
          fill = place_name)
    ) +
    theme(legend.position = "bottom",
          legend.title = element_blank()) +
        labs(title = paste0("Unemployement for ", paste(unique(data$place_name), collapse = ", ")))
}

save_plot <- function(save_path, plot){
    ggsave(save_path, plot)
    save_path
}