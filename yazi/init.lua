require("full-border"):setup()
function Header:render(area)
	self.area = area

	local right = ui.Line { self:count(), self:tabs() }
	local left = ui.Line { self:cwd(math.max(0, area.w - right:width())) }
	return {
		ui.Paragraph(area, { left }),
		ui.Paragraph(area, { right }):align(ui.Paragraph.RIGHT),
	}
end
