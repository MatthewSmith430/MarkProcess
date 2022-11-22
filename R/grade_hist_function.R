#' @title grade_hist
#'
#' @description creates histogram plot for grades
#' @param df Dataframe with a column with grades
#' @param grade_col Column name that contains the grades
#' @export
#' @return plot
grade_hist<-function(df,grade_col){
  DF1<-dplyr::select(df,grade_col)
  colnames(DF1)<-"grade"

  p<-ggplot2::ggplot(DF1, ggplot2::aes(x=grade))+
    ggplot2::geom_histogram(binwidth=5,color="black", fill="lightblue",
                   linetype="dashed")+
    ggplot2::scale_x_continuous(breaks=c(0,10,20,30,40,50,60,
                                70,80,90,100))+
    ggplot2::xlab("Mark")+ggplot2::ylab("Frequency")+
    ggplot2::ggtitle("Distribution of Marks")+
    ggplot2::theme_light()

  return(p)
}
