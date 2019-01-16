package visuals.ui.dialogs
{
   import com.playata.framework.display.Sprite;
   import com.playata.framework.display.lib.flash.FlashDisplayObjectContainer;
   import com.playata.framework.display.lib.flash.FlashLabel;
   import com.playata.framework.display.lib.flash.FlashLabelArea;
   import com.playata.framework.display.lib.flash.FlashSprite;
   import com.playata.framework.display.ui.controls.ILabel;
   import com.playata.framework.display.ui.controls.ILabelArea;
   import flash.display.MovieClip;
   import visuals.ui.base.SymbolPlaceholderGeneric;
   import visuals.ui.elements.buttons.SymbolButtonArrowDownGeneric;
   import visuals.ui.elements.buttons.SymbolButtonArrowUpGeneric;
   import visuals.ui.elements.buttons.SymbolButtonCloseGeneric;
   import visuals.ui.elements.buttons.SymbolButtonGoalFilterGeneric;
   import visuals.ui.elements.buttons.SymbolButtonHelpGeneric;
   import visuals.ui.elements.buttons.SymbolButtonTabGeneric;
   import visuals.ui.elements.goal.SymbolGoalCompleteGeneric;
   import visuals.ui.elements.goal.SymbolGoalFilterGeneric;
   import visuals.ui.elements.goal.SymbolGoalInfoGeneric;
   import visuals.ui.elements.goal.SymbolGoalLineGeneric;
   import visuals.ui.elements.goal.SymbolGoalSheetGeneric;
   import visuals.ui.elements.goal.SymbolGoalSummaryGeneric;
   
   public class SymbolDialogGoalsGeneric extends Sprite
   {
       
      
      private var _nativeObject:SymbolDialogGoals = null;
      
      public var txtTitle:ILabelArea = null;
      
      public var txtCompleted:ILabel = null;
      
      public var txtPending:ILabel = null;
      
      public var sheet1:SymbolGoalSheetGeneric = null;
      
      public var sheet2:SymbolGoalSheetGeneric = null;
      
      public var sheet3:SymbolGoalSheetGeneric = null;
      
      public var sheet4:SymbolGoalSheetGeneric = null;
      
      public var sheet5:SymbolGoalSheetGeneric = null;
      
      public var sheet6:SymbolGoalSheetGeneric = null;
      
      public var sheetSummary:SymbolGoalSheetGeneric = null;
      
      public var sheetLayer:SymbolPlaceholderGeneric = null;
      
      public var line1:SymbolGoalLineGeneric = null;
      
      public var line2:SymbolGoalLineGeneric = null;
      
      public var line3:SymbolGoalLineGeneric = null;
      
      public var line4:SymbolGoalLineGeneric = null;
      
      public var btnTabFinished:SymbolButtonTabGeneric = null;
      
      public var btnTabOpen:SymbolButtonTabGeneric = null;
      
      public var btnUp:SymbolButtonArrowUpGeneric = null;
      
      public var btnDown:SymbolButtonArrowDownGeneric = null;
      
      public var txtNoGoals:ILabelArea = null;
      
      public var btnFilter:SymbolButtonGoalFilterGeneric = null;
      
      public var goalFilter:SymbolGoalFilterGeneric = null;
      
      public var goalInfo:SymbolGoalInfoGeneric = null;
      
      public var goalComplete:SymbolGoalCompleteGeneric = null;
      
      public var goalSummary:SymbolGoalSummaryGeneric = null;
      
      public var btnHelp:SymbolButtonHelpGeneric = null;
      
      public var btnClose:SymbolButtonCloseGeneric = null;
      
      public function SymbolDialogGoalsGeneric(param1:MovieClip = null)
      {
         if(param1)
         {
            _nativeObject = param1 as SymbolDialogGoals;
         }
         else
         {
            _nativeObject = new SymbolDialogGoals();
         }
         super(null,FlashSprite.fromNative(_nativeObject));
         var _loc2_:FlashDisplayObjectContainer = _sprite as FlashDisplayObjectContainer;
         txtTitle = FlashLabelArea.fromNative(_nativeObject.txtTitle);
         txtCompleted = FlashLabel.fromNative(_nativeObject.txtCompleted);
         txtPending = FlashLabel.fromNative(_nativeObject.txtPending);
         sheet1 = new SymbolGoalSheetGeneric(_nativeObject.sheet1);
         sheet2 = new SymbolGoalSheetGeneric(_nativeObject.sheet2);
         sheet3 = new SymbolGoalSheetGeneric(_nativeObject.sheet3);
         sheet4 = new SymbolGoalSheetGeneric(_nativeObject.sheet4);
         sheet5 = new SymbolGoalSheetGeneric(_nativeObject.sheet5);
         sheet6 = new SymbolGoalSheetGeneric(_nativeObject.sheet6);
         sheetSummary = new SymbolGoalSheetGeneric(_nativeObject.sheetSummary);
         sheetLayer = new SymbolPlaceholderGeneric(_nativeObject.sheetLayer);
         line1 = new SymbolGoalLineGeneric(_nativeObject.line1);
         line2 = new SymbolGoalLineGeneric(_nativeObject.line2);
         line3 = new SymbolGoalLineGeneric(_nativeObject.line3);
         line4 = new SymbolGoalLineGeneric(_nativeObject.line4);
         btnTabFinished = new SymbolButtonTabGeneric(_nativeObject.btnTabFinished);
         btnTabOpen = new SymbolButtonTabGeneric(_nativeObject.btnTabOpen);
         btnUp = new SymbolButtonArrowUpGeneric(_nativeObject.btnUp);
         btnDown = new SymbolButtonArrowDownGeneric(_nativeObject.btnDown);
         txtNoGoals = FlashLabelArea.fromNative(_nativeObject.txtNoGoals);
         btnFilter = new SymbolButtonGoalFilterGeneric(_nativeObject.btnFilter);
         goalFilter = new SymbolGoalFilterGeneric(_nativeObject.goalFilter);
         goalInfo = new SymbolGoalInfoGeneric(_nativeObject.goalInfo);
         goalComplete = new SymbolGoalCompleteGeneric(_nativeObject.goalComplete);
         goalSummary = new SymbolGoalSummaryGeneric(_nativeObject.goalSummary);
         btnHelp = new SymbolButtonHelpGeneric(_nativeObject.btnHelp);
         btnClose = new SymbolButtonCloseGeneric(_nativeObject.btnClose);
      }
      
      public function setNativeInstance(param1:SymbolDialogGoals) : void
      {
         FlashSprite.setNativeInstance(_sprite,param1);
         _nativeObject = param1;
         syncInstances();
      }
      
      public function syncInstances() : void
      {
         FlashLabelArea.setNativeInstance(txtTitle,_nativeObject.txtTitle);
         FlashLabel.setNativeInstance(txtCompleted,_nativeObject.txtCompleted);
         FlashLabel.setNativeInstance(txtPending,_nativeObject.txtPending);
         if(_nativeObject.sheet1)
         {
            sheet1.setNativeInstance(_nativeObject.sheet1);
         }
         if(_nativeObject.sheet2)
         {
            sheet2.setNativeInstance(_nativeObject.sheet2);
         }
         if(_nativeObject.sheet3)
         {
            sheet3.setNativeInstance(_nativeObject.sheet3);
         }
         if(_nativeObject.sheet4)
         {
            sheet4.setNativeInstance(_nativeObject.sheet4);
         }
         if(_nativeObject.sheet5)
         {
            sheet5.setNativeInstance(_nativeObject.sheet5);
         }
         if(_nativeObject.sheet6)
         {
            sheet6.setNativeInstance(_nativeObject.sheet6);
         }
         if(_nativeObject.sheetSummary)
         {
            sheetSummary.setNativeInstance(_nativeObject.sheetSummary);
         }
         if(_nativeObject.sheetLayer)
         {
            sheetLayer.setNativeInstance(_nativeObject.sheetLayer);
         }
         if(_nativeObject.line1)
         {
            line1.setNativeInstance(_nativeObject.line1);
         }
         if(_nativeObject.line2)
         {
            line2.setNativeInstance(_nativeObject.line2);
         }
         if(_nativeObject.line3)
         {
            line3.setNativeInstance(_nativeObject.line3);
         }
         if(_nativeObject.line4)
         {
            line4.setNativeInstance(_nativeObject.line4);
         }
         if(_nativeObject.btnTabFinished)
         {
            btnTabFinished.setNativeInstance(_nativeObject.btnTabFinished);
         }
         if(_nativeObject.btnTabOpen)
         {
            btnTabOpen.setNativeInstance(_nativeObject.btnTabOpen);
         }
         if(_nativeObject.btnUp)
         {
            btnUp.setNativeInstance(_nativeObject.btnUp);
         }
         if(_nativeObject.btnDown)
         {
            btnDown.setNativeInstance(_nativeObject.btnDown);
         }
         FlashLabelArea.setNativeInstance(txtNoGoals,_nativeObject.txtNoGoals);
         if(_nativeObject.btnFilter)
         {
            btnFilter.setNativeInstance(_nativeObject.btnFilter);
         }
         if(_nativeObject.goalFilter)
         {
            goalFilter.setNativeInstance(_nativeObject.goalFilter);
         }
         if(_nativeObject.goalInfo)
         {
            goalInfo.setNativeInstance(_nativeObject.goalInfo);
         }
         if(_nativeObject.goalComplete)
         {
            goalComplete.setNativeInstance(_nativeObject.goalComplete);
         }
         if(_nativeObject.goalSummary)
         {
            goalSummary.setNativeInstance(_nativeObject.goalSummary);
         }
         if(_nativeObject.btnHelp)
         {
            btnHelp.setNativeInstance(_nativeObject.btnHelp);
         }
         if(_nativeObject.btnClose)
         {
            btnClose.setNativeInstance(_nativeObject.btnClose);
         }
      }
   }
}
