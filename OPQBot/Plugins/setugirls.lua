local log = require("log")
local Api = require("coreApi")
local json = require("json")
local http = require("http")



function ReceiveFriendMsg(CurrentQQ, data)
    return 1
end
function ReceiveGroupMsg(CurrentQQ, data)
    if data.FromGroupId == 383770908 
    or data.FromGroupId == 959562190 
    or data.FromGroupId == 661780072 
    then
        
    if data.FromUserId == 1689236904 then--防止自我复读
		  return 1 end    
		  
	if data.Content == '妹子' then 
	math.randomseed(tonumber(tostring(os.time()):reverse():sub(1, 6)))
	local randomNum = math.random(1,5546)
	-- 图片路径
	local path = "/home/ffaxx/图片/r15/"..randomNum..".jpg"
	res = readImg(path)
	base64 = PkgCodec.EncodeBase64(res)
	 Api.Api_SendMsg(
		CurrentQQ,
		{
				toUser = data.FromGroupId,
				sendToType = 2,
				sendMsgType = "PicMsg",
				groupid = 0,
				content = "30s自动撤回",
				picUrl = "",
				picBase64Buf = base64,
				fileMd5 = "",
				atUser = 0
		}
	)
	end
        
	if data.Content == '18妹子' then 
	math.randomseed(tonumber(tostring(os.time()):reverse():sub(1, 6)))
	local randomNum = math.random(1,1419)
	-- 图片路径
	local path = "/home/ffaxx/图片/r18/"..randomNum..".jpg"
	res = readImg(path)
	base64 = PkgCodec.EncodeBase64(res)
	 Api.Api_SendMsg(
		CurrentQQ,
		{
				toUser = data.FromGroupId,
				sendToType = 2,
				sendMsgType = "PicMsg",
				groupid = 0,
				content = "30s自动撤回",
				picUrl = "",
				picBase64Buf = base64,
				fileMd5 = "",
				atUser = 0
		}
	)
	end
	
	if data.Content == '动图' then 
	math.randomseed(tonumber(tostring(os.time()):reverse():sub(1, 6)))
	local randomNum = math.random(1,57)
	-- 图片路径
	local path = "/home/ffaxx/图片/gif/"..randomNum..".GIF"
	res = readImg(path)
	base64 = PkgCodec.EncodeBase64(res)
	 Api.Api_SendMsg(
		CurrentQQ,
		{
				toUser = data.FromGroupId,
				sendToType = 2,
				sendMsgType = "PicMsg",
				groupid = 0,
				content = "30s自动撤回",
				picUrl = "",
				picBase64Buf = base64,
				fileMd5 = "",
				atUser = 0
		}
	)
	end
	
	end
    return 1
end
function ReceiveEvents(CurrentQQ, data, extData)
    return 1
end
function readImg(filePath)
    local f, err = io.open(filePath, "rb")
    if err ~= nil then
        return nil, err
    end
    local content = f:read("*all")
    f:close()
    return content, err
end