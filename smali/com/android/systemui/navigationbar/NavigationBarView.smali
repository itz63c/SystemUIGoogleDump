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

.field private mButtonFullTouchableRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
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

.field private mImeVisible:Z

.field private mInCarMode:Z

.field private mIsVertical:Z

.field private mLayoutTransitionsEnabled:Z

.field private mLightContext:Landroid/content/Context;

.field private mLightIconColor:I

.field mLongClickableAccessibilityButton:Z

.field private mNavBarMode:I

.field private mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

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

.field private mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

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
    .locals 11

    .line 295
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 115
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 125
    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 128
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpRegion:Landroid/graphics/Region;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 129
    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpPosition:[I

    .line 130
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpBounds:Landroid/graphics/Rect;

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonFullTouchableRegions:Ljava/util/Map;

    .line 143
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    .line 149
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    const/4 p2, 0x1

    .line 152
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 154
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mUseCarModeUi:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    .line 158
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    .line 160
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 179
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    .line 236
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 263
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 278
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonListener:Ljava/util/function/Consumer;

    .line 287
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavbarOverlayVisibilityChangeCallback:Ljava/util/function/Consumer;

    .line 1387
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    .line 1392
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPipListener:Ljava/util/function/Consumer;

    .line 297
    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget v3, Lcom/android/systemui/R$attr;->darkIconTheme:I

    .line 298
    invoke-static {p1, v3}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 299
    new-instance v3, Landroid/view/ContextThemeWrapper;

    sget v4, Lcom/android/systemui/R$attr;->lightIconTheme:I

    .line 300
    invoke-static {p1, v4}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    .line 301
    sget v4, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    .line 302
    invoke-static {v2, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    .line 303
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 304
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 305
    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 307
    const-class v0, Lcom/android/systemui/model/SysUiState;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/model/SysUiState;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 309
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    sget v2, Lcom/android/systemui/R$id;->menu_container:I

    invoke-direct {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 310
    new-instance v3, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    sget v4, Lcom/android/systemui/R$id;->ime_switcher:I

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$drawable;->ic_ime_switcher_default:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;I)V

    .line 312
    new-instance v5, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    sget v6, Lcom/android/systemui/R$id;->accessibility_button:I

    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$drawable;->ic_sysbar_accessibility_button:I

    invoke-direct {v5, v6, v7, v8}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;I)V

    .line 315
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 316
    invoke-virtual {v0, v5}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 317
    new-instance v7, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    sget v8, Lcom/android/systemui/R$id;->rotate_suggestion:I

    iget-object v9, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_0:I

    invoke-direct {v7, v8, v9, v10}, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;-><init>(ILandroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    .line 319
    new-instance v7, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

    invoke-direct {v7, p1}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

    .line 320
    new-instance v7, Lcom/android/systemui/navigationbar/RotationButtonController;

    iget-object v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    iget v10, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    invoke-direct {v7, v8, v9, v10}, Lcom/android/systemui/navigationbar/RotationButtonController;-><init>(Landroid/content/Context;II)V

    iput-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRotationButton()V

    .line 324
    const-class v7, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 325
    new-instance v8, Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {v8, p1, v7}, Lcom/android/systemui/recents/RecentsOnboarding;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 326
    const-class v7, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    iput-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    .line 327
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->isNavigationBarOverlayEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 328
    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-virtual {v7, v1}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->init(Ljava/util/function/Consumer;)V

    .line 331
    :cond_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 332
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 333
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 335
    new-instance p1, Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    .line 336
    new-instance p1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/statusbar/CommandQueue;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 338
    sget p1, Lcom/android/systemui/R$id;->back:I

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    sget p1, Lcom/android/systemui/R$id;->home:I

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    sget p1, Lcom/android/systemui/R$id;->home_handle:I

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    sget p1, Lcom/android/systemui/R$id;->recent_apps:I

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    invoke-virtual {p2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    invoke-virtual {p2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    invoke-virtual {p2, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    new-instance p1, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/buttons/DeadZone;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 347
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->navigation_handle_sample_horizontal_margin:I

    .line 348
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavColorSampleMargin:I

    .line 349
    const-class p1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 350
    new-instance p2, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setStateChangeCallback(Ljava/lang/Runnable;)V

    .line 351
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    new-instance p2, Lcom/android/systemui/navigationbar/NavigationBarView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$2;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$SamplingCallback;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/NavigationBarView;)Landroid/graphics/Rect;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/NavigationBarView;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSamplingRect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/navigationbar/NavigationBarView;)Landroid/graphics/Rect;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/navigationbar/NavigationBarView;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    return p0
.end method

.method private chooseNavigationIconDrawableRes(II)I
    .locals 0

    .line 611
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

    .line 1372
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

    .line 1374
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1376
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

    .line 1377
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1376
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1380
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private getButtonLocations(ZZZ)Landroid/graphics/Region;
    .locals 1

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    const/4 p3, 0x0

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 1008
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonTouchRegionCache()V

    .line 1009
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V

    .line 1010
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V

    .line 1011
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V

    .line 1012
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V

    if-eqz p1, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    iget-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Landroid/view/View;Z)V

    goto :goto_0

    .line 1018
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V

    :goto_0
    if-eqz p1, :cond_2

    .line 1020
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->isNavigationBarOverlayEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    .line 1021
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1023
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->getCurrentView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Landroid/view/View;Z)V

    .line 1025
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method private getContextDisplay()Landroid/view/Display;
    .locals 0

    .line 768
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 6

    .line 616
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

    .line 1168
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10501c9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 1171
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10501c7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1225
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

    .line 266
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 274
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-direct {p0, v1, v1, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getButtonLocations(ZZZ)Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 279
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Boolean;)V
    .locals 0

    .line 288
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 289
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Boolean;)V
    .locals 0

    .line 1388
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedStackExists:Z

    .line 1389
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRecentsIcon()V

    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/Boolean;)V
    .locals 1

    .line 1387
    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/graphics/Rect;)V
    .locals 0

    .line 1393
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setPipStashExclusionBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/graphics/Rect;)V
    .locals 1

    .line 1392
    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 0

    .line 1176
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;

    if-eqz p0, :cond_0

    .line 1177
    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    :cond_0
    return-void
.end method

.method private onImeVisibilityChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 670
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeVisible:Z

    .line 671
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->getRotationButton()Lcom/android/systemui/navigationbar/RotationButton;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeVisible:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/navigationbar/RotationButton;->setCanShowRotationButton(Z)V

    .line 672
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->isNavigationBarOverlayEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 673
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->setCanShow(Z)V

    :cond_1
    return-void
.end method

.method private orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 6

    .line 579
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 581
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

    .line 583
    :goto_3
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->getRotation()F

    move-result v5

    cmpl-float v5, v5, v3

    if-nez v5, :cond_4

    return-void

    .line 587
    :cond_4
    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v5}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 588
    invoke-virtual {p1, v3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setRotation(F)V

    return-void

    .line 594
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v5}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-nez v5, :cond_6

    if-eqz v0, :cond_6

    .line 595
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->navbar_back_button_ime_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    neg-float v4, p0

    :cond_6
    const/4 p0, 0x2

    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    .line 597
    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    new-array v5, v1, [F

    aput v3, v5, v2

    .line 598
    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v2

    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v3, v1, [F

    aput v4, v3, v2

    .line 599
    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v1

    .line 597
    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 600
    sget-object p1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 601
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 602
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 0

    .line 606
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

    .line 520
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private resetViews()V
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setSlippery(Z)V
    .locals 1

    const/high16 v0, 0x20000000

    .line 884
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setWindowFlag(IZ)V

    return-void
.end method

.method private setUpSwipeUpOnboarding(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1289
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onConnectedToLauncher()V

    goto :goto_0

    .line 1291
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    :goto_0
    return-void
.end method

.method private setUseFadingAnimations(Z)V
    .locals 3

    .line 802
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 803
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 805
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

    .line 807
    sget p1, Lcom/android/systemui/R$style;->Animation_NavigationBarFadeIn:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 809
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 813
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 814
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

    .line 888
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 892
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_4

    .line 893
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

    .line 897
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_3
    not-int p1, p1

    and-int/2addr p1, v2

    .line 899
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 901
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 902
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 438
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    .line 440
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

    .line 450
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 451
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    goto :goto_1

    .line 444
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setSlippery(Z)V

    .line 445
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    :goto_1
    return p1
.end method

.method private updateButtonLocation(Landroid/view/View;Z)V
    .locals 5

    if-eqz p2, :cond_0

    .line 1048
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1050
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpPosition:[I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1051
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpPosition:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v0, v0, v1

    .line 1052
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpPosition:[I

    aget v1, v1, v3

    .line 1053
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    .line 1051
    invoke-virtual {p2, v2, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1055
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpBounds:Landroid/graphics/Rect;

    sget-object p2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private updateButtonLocation(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;ZZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1033
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1034
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 1039
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonFullTouchableRegions:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1040
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonFullTouchableRegions:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    sget-object p2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void

    .line 1043
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateButtonLocation(Landroid/view/View;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateButtonTouchRegionCache()V
    .locals 2

    .line 987
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 990
    :goto_0
    sget v1, Lcom/android/systemui/R$id;->nav_buttons:I

    .line 991
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->getFullTouchableChildRegions()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonFullTouchableRegions:Ljava/util/Map;

    return-void
.end method

.method private updateCarMode()Z
    .locals 3

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1204
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1207
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    if-eq v0, v2, :cond_1

    .line 1208
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    .line 1214
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mUseCarModeUi:Z

    :cond_1
    return v1
.end method

.method private updateCurrentView()V
    .locals 4

    .line 1070
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->resetViews()V

    .line 1071
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 1072
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setVertical(Z)V

    .line 1074
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 1075
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 1077
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method private updateIcons(Landroid/content/res/Configuration;)V
    .locals 5

    .line 524
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

    .line 525
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    .line 526
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

    .line 529
    :cond_3
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_docked:I

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    .line 533
    :cond_5
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_recent:I

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 534
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    iget v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    invoke-virtual {p1, v2, v4}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->updateIcons(II)V

    :cond_6
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    .line 537
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :cond_8
    return-void
.end method

.method private updateLayoutTransitionsEnabled()V
    .locals 5

    .line 783
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

    .line 784
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 785
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 788
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 789
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 790
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 791
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_1

    .line 793
    :cond_1
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 794
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 795
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 796
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateOrientationViews()V
    .locals 1

    .line 1059
    sget v0, Lcom/android/systemui/R$id;->horizontal:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 1060
    sget v0, Lcom/android/systemui/R$id;->vertical:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    .line 1062
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentView()V

    return-void
.end method

.method private updateRecentsIcon()V
    .locals 2

    .line 1086
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

    .line 1087
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

    .line 1088
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->reapplyDarkIntensity()V

    return-void
.end method

.method private updateRotationButton()V
    .locals 3

    .line 545
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    sget v1, Lcom/android/systemui/R$id;->rotate_suggestion:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->removeButton(I)V

    .line 547
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotationButton(Lcom/android/systemui/navigationbar/RotationButton;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    sget v1, Lcom/android/systemui/R$id;->rotate_suggestion:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->getContextButton(I)Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    move-result-object v0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 552
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotationButton(Lcom/android/systemui/navigationbar/RotationButton;Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSamplingRect()V
    .locals 8

    .line 947
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 949
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 953
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 954
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 955
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 956
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v1, v4

    iget v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavColorSampleMargin:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 957
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getNavBarHeight()I

    move-result v7

    sub-int/2addr v6, v7

    aget v1, v1, v4

    .line 958
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavColorSampleMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v5, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 960
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

    .line 460
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->abortCurrentGesture()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1296
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1297
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1298
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const-string v2, "NavigationBarView:"

    .line 1300
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 1301
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1305
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

    .line 1306
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      window: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
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

    .line 1309
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1312
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1313
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

    .line 1314
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    .line 1315
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v1

    const-string v1, "      mCurrentView: id=%s (%dx%d) %s %f"

    .line 1311
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/Object;

    .line 1317
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 1318
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1319
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "true"

    goto :goto_3

    :cond_3
    const-string v1, "false"

    :goto_3
    aput-object v1, v0, v6

    .line 1320
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "      disabled=0x%08x vertical=%s darkIntensity=%.2f"

    .line 1317
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mOrientedHandleSamplingRegion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    const-string v1, "back"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1327
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    const-string v1, "home"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1328
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    const-string v1, "rcnt"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1329
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    move-result-object v0

    const-string v1, "rota"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1330
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    const-string v1, "a11y"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1331
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    const-string v1, "ime"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    if-eqz v0, :cond_4

    .line 1334
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->dump(Ljava/io/PrintWriter;)V

    .line 1336
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->dump(Ljava/io/PrintWriter;)V

    .line 1337
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->dump(Ljava/io/PrintWriter;)V

    .line 1338
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->dump(Ljava/io/PrintWriter;)V

    .line 1339
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->dump(Ljava/io/PrintWriter;)V

    .line 1340
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 492
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->accessibility_button:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 480
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->back:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getBackDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackDrawableRes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    .line 560
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    return-object v0
.end method

.method public getBackDrawableRes()I
    .locals 2

    .line 565
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_back:I

    sget v1, Lcom/android/systemui/R$drawable;->ic_sysbar_back_quick_step:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->chooseNavigationIconDrawableRes(II)I

    move-result p0

    return p0
.end method

.method public getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;
    .locals 0

    .line 381
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

    .line 504
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object p0
.end method

.method public getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 484
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->home:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getHomeDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_home_quick_step:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    goto :goto_0

    .line 573
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_home:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    .line 574
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    return-object v0
.end method

.method public getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 500
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->home_handle:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 488
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->ime_switcher:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    return-object p0
.end method

.method public getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 476
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->recent_apps:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getRotateSuggestionButton()Lcom/android/systemui/navigationbar/buttons/RotationContextButton;
    .locals 1

    .line 496
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->rotate_suggestion:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    return-object p0
.end method

.method public getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    return-object p0
.end method

.method hideRecentsOnboarding()V
    .locals 1

    .line 927
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    return-void
.end method

.method public isOverviewEnabled()Z
    .locals 1

    .line 512
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

    .line 516
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

    .line 763
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mUseCarModeUi:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
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

    .line 508
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

    .line 1066
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

    .line 981
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, 0x1

    .line 982
    invoke-direct {p0, v1, v1, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getButtonLocations(ZZZ)Landroid/graphics/Region;

    move-result-object p0

    .line 981
    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1345
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 1346
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    .line 1347
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1348
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1347
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1351
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setInsets(II)V

    .line 1355
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 1356
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

    .line 1357
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1358
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 1360
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1247
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavBarAttached()V

    .line 1251
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 1252
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    .line 1253
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->onNavigationModeChanged(I)V

    .line 1254
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1255
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->registerListeners()V

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->isNavigationBarOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->registerListeners()V

    .line 1262
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1263
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method onBarTransition(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 428
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->stop()V

    .line 429
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1183
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1185
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1186
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCarMode()Z

    move-result p1

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 1188
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRecentsIcon()V

    .line 1189
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-nez p1, :cond_0

    .line 1191
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_0

    .line 1192
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1268
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1269
    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    const/4 v0, 0x0

    .line 1270
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1271
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    if-eqz v0, :cond_1

    .line 1275
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->unregisterListeners()V

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->isNavigationBarOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1279
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->unregisterListeners()V

    .line 1282
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavBarDetached()V

    .line 1283
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->onDraw(Landroid/graphics/Canvas;)V

    .line 943
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 932
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 933
    sget v0, Lcom/android/systemui/R$id;->navigation_inflater:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 934
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 936
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateOrientationViews()V

    .line 937
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reloadNavIcons()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 400
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeVisible:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x130

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 402
    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(III)V

    .line 405
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

    .line 971
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 973
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    .line 974
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/RecentsOnboarding;->setNavBarHeight(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1134
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    if-le v1, v0, :cond_0

    .line 1138
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 1139
    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1140
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eq v3, v4, :cond_1

    .line 1141
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 1146
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    .line 1147
    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 1150
    :cond_1
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1152
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v3, :cond_2

    .line 1153
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10501c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 1155
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10501c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1157
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1159
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    new-instance v6, Landroid/graphics/Rect;

    sub-int/2addr v4, v3

    invoke-direct {v6, v2, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 1161
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    .line 1164
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 1

    .line 907
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 908
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->onNavigationModeChanged(I)V

    .line 909
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavigationModeChanged(I)V

    .line 910
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->onNavigationModeChanged(I)V

    .line 911
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRotationButton()V

    .line 913
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 914
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 916
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->stop()V

    :goto_0
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 1

    .line 622
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {p1, v0}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 625
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 628
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStatusBarPanelStateChanged()V
    .locals 0

    .line 819
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 820
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updatePanelSystemUiStateFlags()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 410
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    .line 411
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method onTransientStateChanged(Z)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavBarTransientStateChanged(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->isNavigationBarOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->setButtonState(ZZ)V

    :cond_0
    return-void
.end method

.method registerDockedListener(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    .line 1364
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->registerInSplitScreenListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method registerPipExclusionBoundsChangeListener(Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    .line 1368
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPipListener:Ljava/util/function/Consumer;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/Pip;->setPipExclusionBoundsChangeListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public reorient()V
    .locals 2

    .line 1109
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentView()V

    .line 1111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarFrame;->setDeadZone(Lcom/android/systemui/navigationbar/buttons/DeadZone;)V

    .line 1112
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->onConfigurationChanged(I)V

    .line 1115
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->init()V

    .line 1123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->resolveLayoutDirection()Z

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 1128
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVertical(Z)V

    return-void
.end method

.method public setAccessibilityButtonState(ZZ)V
    .locals 1

    .line 921
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 922
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    .line 923
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    sget p2, Lcom/android/systemui/R$id;->accessibility_button:I

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)I

    return-void
.end method

.method public setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    return-void
.end method

.method public setBehavior(I)V
    .locals 0

    .line 638
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->onBehaviorChanged(I)V

    return-void
.end method

.method public setComponents(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updatePanelSystemUiStateFlags()V

    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1

    .line 678
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    if-ne v0, p1, :cond_0

    return-void

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    .line 681
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    if-nez v0, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 685
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reloadNavIcons()V

    .line 688
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 689
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 690
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 691
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags()V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 643
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reloadNavIcons()V

    .line 645
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0

    .line 772
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 773
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method setNavigationBarLumaSamplingEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1398
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1400
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->stop()V

    :goto_0
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 4

    .line 649
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

    .line 654
    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onImeVisibilityChanged(Z)V

    .line 662
    :cond_3
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 663
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;

    .line 395
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyVerticalChangedListener(Z)V

    return-void
.end method

.method setOrientedHandleSamplingRegion(Landroid/graphics/Rect;)V
    .locals 0

    .line 965
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    .line 966
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0

    .line 777
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setUseFadingAnimations(Z)V

    .line 778
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mWakeAndUnlocking:Z

    .line 779
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public setWindowVisible(Z)V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->setWindowVisible(Z)V

    .line 634
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->onNavigationBarWindowVisibilityChange(Z)V

    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1093
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showPinningStartToast()V

    goto :goto_0

    .line 1095
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showPinningExitToast()V

    :goto_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 3

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1101
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result p0

    .line 1100
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showEscapeToast(ZZ)V

    return-void
.end method

.method public updateDisabledSystemUiStateFlags()V
    .locals 7

    .line 824
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 826
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 827
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v2

    const/4 v3, 0x1

    .line 826
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

    .line 828
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

    .line 830
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

    .line 832
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    .line 834
    invoke-virtual {p0, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 8

    .line 698
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 700
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 701
    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 702
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 703
    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mUseCarModeUi:Z

    if-nez v5, :cond_1

    .line 704
    invoke-direct {p0, v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 706
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 709
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRecentsIcon()V

    .line 712
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

    .line 715
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 717
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

    .line 721
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonDisabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 724
    iget v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    if-nez v0, :cond_7

    .line 727
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

    .line 733
    :goto_5
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v6

    .line 734
    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v7}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 736
    iget v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v7}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result v7

    xor-int/2addr v1, v7

    or-int/2addr v5, v1

    if-eqz v6, :cond_9

    .line 737
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

    .line 744
    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    sget v6, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    .line 746
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 748
    invoke-virtual {v1}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 749
    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 754
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

    .line 755
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v3, :cond_c

    move v1, v6

    goto :goto_8

    :cond_c
    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 756
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v5, :cond_d

    move v1, v6

    goto :goto_9

    :cond_d
    move v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 757
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v4, :cond_e

    move v2, v6

    :cond_e
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    return-void
.end method

.method public updatePanelSystemUiStateFlags()V
    .locals 4

    .line 838
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 842
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v1, :cond_1

    .line 847
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    const/4 v3, 0x4

    .line 848
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

    .line 847
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v1

    const/16 v2, 0x800

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 850
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result p0

    .line 849
    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    .line 851
    invoke-virtual {p0, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    :cond_1
    return-void
.end method

.method public updateSlippery()V
    .locals 1

    .line 879
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v0, :cond_0

    .line 880
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

    .line 879
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setSlippery(Z)V

    return-void
.end method

.method public updateStates()V
    .locals 3

    .line 856
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 858
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    if-eqz v1, :cond_0

    .line 860
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    .line 863
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 864
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reloadNavIcons()V

    .line 865
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 866
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 867
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 868
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 869
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 868
    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
