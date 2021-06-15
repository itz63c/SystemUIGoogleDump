.class Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;
.super Landroid/app/Dialog;
.source "GlobalActionsDialogLite.java"

# interfaces
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionsDialogLite"
.end annotation


# instance fields
.field protected final mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

.field protected mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field protected mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field protected final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field protected mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

.field private mKeyguardShowing:Z

.field protected final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field protected final mOnRotateCallback:Ljava/lang/Runnable;

.field protected final mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;

.field private mOverflowPopup:Landroid/widget/ListPopupWindow;

.field protected final mPowerOptionsAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyPowerOptionsAdapter;

.field private mPowerOptionsDialog:Landroid/app/Dialog;

.field protected mScrimAlpha:F

.field protected mShowing:Z

.field protected final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field protected final mToken:Landroid/os/IBinder;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$2abIJnOKX5ZDprGqt3CqWPIEHRY(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->lambda$initializeLayout$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3fp5EehoWezjmepWmCu7gliwCzU(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->lambda$dismiss$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$8w4FCjawkFBN-6BtDKMyKccNY34(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->lambda$showDialog$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9dTSQtptlGg8hvEziq-6N7_I8AU(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->lambda$createPowerOverflowPopup$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$M9sdM9zBwMH2V0MMvVM6zaX_yU0(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->lambda$dismissInternal$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iJWo9b6feMeXnL2FFaJ_k4uWzF8(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->lambda$createPowerOverflowPopup$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$kZn9nfpdoDGdul8vOj2hWZsyNFs(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->lambda$initializeLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tmANgfjiUYPvfLmMSbr5ix6sZgc(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->lambda$showDialog$4(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;ILcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/model/SysUiState;Ljava/lang/Runnable;ZLcom/android/systemui/globalactions/GlobalActionsDialogLite$MyPowerOptionsAdapter;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 2108
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2085
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mToken:Landroid/os/IBinder;

    .line 2109
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContext:Landroid/content/Context;

    .line 2110
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

    .line 2111
    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;

    .line 2112
    iput-object p12, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mPowerOptionsAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyPowerOptionsAdapter;

    .line 2113
    iput-object p5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 2114
    iput-object p6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 2115
    iput-object p7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2116
    iput-object p8, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 2117
    iput-object p9, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 2118
    iput-object p10, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mOnRotateCallback:Ljava/lang/Runnable;

    .line 2119
    iput-boolean p11, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mKeyguardShowing:Z

    .line 2120
    iput-object p13, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 2123
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x1

    .line 2124
    invoke-virtual {p1, p2}, Landroid/view/Window;->requestFeature(I)Z

    .line 2126
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2127
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 p3, p3, 0x300

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/4 p2, -0x1

    .line 2129
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    const p2, 0x1090100

    .line 2130
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    const/16 p2, 0x7e4

    .line 2135
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 2136
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const p1, 0x10403c3

    .line 2137
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2139
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->initializeLayout()V

    return-void
.end method

.method private createPowerOverflowPopup()Landroid/widget/ListPopupWindow;
    .locals 4

    .line 2143
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$style;->Control_ListPopupWindow:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;-><init>(Landroid/content/Context;Z)V

    .line 2148
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2150
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2152
    sget v1, Lcom/android/systemui/R$id;->global_actions_overflow_button:I

    .line 2153
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2154
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2155
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method private synthetic lambda$createPowerOverflowPopup$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 2149
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;

    invoke-virtual {p0, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->onClickItem(I)V

    return-void
.end method

.method private synthetic lambda$createPowerOverflowPopup$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 2151
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;

    invoke-virtual {p0, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->onLongClickItem(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$dismiss$6()V
    .locals 0

    .line 2321
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismissInternal()V

    return-void
.end method

.method private synthetic lambda$dismissInternal$7(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2332
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 2333
    iget p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mScrimAlpha:F

    mul-float/2addr p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 2334
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2335
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateGlobalDialogVisibility(FLandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initializeLayout$2(Landroid/view/View;)V
    .locals 1

    .line 2191
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_CLOSE_TAP_OUTSIDE:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 2192
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method private synthetic lambda$initializeLayout$3(Landroid/view/View;)V
    .locals 0

    .line 2199
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->showPowerOverflowMenu()V

    return-void
.end method

.method private static synthetic lambda$showDialog$4(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 2288
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result p1

    .line 2289
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    .line 2290
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    .line 2291
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result p2

    .line 2288
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2292
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method private synthetic lambda$showDialog$5(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2302
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2303
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mScrimAlpha:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2304
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2305
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateGlobalDialogVisibility(FLandroid/view/View;)V

    return-void
.end method

.method private updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2

    .line 2248
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/android/systemui/scrim/ScrimDrawable;

    if-nez v1, :cond_0

    return-void

    .line 2251
    :cond_0
    check-cast v0, Lcom/android/systemui/scrim/ScrimDrawable;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/scrim/ScrimDrawable;->setColor(IZ)V

    .line 2252
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 2253
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2010

    .line 2254
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2257
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected completeDismiss()V
    .locals 4

    const/4 v0, 0x0

    .line 2368
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mShowing:Z

    const/4 v1, 0x1

    .line 2369
    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismissOverflow(Z)V

    .line 2370
    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismissPowerOptions(Z)V

    .line 2371
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const-string v2, "GlobalActionsDialogLite"

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setRequestTopUi(ZLjava/lang/String;)V

    .line 2372
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateGlobalDialogVisibility(FLandroid/view/View;)V

    .line 2373
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const v2, 0x8000

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContext:Landroid/content/Context;

    .line 2374
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 2375
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 2320
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismissWithAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected dismissInternal()V
    .locals 8

    .line 2326
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 2327
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 2328
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2329
    sget-object v3, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xe9

    .line 2330
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2331
    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2338
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v4}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetX()F

    move-result v4

    .line 2339
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContainer:Landroid/view/ViewGroup;

    new-array v6, v2, [F

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v1, 0x1

    aput v4, v6, v1

    const-string/jumbo v4, "translationX"

    .line 2340
    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2341
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15e

    .line 2342
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2344
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v7

    aput-object v4, v2, v1

    .line 2345
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2346
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$2;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2352
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 2355
    invoke-virtual {p0, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismissOverflow(Z)V

    .line 2356
    invoke-virtual {p0, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismissPowerOptions(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected final dismissOverflow(Z)V
    .locals 0

    .line 2379
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mOverflowPopup:Landroid/widget/ListPopupWindow;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 2381
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismissImmediate()V

    goto :goto_0

    .line 2383
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final dismissPowerOptions(Z)V
    .locals 0

    .line 2389
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mPowerOptionsDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 2391
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 2393
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method dismissWithAnimation(Ljava/lang/Runnable;)V
    .locals 1

    .line 2360
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2363
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mShowing:Z

    .line 2364
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected fixNavBarClipping()V
    .locals 1

    const v0, 0x1020002

    .line 2221
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 2222
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2223
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 2224
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 2225
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2226
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method protected getLayoutResource()I
    .locals 0

    .line 2170
    sget p0, Lcom/android/systemui/R$layout;->global_actions_grid_lite:I

    return p0
.end method

.method protected initializeLayout()V
    .locals 3

    .line 2174
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->getLayoutResource()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2175
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->fixNavBarClipping()V

    .line 2177
    sget v0, Lcom/android/systemui/R$id;->global_actions_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/MultiListLayout;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 2178
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setListViewAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2187
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setRotationListener(Lcom/android/systemui/MultiListLayout$RotationListener;)V

    .line 2188
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setAdapter(Lcom/android/systemui/MultiListLayout$MultiListAdapter;)V

    .line 2189
    sget v0, Lcom/android/systemui/R$id;->global_actions_container:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContainer:Landroid/view/ViewGroup;

    .line 2190
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2195
    sget v0, Lcom/android/systemui/R$id;->global_actions_overflow_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2198
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2199
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2200
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 2201
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2202
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 2203
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2205
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2206
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 2207
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2208
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->global_actions_side_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 2210
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2214
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2215
    new-instance v0, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-direct {v0}, Lcom/android/systemui/scrim/ScrimDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2216
    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mScrimAlpha:F

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 2269
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 2270
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_CLOSE_BACK:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 2

    .line 2412
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 2414
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    goto :goto_0

    :cond_0
    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    .line 2419
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRotate(II)V
    .locals 0

    .line 2440
    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mShowing:Z

    if-eqz p1, :cond_0

    .line 2441
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mOnRotateCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2442
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->refreshDialog()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 2231
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2232
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout;->updateList()V

    .line 2234
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 2236
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    const/4 v1, 0x0

    .line 2237
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 2263
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2264
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    return-void
.end method

.method public refreshDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 2431
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismissOverflow(Z)V

    .line 2432
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismissPowerOptions(Z)V

    .line 2435
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->initializeLayout()V

    .line 2436
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->updateList()V

    return-void
.end method

.method protected final setRotationSuggestionsEnabled(Z)V
    .locals 3

    .line 2400
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 2404
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p1, v2, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2406
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public show()V
    .locals 0

    .line 2275
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2277
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->showDialog()V

    return-void
.end method

.method protected showDialog()V
    .locals 8

    const/4 v0, 0x1

    .line 2281
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mShowing:Z

    .line 2282
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const-string v2, "GlobalActionsDialogLite"

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setRequestTopUi(ZLjava/lang/String;)V

    .line 2283
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const v2, 0x8000

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContext:Landroid/content/Context;

    .line 2284
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 2286
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2287
    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda2;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2295
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2296
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetX()F

    move-result v1

    .line 2297
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    const-string v6, "alpha"

    .line 2298
    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2299
    sget-object v5, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xb7

    .line 2300
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2301
    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2308
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContainer:Landroid/view/ViewGroup;

    new-array v6, v4, [F

    aput v1, v6, v2

    const/4 v1, 0x0

    aput v1, v6, v0

    const-string/jumbo v1, "translationX"

    .line 2309
    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2310
    invoke-virtual {p0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15e

    .line 2311
    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2313
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v2

    aput-object p0, v4, v0

    .line 2314
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2315
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showPowerOptionsMenu()V
    .locals 2

    .line 2160
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mPowerOptionsAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyPowerOptionsAdapter;

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsPowerDialog;->create(Landroid/content/Context;Landroid/widget/ListAdapter;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mPowerOptionsDialog:Landroid/app/Dialog;

    .line 2161
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected showPowerOverflowMenu()V
    .locals 1

    .line 2165
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->createPowerOverflowPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mOverflowPopup:Landroid/widget/ListPopupWindow;

    .line 2166
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
