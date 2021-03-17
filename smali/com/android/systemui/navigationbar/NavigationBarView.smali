.class public Lcom/android/systemui/navigationbar/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;,
        Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;
    }
.end annotation


# instance fields
.field private mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field private mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field private final mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

.field private final mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

.field private mCurrentRotation:I

.field mCurrentView:Landroid/view/View;

.field private mDarkIconColor:I

.field private final mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

.field private mDeadZoneConsuming:Z

.field mDisabledFlags:I

.field private mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field private final mDockedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDockedStackExists:Z

.field private mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

.field private mFloatingRotationButton:Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

.field private mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field private mHorizontal:Landroid/view/View;

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mImeVisible:Z

.field private mInCarMode:Z

.field private mIsVertical:Z

.field private mLayoutTransitionsEnabled:Z

.field private mLightContext:Landroid/content/Context;

.field private mLightIconColor:I

.field mLongClickableAccessibilityButton:Z

.field private mNavBarMode:I

.field private final mNavColorSampleMargin:I

.field private final mNavbarOverlayVisibilityChangeCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mNavigationIconHints:I

.field private mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

.field private final mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;

.field private mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private final mPipListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field private mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

.field private final mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

.field private mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

.field private final mRotationButtonListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSamplingBounds:Landroid/graphics/Rect;

.field private mScreenOn:Z

.field private mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

.field private final mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

.field private mTmpBounds:Landroid/graphics/Rect;

.field private mTmpLastConfiguration:Landroid/content/res/Configuration;

.field private final mTmpPosition:[I

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

.field private mUseCarModeUi:Z

.field private mVertical:Landroid/view/View;

.field private mWakeAndUnlocking:Z


# direct methods
.method public static synthetic $r8$lambda$-vdqrRtgAja6nkIm80Txd5_I-dg(Lcom/android/systemui/navigationbar/NavigationBarView;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5EsWq84r2LNzAUljZ_dWehKGoOI(Lcom/android/systemui/navigationbar/NavigationBarView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->lambda$new$6(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IAmfsDLMt7c8RxfAg6mCVk35b0I(Lcom/android/systemui/navigationbar/NavigationBarView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LEO1_clnN5kLO5A4tawr1wjbSy8(Lcom/android/systemui/navigationbar/NavigationBarView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->lambda$new$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aEwa7Yfyr3BMwAiFEqI-EtxD-BM(Lcom/android/systemui/navigationbar/NavigationBarView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->lambda$new$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zfOnbvXLFhVssQb0tn8WBj1isFA(Lcom/android/systemui/navigationbar/NavigationBarView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->lambda$new$5(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zrVj1CRTBgJdvSq-Y_nDNDucAEQ(Lcom/android/systemui/navigationbar/NavigationBarView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->lambda$new$4(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 299
    invoke-direct/range {p0 .. p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 116
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v3, -0x1

    .line 122
    iput v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    const/4 v3, 0x0

    .line 125
    iput v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 126
    iput v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 129
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpRegion:Landroid/graphics/Region;

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 130
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpPosition:[I

    .line 131
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpBounds:Landroid/graphics/Rect;

    .line 143
    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    .line 149
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/NavigationBarView$1;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    const/4 v1, 0x1

    .line 152
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 154
    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mUseCarModeUi:Z

    .line 155
    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    .line 158
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    .line 160
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 177
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    .line 234
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBarView$1;

    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/NavigationBarView$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 242
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBarView$2;

    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/NavigationBarView$2;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 269
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 282
    new-instance v10, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda5;

    invoke-direct {v10, v0}, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v10, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonListener:Ljava/util/function/Consumer;

    .line 291
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavbarOverlayVisibilityChangeCallback:Ljava/util/function/Consumer;

    .line 1345
    new-instance v5, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    .line 1350
    new-instance v5, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPipListener:Ljava/util/function/Consumer;

    .line 301
    new-instance v5, Landroid/view/ContextThemeWrapper;

    sget v6, Lcom/android/systemui/R$attr;->darkIconTheme:I

    .line 302
    invoke-static {v2, v6}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v5, v2, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 303
    new-instance v6, Landroid/view/ContextThemeWrapper;

    sget v7, Lcom/android/systemui/R$attr;->lightIconTheme:I

    .line 304
    invoke-static {v2, v7}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v6, v2, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    .line 305
    sget v7, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    .line 306
    invoke-static {v5, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    .line 307
    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 308
    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 309
    const-class v3, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v3, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 310
    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    .line 312
    const-class v5, Lcom/android/systemui/model/SysUiState;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/android/systemui/model/SysUiState;

    iput-object v11, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 313
    const-class v5, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/systemui/shared/plugins/PluginManager;

    iput-object v12, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 315
    new-instance v13, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    sget v14, Lcom/android/systemui/R$id;->menu_container:I

    invoke-direct {v13, v14}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;-><init>(I)V

    iput-object v13, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 316
    new-instance v15, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    sget v9, Lcom/android/systemui/R$id;->ime_switcher:I

    iget-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$drawable;->ic_ime_switcher_default:I

    invoke-direct {v15, v9, v5, v6}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;I)V

    .line 318
    new-instance v8, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    sget v7, Lcom/android/systemui/R$id;->rotate_suggestion:I

    iget-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_0:I

    invoke-direct {v8, v7, v5, v6}, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;-><init>(ILandroid/content/Context;I)V

    .line 321
    new-instance v6, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    sget v5, Lcom/android/systemui/R$id;->accessibility_button:I

    move/from16 p2, v7

    iget-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    move/from16 v16, v9

    sget v9, Lcom/android/systemui/R$drawable;->ic_sysbar_accessibility_button:I

    invoke-direct {v6, v5, v7, v9}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;I)V

    .line 324
    invoke-virtual {v13, v15}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    if-nez v3, :cond_0

    .line 326
    invoke-virtual {v13, v8}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 328
    :cond_0
    invoke-virtual {v13, v6}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 330
    const-class v7, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v9, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 331
    new-instance v7, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

    invoke-direct {v7, v2}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

    .line 332
    new-instance v7, Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {v7, v2, v9}, Lcom/android/systemui/recents/RecentsOnboarding;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 333
    new-instance v7, Lcom/android/systemui/navigationbar/RotationButtonController;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    move-object/from16 v17, v8

    iget v8, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    move-object/from16 v18, v9

    iget v9, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    if-eqz v3, :cond_1

    .line 335
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

    move-object/from16 v19, v12

    goto :goto_0

    :cond_1
    move-object/from16 v19, v12

    move-object/from16 v3, v17

    :goto_0
    move v12, v5

    move-object v5, v7

    move-object/from16 v20, v11

    move-object v11, v6

    move-object v6, v2

    move/from16 v2, p2

    move-object/from16 p2, v13

    move-object v13, v7

    move v7, v8

    move/from16 v21, v14

    move-object/from16 v14, v17

    move v8, v9

    move/from16 v17, v2

    move/from16 v2, v16

    move-object/from16 v16, v18

    move-object v9, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/navigationbar/RotationButtonController;-><init>(Landroid/content/Context;IILcom/android/systemui/navigationbar/RotationButton;Ljava/util/function/Consumer;)V

    iput-object v13, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    .line 338
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    iget v5, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    iget v6, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->init(Ljava/util/function/Consumer;II)V

    .line 341
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 342
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 343
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 345
    new-instance v3, Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget-object v4, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    .line 346
    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    const-class v4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/statusbar/CommandQueue;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 348
    sget v3, Lcom/android/systemui/R$id;->back:I

    new-instance v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    sget v3, Lcom/android/systemui/R$id;->home:I

    new-instance v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    sget v3, Lcom/android/systemui/R$id;->home_handle:I

    new-instance v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    sget v3, Lcom/android/systemui/R$id;->recent_apps:I

    new-instance v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    invoke-virtual {v1, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    invoke-virtual {v1, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v2, v17

    .line 354
    invoke-virtual {v1, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v2, p2

    move/from16 v3, v21

    .line 355
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    new-instance v1, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/buttons/DeadZone;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->navigation_handle_sample_horizontal_margin:I

    .line 359
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavColorSampleMargin:I

    .line 360
    new-instance v7, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    new-instance v6, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    move-object/from16 v5, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/lang/Runnable;)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 362
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBarView$3;

    invoke-direct {v2, v0}, Lcom/android/systemui/navigationbar/NavigationBarView$3;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$SamplingCallback;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/NavigationBarView;)Landroid/content/Context;
    .locals 0

    .line 102
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/NavigationBarView;)Landroid/graphics/Rect;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/navigationbar/NavigationBarView;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSamplingRect()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/navigationbar/NavigationBarView;)Landroid/graphics/Rect;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/navigationbar/NavigationBarView;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    return p0
.end method

.method private chooseNavigationIconDrawableRes(II)I
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result p0

    if-eqz p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V
    .locals 2

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "null"

    .line 1332
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1334
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1334
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private getButtonLocations(ZZ)Landroid/graphics/Region;
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 979
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Z)V

    .line 980
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Z)V

    .line 981
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Z)V

    .line 982
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Z)V

    .line 983
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Z)V

    if-eqz p1, :cond_0

    .line 984
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 985
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->getCurrentView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Landroid/view/View;Z)V

    goto :goto_0

    .line 987
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Z)V

    .line 989
    :goto_0
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    .line 990
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    .line 991
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->getCurrentView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Landroid/view/View;Z)V

    .line 994
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method private getContextDisplay()Landroid/view/Display;
    .locals 0

    .line 759
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 6

    .line 609
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method private getNavBarHeight()I
    .locals 1

    .line 1125
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10501c3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 1128
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10501c1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1181
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "(unknown)"

    return-object p0

    :cond_0
    const-string p0, "(null)"

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 278
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-direct {p0, v1, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getButtonLocations(ZZ)Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 283
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Boolean;)V
    .locals 0

    .line 292
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Boolean;)V
    .locals 0

    .line 1346
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedStackExists:Z

    .line 1347
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRecentsIcon()V

    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/Boolean;)V
    .locals 1

    .line 1345
    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/graphics/Rect;)V
    .locals 0

    .line 1351
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setPipStashExclusionBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/graphics/Rect;)V
    .locals 1

    .line 1350
    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 0

    .line 1133
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;

    if-eqz p0, :cond_0

    .line 1134
    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    :cond_0
    return-void
.end method

.method private onImeVisibilityChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 663
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeVisible:Z

    .line 664
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->getRotationButton()Lcom/android/systemui/navigationbar/RotationButton;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeVisible:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/navigationbar/RotationButton;->setCanShowRotationButton(Z)V

    .line 665
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->setCanShow(Z)V

    return-void
.end method

.method private orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 6

    .line 572
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 574
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const/16 v3, 0x5a

    goto :goto_2

    :cond_2
    const/16 v3, -0x5a

    :goto_2
    int-to-float v3, v3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 576
    :goto_3
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->getRotation()F

    move-result v5

    cmpl-float v5, v5, v3

    if-nez v5, :cond_4

    return-void

    .line 580
    :cond_4
    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v5}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 581
    invoke-virtual {p1, v3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setRotation(F)V

    return-void

    .line 587
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v5}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-nez v5, :cond_6

    if-eqz v0, :cond_6

    .line 588
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->navbar_back_button_ime_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    neg-float v4, p0

    :cond_6
    const/4 p0, 0x2

    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    .line 590
    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    new-array v5, v1, [F

    aput v3, v5, v2

    .line 591
    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v2

    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v3, v1, [F

    aput v4, v3, v2

    .line 592
    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v1

    .line 590
    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 593
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 594
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 595
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 0

    .line 599
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setRotation(F)V

    return-void
.end method

.method private reloadNavIcons()V
    .locals 1

    .line 530
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private resetViews()V
    .locals 2

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setSlippery(Z)V
    .locals 1

    const/high16 v0, 0x20000000

    .line 875
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setWindowFlag(IZ)V

    return-void
.end method

.method private setUpSwipeUpOnboarding(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1240
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onConnectedToLauncher()V

    goto :goto_0

    .line 1242
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    :goto_0
    return-void
.end method

.method private setUseFadingAnimations(Z)V
    .locals 3

    .line 793
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 794
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 796
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 798
    sget p1, Lcom/android/systemui/R$style;->Animation_NavigationBarFadeIn:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 800
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 804
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 805
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    nop

    :cond_2
    return-void
.end method

.method private setWindowFlag(IZ)V
    .locals 4

    .line 879
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 883
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_4

    .line 884
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v3, v2, p1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ne p2, v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    or-int/2addr p1, v2

    .line 888
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_3
    not-int p1, p1

    and-int/2addr p1, v2

    .line 890
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 892
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 893
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 448
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    invoke-virtual {v2, p1}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 460
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 461
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    goto :goto_1

    .line 454
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setSlippery(Z)V

    .line 455
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    :goto_1
    return p1
.end method

.method private updateButtonLocation(Landroid/view/View;Z)V
    .locals 5

    if-eqz p2, :cond_0

    .line 1007
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1009
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpPosition:[I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1010
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpPosition:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v0, v0, v1

    .line 1011
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpPosition:[I

    aget v1, v1, v3

    .line 1012
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    .line 1010
    invoke-virtual {p2, v2, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1014
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpBounds:Landroid/graphics/Rect;

    sget-object p2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Z)V
    .locals 1

    .line 998
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1002
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCarMode()Z
    .locals 3

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1160
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1163
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    if-eq v0, v2, :cond_1

    .line 1164
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    .line 1170
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mUseCarModeUi:Z

    :cond_1
    return v1
.end method

.method private updateCurrentView()V
    .locals 4

    .line 1029
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->resetViews()V

    .line 1030
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 1031
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setVertical(Z)V

    .line 1033
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 1034
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 1036
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method private updateIcons(Landroid/content/res/Configuration;)V
    .locals 5

    .line 534
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 535
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    .line 536
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 539
    :cond_3
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_docked:I

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 540
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    .line 543
    :cond_5
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_recent:I

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 544
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    iget v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    invoke-virtual {p1, v2, v4}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->updateIcons(II)V

    :cond_6
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    .line 547
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :cond_8
    return-void
.end method

.method private updateLayoutTransitionsEnabled()V
    .locals 5

    .line 774
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mWakeAndUnlocking:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 775
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 776
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 779
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 780
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 781
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 782
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_1

    .line 784
    :cond_1
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 785
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 786
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 787
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateOrientationViews()V
    .locals 1

    .line 1018
    sget v0, Lcom/android/systemui/R$id;->horizontal:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 1019
    sget v0, Lcom/android/systemui/R$id;->vertical:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    .line 1021
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentView()V

    return-void
.end method

.method private updateRecentsIcon()V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setRotation(F)V

    .line 1046
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 1047
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->reapplyDarkIntensity()V

    return-void
.end method

.method private updateSamplingRect()V
    .locals 8

    .line 938
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 940
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 944
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 945
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 946
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 947
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v1, v4

    iget v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavColorSampleMargin:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 948
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getNavBarHeight()I

    move-result v7

    sub-int/2addr v6, v7

    aget v1, v1, v4

    .line 949
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavColorSampleMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v5, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 951
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "VISIBLE"

    return-object p0

    :cond_0
    const-string p0, "GONE"

    return-object p0

    :cond_1
    const-string p0, "INVISIBLE"

    return-object p0
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 0

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->abortCurrentGesture()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1247
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1248
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1249
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const-string v2, "NavigationBarView:"

    .line 1251
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 1252
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1256
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    const/4 v6, 0x1

    if-gt v2, v5, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v6

    .line 1257
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      window: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v0, " OFFSCREEN!"

    goto :goto_2

    :cond_2
    const-string v0, ""

    .line 1260
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1263
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1264
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1265
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    .line 1266
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v1

    const-string v1, "      mCurrentView: id=%s (%dx%d) %s %f"

    .line 1262
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/Object;

    .line 1268
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 1269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1270
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v1, :cond_3

    const-string v1, "true"

    goto :goto_3

    :cond_3
    const-string v1, "false"

    :goto_3
    aput-object v1, v0, v6

    .line 1271
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "      disabled=0x%08x vertical=%s darkIntensity=%.2f"

    .line 1268
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mOrientedHandleSamplingRegion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    const-string v1, "back"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1278
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    const-string v1, "home"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1279
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    const-string v1, "rcnt"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1280
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    move-result-object v0

    const-string v1, "rota"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1281
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    const-string v1, "a11y"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1282
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    const-string v1, "ime"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1284
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    if-eqz v0, :cond_4

    .line 1285
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->dump(Ljava/io/PrintWriter;)V

    .line 1287
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->dump(Ljava/io/PrintWriter;)V

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->dump(Ljava/io/PrintWriter;)V

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->dump(Ljava/io/PrintWriter;)V

    .line 1290
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 502
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->accessibility_button:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 490
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->back:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getBackDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackDrawableRes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    .line 553
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    return-object v0
.end method

.method public getBackDrawableRes()I
    .locals 2

    .line 558
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_back:I

    sget v1, Lcom/android/systemui/R$drawable;->ic_sysbar_back_quick_step:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->chooseNavigationIconDrawableRes(II)I

    move-result p0

    return p0
.end method

.method public getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    return-object p0
.end method

.method public getButtonDispatchers()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    .line 514
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object p0
.end method

.method public getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 494
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->home:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getHomeDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_home_quick_step:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_home:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    .line 567
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    return-object v0
.end method

.method public getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 510
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->home_handle:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 498
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->ime_switcher:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    return-object p0
.end method

.method public getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 486
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->recent_apps:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getRotateSuggestionButton()Lcom/android/systemui/navigationbar/buttons/RotationContextButton;
    .locals 1

    .line 506
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->rotate_suggestion:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    return-object p0
.end method

.method public getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    return-object p0
.end method

.method hideRecentsOnboarding()V
    .locals 1

    .line 917
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    return-void
.end method

.method public isOverviewEnabled()Z
    .locals 1

    .line 522
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickStepSwipeUpEnabled()Z
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRecentsButtonDisabled()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 754
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mUseCarModeUi:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRecentsButtonVisible()Z
    .locals 0

    .line 518
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method needsReorient(I)Z
    .locals 0

    .line 1025
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyActiveTouchRegions()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, 0x1

    .line 973
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getButtonLocations(ZZ)Landroid/graphics/Region;

    move-result-object p0

    .line 972
    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1295
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 1296
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    .line 1297
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1298
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1297
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1301
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setInsets(II)V

    .line 1305
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 1306
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1307
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1308
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 1310
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 1311
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 1314
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getAssistHandlerViewController()Lcom/android/systemui/assist/AssistHandleViewController;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    .line 1316
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistHandleViewController;->setBottomOffset(I)V

    .line 1318
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1203
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1206
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavBarAttached()V

    .line 1207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 1208
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    .line 1209
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->onNavigationModeChanged(I)V

    .line 1210
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1211
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    if-eqz v0, :cond_0

    .line 1212
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->registerListeners()V

    .line 1214
    :cond_0
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->registerListeners()V

    .line 1216
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1217
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method onBarTransition(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 438
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->stop()V

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1140
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1141
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1143
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCarMode()Z

    move-result p1

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 1145
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRecentsIcon()V

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-nez p1, :cond_0

    .line 1147
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_0

    .line 1148
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1150
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1222
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1223
    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    const/4 v0, 0x0

    .line 1224
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1225
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    if-eqz v0, :cond_1

    .line 1229
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->unregisterListeners()V

    .line 1231
    :cond_1
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->unregisterListeners()V

    .line 1233
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavBarDetached()V

    .line 1234
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->onDraw(Landroid/graphics/Canvas;)V

    .line 934
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 922
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 923
    sget v0, Lcom/android/systemui/R$id;->navigation_inflater:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 924
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 926
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateOrientationViews()V

    .line 928
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reloadNavIcons()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 411
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeVisible:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x130

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 413
    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(III)V

    .line 416
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 962
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 964
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    .line 965
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/RecentsOnboarding;->setNavBarHeight(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1092
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1093
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    if-le v1, v0, :cond_0

    .line 1097
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 1098
    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1099
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eq v3, v4, :cond_1

    .line 1100
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 1105
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    .line 1106
    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 1109
    :cond_1
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1111
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v3, :cond_2

    .line 1112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10501c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 1114
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10501c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1116
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1118
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    new-instance v6, Landroid/graphics/Rect;

    sub-int/2addr v4, v3

    invoke-direct {v6, v2, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    .line 1121
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 1

    .line 898
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 899
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->onNavigationModeChanged(I)V

    .line 900
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavigationModeChanged(I)V

    .line 901
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->onNavigationModeChanged(I)V

    .line 903
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 904
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 906
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->stop()V

    :goto_0
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 1

    .line 615
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    if-eqz p1, :cond_0

    .line 617
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {p1, v0}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 618
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 621
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStatusBarPanelStateChanged()V
    .locals 0

    .line 810
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 811
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updatePanelSystemUiStateFlags()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 421
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    .line 422
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method onTransientStateChanged(Z)V
    .locals 1

    .line 426
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavBarTransientStateChanged(Z)V

    .line 430
    const-class p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->setButtonState(ZZ)V

    return-void
.end method

.method registerDockedListener(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    .line 1322
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->registerInSplitScreenListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method registerPipExclusionBoundsChangeListener(Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    .line 1326
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPipListener:Ljava/util/function/Consumer;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/Pip;->setPipExclusionBoundsChangeListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public reorient()V
    .locals 2

    .line 1068
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentView()V

    .line 1070
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarFrame;->setDeadZone(Lcom/android/systemui/navigationbar/buttons/DeadZone;)V

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->onConfigurationChanged(I)V

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->init()V

    .line 1082
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->resolveLayoutDirection()Z

    .line 1085
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 1087
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVertical(Z)V

    return-void
.end method

.method public setAccessibilityButtonState(ZZ)V
    .locals 1

    .line 911
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 912
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    .line 913
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    sget p2, Lcom/android/systemui/R$id;->accessibility_button:I

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)I

    return-void
.end method

.method public setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    return-void
.end method

.method public setBehavior(I)V
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->onBehaviorChanged(I)V

    return-void
.end method

.method public setComponents(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updatePanelSystemUiStateFlags()V

    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1

    .line 669
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    if-ne v0, p1, :cond_0

    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    .line 672
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    if-nez v0, :cond_1

    .line 675
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 676
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reloadNavIcons()V

    .line 679
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 680
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 681
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 682
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags()V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 636
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reloadNavIcons()V

    .line 638
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0

    .line 763
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 764
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 4

    .line 642
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    if-eq v1, v2, :cond_3

    .line 647
    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onImeVisibilityChanged(Z)V

    .line 655
    :cond_3
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 656
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;

    .line 406
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyVerticalChangedListener(Z)V

    return-void
.end method

.method setOrientedHandleSamplingRegion(Landroid/graphics/Rect;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    .line 957
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0

    .line 768
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setUseFadingAnimations(Z)V

    .line 769
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mWakeAndUnlocking:Z

    .line 770
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public setWindowVisible(Z)V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->setWindowVisible(Z)V

    .line 627
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->onNavigationBarWindowVisibilityChange(Z)V

    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1052
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showPinningStartToast()V

    goto :goto_0

    .line 1054
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showPinningExitToast()V

    :goto_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 3

    .line 1059
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1060
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result p0

    .line 1059
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showEscapeToast(ZZ)V

    return-void
.end method

.method public updateDisabledSystemUiStateFlags()V
    .locals 7

    .line 815
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 817
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 818
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v2

    const/4 v3, 0x1

    .line 817
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v2, v4

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/16 v5, 0x80

    .line 819
    invoke-virtual {v1, v5, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v1

    const/16 v2, 0x100

    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 821
    :goto_1
    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v1

    const/16 v2, 0x400

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v5, 0x2000000

    and-int/2addr p0, v5

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 823
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    .line 825
    invoke-virtual {p0, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 8

    .line 689
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 691
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 692
    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 693
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 694
    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mUseCarModeUi:Z

    if-nez v5, :cond_1

    .line 695
    invoke-direct {p0, v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 698
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 700
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRecentsIcon()V

    .line 703
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    sget v4, Lcom/android/systemui/R$id;->ime_switcher:I

    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)I

    .line 706
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 708
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    const/high16 v4, 0x200000

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    .line 712
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonDisabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 715
    iget v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    if-nez v0, :cond_7

    .line 718
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v6, 0x400000

    and-int/2addr v0, v6

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v2

    .line 724
    :goto_5
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v6

    .line 725
    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v7}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 727
    iget v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v7}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result v7

    xor-int/2addr v1, v7

    or-int/2addr v5, v1

    if-eqz v6, :cond_9

    .line 728
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-nez v1, :cond_9

    move v0, v2

    move v3, v0

    goto :goto_6

    :cond_8
    if-eqz v6, :cond_9

    move v0, v2

    move v5, v0

    .line 735
    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    sget v6, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    .line 737
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 739
    invoke-virtual {v1}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 740
    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 745
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    const/4 v6, 0x4

    if-eqz v0, :cond_b

    move v0, v6

    goto :goto_7

    :cond_b
    move v0, v2

    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 746
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v3, :cond_c

    move v1, v6

    goto :goto_8

    :cond_c
    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 747
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v5, :cond_d

    move v1, v6

    goto :goto_9

    :cond_d
    move v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 748
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v4, :cond_e

    move v2, v6

    :cond_e
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 749
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    return-void
.end method

.method public updatePanelSystemUiStateFlags()V
    .locals 4

    .line 829
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 833
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v1, :cond_1

    .line 838
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    const/4 v3, 0x4

    .line 839
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 838
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v1

    const/16 v2, 0x800

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 841
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result p0

    .line 840
    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    .line 842
    invoke-virtual {p0, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    :cond_1
    return-void
.end method

.method public updateSlippery()V
    .locals 1

    .line 870
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 870
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setSlippery(Z)V

    return-void
.end method

.method public updateStates()V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 849
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    if-eqz v1, :cond_0

    .line 851
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 855
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reloadNavIcons()V

    .line 856
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 857
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 858
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 859
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 860
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 859
    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
