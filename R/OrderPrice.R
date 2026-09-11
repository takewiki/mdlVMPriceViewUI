#' 订单价生成生成器界面
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
#' OrderPriceUI()
OrderPriceUI <- function(tabTitle ='订单价',
                         colTitles =c('操作区域','操作区域','显示区域'),
                         widthRates =c(6,6,12),
                         func_left = OrderPriceUI_left,
                         func_right =OrderPriceUI_right,
                         func_bottom = OrderPriceUI_bottom
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
#' OrderPriceUI_left()
OrderPriceUI_left <- function() {


  res <- tagList(

    tsui::mdl_dateRange(id = 'date_OrderPrice_Date',label = '日期范围'),

    shiny::actionButton('btn_OrderPrice_view','查询'),
    tsui::mdl_download_button(id ='dl_OrderPrice_view',label = '下载'),




  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' OrderPriceUI_bottom()
OrderPriceUI_right <- function() {
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
#' OrderPriceUI_bottom()
OrderPriceUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'OrderPrice_resultView',label ='结果显示' ))

  )
  return(res)

}
