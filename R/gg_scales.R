#' Color scale for usc
#'
#' See official color guide \url{https://sc.edu/about/offices_and_divisions/communications/toolbox/visuals/colors/using_color/index.php}
#'
#' @param palette Character name for palettes
#' @param discrete boolean indicating data type
#' @param rev boolean to reverse palette
#' @param ... additional arguements for discrete_scale() or scale_color_gradientn()
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
#' @export
scale_color_usc <- function(palette = 'simple',
                              discrete = TRUE,
                              rev = FALSE,
                              ...) {

  pal <- usc_pal(palette = palette, rev = rev)

  if(discrete) {
    return(discrete_scale('colour', paste0("usc_", palette),
                          palette = pal, ...))
  } else {
    return(scale_color_gradientn(colours = pal(256), ...))
  }
}

#' Fill scale for usc
#'
#' @inheritParams scale_color_usc
#'
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn
#' @export
scale_fill_usc <- function(palette = 'simple',
                             discrete = TRUE,
                             rev = FALSE,
                             ...) {

  pal <- usc_pal(palette = palette, rev = rev)

  if(discrete) {
    return(discrete_scale('fill', paste0("usc_", palette),
                          palette = pal, ...))
  } else {
    return(scale_fill_gradientn(colours = pal(256), ...))
  }
}
