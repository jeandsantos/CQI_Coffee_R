custom_visdat <- function(df, sort = FALSE, title = waiver(), subtitle = waiver(),
                          palette = "Set1", direction = -1, col_na = "grey", 
                          text_size = 7, text_angle = 90, asp_ratio = 0.5, expand_axes = FALSE, 
                          save_plot = FALSE, save_dir = NULL, save_file = "visdat_plot", save_format = "png", 
                          save_width = NA, save_height = NA, save_scale = 1, save_dpi = "print", ...){
  
  g <- visdat::vis_dat(df, sort_type = sort) + 
    scale_fill_brewer(type = "qual", palette = palette, direction = direction, na.value =  col_na) + 
    labs(title = title, subtitle = subtitle) +
    coord_cartesian(expand = expand_axes) +
    theme(axis.text.x = element_text(size = text_size, angle = text_angle), aspect.ratio = asp_ratio, ...)
  
  print(g)
  
  if(save_plot){ ggsave(plot = g, filename = paste0(save_file, ".", save_format), 
                        device = save_format, path = save_dir, 
                        width = save_width, height = save_height, scale = save_scale, dpi = save_dpi, 
                        limitsize = FALSE
                        )}
  
}
