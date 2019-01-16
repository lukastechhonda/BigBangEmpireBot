package visuals.ui.dialogs
{
   import com.playata.framework.display.Sprite;
   import com.playata.framework.display.lib.flash.FlashDisplayObjectContainer;
   import com.playata.framework.display.lib.flash.FlashLabel;
   import com.playata.framework.display.lib.flash.FlashSprite;
   import com.playata.framework.display.lib.flash.FlashTextInput;
   import com.playata.framework.display.ui.controls.ILabel;
   import com.playata.framework.display.ui.controls.ITextInput;
   import flash.display.MovieClip;
   import visuals.ui.base.SymbolUiButtonDefaultGeneric;
   import visuals.ui.elements.backgrounds.SymbolSlice9BackgroundDialogGeneric;
   import visuals.ui.elements.buttons.SymbolButtonCloseGeneric;
   
   public class SymbolDialogChangeEmailGeneric extends Sprite
   {
       
      
      private var _nativeObject:SymbolDialogChangeEmail = null;
      
      public var dialogBackground:SymbolSlice9BackgroundDialogGeneric = null;
      
      public var txtDialogTitle:ILabel = null;
      
      public var txtNewEmailCaption:ILabel = null;
      
      public var btnClose:SymbolButtonCloseGeneric = null;
      
      public var inputNewEmail:ITextInput = null;
      
      public var inputPassword:ITextInput = null;
      
      public var txtPasswordCaption:ILabel = null;
      
      public var btnChange:SymbolUiButtonDefaultGeneric = null;
      
      public function SymbolDialogChangeEmailGeneric(param1:MovieClip = null)
      {
         if(param1)
         {
            _nativeObject = param1 as SymbolDialogChangeEmail;
         }
         else
         {
            _nativeObject = new SymbolDialogChangeEmail();
         }
         super(null,FlashSprite.fromNative(_nativeObject));
         var _loc2_:FlashDisplayObjectContainer = _sprite as FlashDisplayObjectContainer;
         dialogBackground = new SymbolSlice9BackgroundDialogGeneric(_nativeObject.dialogBackground);
         txtDialogTitle = FlashLabel.fromNative(_nativeObject.txtDialogTitle);
         txtNewEmailCaption = FlashLabel.fromNative(_nativeObject.txtNewEmailCaption);
         btnClose = new SymbolButtonCloseGeneric(_nativeObject.btnClose);
         inputNewEmail = FlashTextInput.fromNative(_nativeObject.inputNewEmail);
         inputPassword = FlashTextInput.fromNative(_nativeObject.inputPassword);
         txtPasswordCaption = FlashLabel.fromNative(_nativeObject.txtPasswordCaption);
         btnChange = new SymbolUiButtonDefaultGeneric(_nativeObject.btnChange);
      }
      
      public function setNativeInstance(param1:SymbolDialogChangeEmail) : void
      {
         FlashSprite.setNativeInstance(_sprite,param1);
         _nativeObject = param1;
         syncInstances();
      }
      
      public function syncInstances() : void
      {
         if(_nativeObject.dialogBackground)
         {
            dialogBackground.setNativeInstance(_nativeObject.dialogBackground);
         }
         FlashLabel.setNativeInstance(txtDialogTitle,_nativeObject.txtDialogTitle);
         FlashLabel.setNativeInstance(txtNewEmailCaption,_nativeObject.txtNewEmailCaption);
         if(_nativeObject.btnClose)
         {
            btnClose.setNativeInstance(_nativeObject.btnClose);
         }
         FlashTextInput.setNativeInstance(inputNewEmail,_nativeObject.inputNewEmail);
         FlashTextInput.setNativeInstance(inputPassword,_nativeObject.inputPassword);
         FlashLabel.setNativeInstance(txtPasswordCaption,_nativeObject.txtPasswordCaption);
         if(_nativeObject.btnChange)
         {
            btnChange.setNativeInstance(_nativeObject.btnChange);
         }
      }
   }
}
