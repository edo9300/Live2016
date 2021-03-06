--Thunder Knight
function c511001912.initial_effect(c)
	--atk
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_SINGLE)
	e2:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e2:SetRange(LOCATION_ONFIELD)
	e2:SetCode(EFFECT_UPDATE_ATTACK)
	e2:SetValue(c511001912.atkval)
	c:RegisterEffect(e2)
end
function c511001912.filter(c)
	return c:IsFaceup() and c:IsRace(RACE_THUNDER)
end
function c511001912.atkval(e,c)
	return Duel.GetMatchingGroupCount(c511001912.filter,c:GetControler(),LOCATION_MZONE,LOCATION_MZONE,nil)*400
end
