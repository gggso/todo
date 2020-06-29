package devices

import (
	"github.com/gogf/gf-demos/app/service/devices"
	"github.com/gogf/gf-demos/library/response"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
)
type Controller struct{}

// 注册请求参数，用于格式约定
type InsertDevicesRequest struct {
	devices.InsertDevicesInput
}

// @summary 设备信息上报接口
// @tags    设备接口
// @produce json
// @param   passport  formData string  true "用户账号名称"
// @param   password  formData string  true "用户密码"
// @param   password2 formData string  true "确认密码"
// @param   nickname  formData string false "用户昵称"
// @router  /devices/insert [POST]
// @success 200 {object} response.JsonResponse "执行结果"
func (c *Controller) Insert(r *ghttp.Request) {
	g.Log().Cat("devices").Println(r.Router.Uri)
	var data *InsertDevicesRequest
	// 这里没有使用Parse而是仅用GetStruct获取对象，
	// 数据校验交给后续的service层统一处理
	if err := r.GetStruct(&data); err != nil {
		response.JsonExit(r, 1, err.Error())
	}
	if err := devices.InsertDevices(&data.InsertDevicesInput); err != nil {
		response.JsonExit(r, 1, err.Error())
	} else {
		response.JsonExit(r, 0, "ok")
	}
}

//func (c *Controller) List(r *ghttp.Request) {
//	response.JsonExit(r, 0, "", devices.IsSignedIn(r.Session))
//}