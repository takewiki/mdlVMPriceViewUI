#' 采购价格管理生成生成器界面
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
#' PurPriceManagementUI()
PurPriceManagementUI <- function(tabTitle ='采购价格管理',
                         colTitles =c('操作区域','操作区域','显示区域'),
                         widthRates =c(6,6,12),
                         func_left = PurPriceManagementUI_left,
                         func_right =PurPriceManagementUI_right,
                         func_bottom = PurPriceManagementUI_bottom
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
#' PurPriceManagementUI_left()
PurPriceManagementUI_left <- function() {


  res <- tagList(

    tsui::mdl_date(id = 'date_PurPriceManagement_Date',label = '计算日期'),
    tsui::mdl_text(id = 'txt_PurPriceManagement_ItemNumber',label = '物料编码',value = ''),
    shiny::actionButton('btn_PurPriceManagement_view','查询'),
    tsui::mdl_download_button(id ='dl_PurPriceManagement_view',label = '下载'),




  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' PurPriceManagementUI_bottom()
PurPriceManagementUI_right <- function() {
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
#' PurPriceManagementUI_bottom()
PurPriceManagementUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'PurPriceManagement_resultView',label ='结果显示' ))

  )
  return(res)

}
