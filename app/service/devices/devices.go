package devices

import (
	"errors"
	"github.com/gogf/gf-demos/app/model/devices"
	"github.com/gogf/gf/os/gtime"
	"github.com/gogf/gf/util/gconv"
	"github.com/gogf/gf/util/gvalid"
)

// 注册设备参数
type InsertDevicesInput struct {
	Type string
	Model string
	Size string
	Android_id string
	Version string
	Sdk string
	Brand string
	Devices_id string
	Iemi string
	Mac string
	Df string
	Uuid string `v:"required|length:36,36#uuid不能为空|uuid长度错误"`
}

// 注册设备
func InsertDevices(data *InsertDevicesInput) error {
	// 输入参数检查
	if e := gvalid.CheckStruct(data, nil); e != nil {
		return errors.New(e.FirstString())
	}


	// 将输入参数赋值到数据库实体对象上
	var entity *devices.Entity
	if err := gconv.Struct(data, &entity); err != nil {
		return err
	}
	// 记录账号创建/注册时间
	entity.CreateTime = gtime.Now()
	if _, err := devices.Save(entity); err != nil {
		return err
	}
	return nil
}

// 获取设备列表
//func GetList() error {

//}