#' 最新核算价格生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' LatestAccountPriceUI()
LatestAccountPriceUI <- function(tabTitle ='最新核算价格',
                           colTitles =c('操作区域','操作区域','显示区域'),
                           widthRates =c(6,6,12),
                           func_left = LatestAccountPriceUI_left,
                           func_right =LatestAccountPriceUI_right,
                           func_bottom = LatestAccountPriceUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' LatestAccountPriceUI_left()
LatestAccountPriceUI_left <- function() {


  res <- tagList(

    tsui::mdl_dateRange(id = 'date_LatestAccountPrice_Date',label = '日期范围'),

    shiny::actionButton('btn_LatestAccountPrice_view','查询'),
    tsui::mdl_download_button(id ='dl_LatestAccountPrice_view',label = '下载'),




  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' LatestAccountPriceUI_bottom()
LatestAccountPriceUI_right <- function() {
  res <- tagList(



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' LatestAccountPriceUI_bottom()
LatestAccountPriceUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'LatestAccountPrice_resultView',label ='结果显示' ))

  )
  return(res)

}
