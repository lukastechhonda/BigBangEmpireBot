package com.playata.application.ui.elements.avatar
{
   import com.playata.application.data.character.AppearanceSettings;
   import visuals.ui.elements.payment.SymbolAvatarPreviewGeneric;
   
   public class UiAvatarPreview
   {
       
      
      private var _content:SymbolAvatarPreviewGeneric;
      
      private var _avatar:UiAvatar;
      
      public function UiAvatarPreview(param1:SymbolAvatarPreviewGeneric)
      {
         super();
         _content = param1;
         _content.visible = false;
         _avatar = new UiAvatar(_content.avatar,true);
      }
      
      public function dispose() : void
      {
         _content.killTweens();
         _avatar.dispose();
         _avatar = null;
      }
      
      public function show(param1:AppearanceSettings) : void
      {
         _content.killTweens();
         _content.tweenTo(0.1,{"visible":true});
         _avatar.update(param1,true);
      }
      
      public function hide() : void
      {
         _content.killTweens();
         if(_content.alpha != 0)
         {
            _content.tweenTo(0.1,{
               "visible":false,
               "delay":0.1
            });
         }
         _avatar.stopAnimation();
      }
   }
}
