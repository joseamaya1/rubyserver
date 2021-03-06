local slotBits = {
	[CONST_SLOT_HEAD] = SLOTP_HEAD,
	[CONST_SLOT_NECKLACE] = SLOTP_NECKLACE,
	[CONST_SLOT_BACKPACK] = SLOTP_BACKPACK,
	[CONST_SLOT_ARMOR] = SLOTP_ARMOR,
	[CONST_SLOT_RIGHT] = SLOTP_RIGHT,
	[CONST_SLOT_LEFT] = SLOTP_LEFT,
	[CONST_SLOT_PORTRAIT] = SLOTP_PORTRAIT,
	[CONST_SLOT_POKEBALL] = SLOTP_POKEBALL,
	[CONST_SLOT_RING] = SLOTP_RING,
	[CONST_SLOT_SUPPORT] = SLOTP_SUPPORT
}

function ItemType.usesSlot(self, slot)
	return bit.band(self:getSlotPosition(), slotBits[slot] or 0) ~= 0
end
