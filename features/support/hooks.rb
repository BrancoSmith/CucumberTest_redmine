After do |scenario|
    # tira um print por favor
    time = Time.new
    Dir.mkdir('shots') unless Dir.exist?('shots')
    sufix = ('fail' if scenario.failed?) || 'sucess'
    name = scenario.name.tr(' ','_').downcase
    shot = "logs/shots/#{sufix}_#{name}_#{time.day}-#{time.month}-#{time.year}.png"
    page.save_screenshot(shot)
    embed(shot, 'image/png', 'Clique aqui para ver o print da tela')
end