# -*- coding: utf-8 -*-

Plugin.create(:mikutter_mother) do
  command(
          :mikutter_mother,
          name: '母からの手紙',
          condition: lambda{ |opt| true },
          visible: true,
          role: :timeline
          ) do |opt|
    to_name = opt.messages[0].user.idname
    msg = ".@"+to_name+" の母でございます。この度は息子が大変ご迷惑をおかけし、深くお詫び申し上げます。息子は部屋に引きこもり私も大変心配しておりましたが、ツイッターを知って以来、少し明るくなりました。どうぞ皆様、息子を暖かく迎えてやってくださいまし。本当は良い子なんです。"
    Service.primary.post(:message => msg,
                         :replyto => opt.messages[0])
  end
end

