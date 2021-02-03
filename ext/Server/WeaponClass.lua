class('Weapon');

function Weapon:__init(name, extension, unlocks, type, fullResource)
	self.name		= name;
	self.extension	= extension;
	self.unlocks 	= unlocks;
	self.type		= type;
	self.fullResource = fullResource;

	self.damage		= 0;
	self.bulletSpeed= 0;
	self.bulletDrop = 0;
	self.fireCycle	= 0;
	self.pauseCycle	= 0;
	self.reload		= 0;
	self.delayed	= false;
end

function Weapon:setStatsValues(damage, bulletSpeed, bulletDrop, reload, fireCycle, pauseCycle, delayed)
	self.damage		= damage;
	self.bulletSpeed= bulletSpeed;
	self.bulletDrop = bulletDrop;
	self.fireCycle	= fireCycle;
	self.pauseCycle	= pauseCycle;
	self.reload		= reload;
	self.delayed	= delayed;
end

function Weapon:getResourcePath(unlock)
	local unl = ""
	if self.fullResource == nil then
		local ext = ""
		if unlock ~= nil then
			unl = "_"..unlock;
		end
		if self.extension ~= '' then
			ext = self.extension.."_"
		end

		return	"Weapons/"..ext..self.name.."/U_"..self.name..unl;
	else
		if unlock ~= nil then
			unl = "_"..unlock;
		end
		return self.fullResource..unl;
	end
end

function Weapon:getAllAttachements()
	local attachmentList = {}
	for _, attachment in pairs(self.unlocks) do
		table.insert(attachmentList, self:getResourcePath(attachment));
	end
	return attachmentList;
end

return Weapon;