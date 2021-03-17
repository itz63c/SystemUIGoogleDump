.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionsDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mControlsAvailable:Z

.field private mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

.field private mControlsView:Landroid/view/ViewGroup;

.field private final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field private mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

.field private mKeyguardShowing:Z

.field private mLockMessage:Landroid/widget/TextView;

.field mLockMessageContainer:Landroid/view/ViewGroup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private final mOnRotateCallback:Ljava/lang/Runnable;

.field private final mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

.field private mOverflowPopup:Landroid/widget/ListPopupWindow;

.field private final mPowerOptionsAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

.field private mPowerOptionsDialog:Landroid/app/Dialog;

.field private mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

.field private mScrimAlpha:F

.field private mShowing:Z

.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private final mToken:Landroid/os/IBinder;

.field private final mWalletFactory:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;",
            ">;"
        }
    .end annotation
.end field

.field private mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;


# direct methods
.method public static synthetic $r8$lambda$065b7Eo6ViyxH2Rw_5mBie7UaSM(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissForControlsActivity()V

    return-void
.end method

.method public static synthetic $r8$lambda$404tzM_jS4OxZ9dvrr3rMH8KAbo(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$initializeLayout$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5LCSoLdkNzxwh2pGJHdjfmMyl8w(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->completeDismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$9x2H9fcpNR0j4M3Ab_UEYXuSFec(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$initializeWalletView$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$A-7s3HSncAOzVn1EssvUpgv7kAM(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$show$6(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_YQeSdxTA76VH_xkrLTAhzcH-PM(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$dismissForControlsActivity$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$audE_dxlKh32rwYiCUs5fPBdEIs(Landroid/view/ViewGroup;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$initializeWalletView$2(Landroid/view/ViewGroup;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$dcltzzjlhhQrO-ePh1T64jsWugA(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$show$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nbtRYI2e8rimvpt1JQ-UkV8zBz8(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$createPowerOverflowPopup$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oksWxnY02C1XWY5LcWzLDHFWX54(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$dismiss$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qUOo5pHJHH0UD_Ly-qJDrKivMiA(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$dismiss$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$v0RxkVsEeclvsT1gkx43kwFD3hI(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$createPowerOverflowPopup$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vsxh4SLSz0XimY6DKWhtTzyqMkw(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$initializeWalletView$1(Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/NotificationShadeWindowController;ZLcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/model/SysUiState;Ljava/lang/Runnable;ZLcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;",
            ">;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Z",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            "Lcom/android/systemui/model/SysUiState;",
            "Ljava/lang/Runnable;",
            "Z",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;",
            ")V"
        }
    .end annotation

    .line 2192
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_GlobalActions:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2160
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mToken:Landroid/os/IBinder;

    .line 2193
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    .line 2194
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .line 2195
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    .line 2196
    iput-object p14, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPowerOptionsAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

    .line 2197
    iput-object p5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 2198
    iput-object p6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 2199
    iput-object p7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2200
    iput-object p8, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 2201
    iput-boolean p9, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsAvailable:Z

    .line 2202
    iput-object p10, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 2203
    iput-object p11, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 2204
    iput-object p12, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOnRotateCallback:Ljava/lang/Runnable;

    .line 2205
    iput-boolean p13, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    .line 2206
    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletFactory:Ljavax/inject/Provider;

    .line 2209
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x1

    .line 2210
    invoke-virtual {p1, p2}, Landroid/view/Window;->requestFeature(I)Z

    .line 2212
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2213
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 p3, p3, 0x700

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/4 p2, -0x1

    .line 2216
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    const/4 p2, 0x2

    .line 2217
    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    const p2, 0x10d0120

    .line 2218
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    const/16 p2, 0x7e4

    .line 2225
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 2226
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const p1, 0x10403a1

    .line 2227
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2229
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializeLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;
    .locals 0

    .line 2152
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Z
    .locals 0

    .line 2152
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->isShowingControls()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    .line 2152
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->completeDismiss()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Landroid/content/Context;
    .locals 0

    .line 2152
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Z
    .locals 0

    .line 2152
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->isWalletViewAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Lcom/android/systemui/controls/ui/ControlsUiController;)V
    .locals 0

    .line 2152
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->showControls(Lcom/android/systemui/controls/ui/ControlsUiController;)V

    return-void
.end method

.method private completeDismiss()V
    .locals 4

    const/4 v0, 0x0

    .line 2550
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 2551
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->resetOrientation()V

    .line 2552
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissWallet()V

    const/4 v1, 0x1

    .line 2553
    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissOverflow(Z)V

    .line 2554
    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissPowerOptions(Z)V

    .line 2555
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/controls/ui/ControlsUiController;->hide()V

    .line 2556
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const-string v2, "GlobalActionsDialog"

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setRequestTopUi(ZLjava/lang/String;)V

    .line 2557
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateGlobalDialogVisibility(FLandroid/view/View;)V

    .line 2558
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const v2, 0x8000

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    .line 2559
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 2560
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private createPowerOverflowPopup()Landroid/widget/ListPopupWindow;
    .locals 4

    .line 2328
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$style;->Control_ListPopupWindow:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;-><init>(Landroid/content/Context;Z)V

    .line 2333
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2335
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2337
    sget v1, Lcom/android/systemui/R$id;->global_actions_overflow_button:I

    .line 2338
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2339
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2340
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method private dismissForControlsActivity()V
    .locals 1

    .line 2535
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissWithAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissOverflow(Z)V
    .locals 0

    .line 2572
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowPopup:Landroid/widget/ListPopupWindow;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 2574
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismissImmediate()V

    goto :goto_0

    .line 2576
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private dismissPowerOptions(Z)V
    .locals 0

    .line 2582
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPowerOptionsDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 2584
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 2586
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private dismissWallet()V
    .locals 1

    .line 2564
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    if-eqz v0, :cond_0

    .line 2565
    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->onDismissed()V

    const/4 v0, 0x0

    .line 2567
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    :cond_0
    return-void
.end method

.method private fixNavBarClipping()V
    .locals 1

    const v0, 0x1020002

    .line 2403
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 2404
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2405
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 2406
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 2407
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2408
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private initializeLayout()V
    .locals 3

    .line 2355
    sget v0, Lcom/android/systemui/R$layout;->global_actions_grid_v2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2356
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->fixNavBarClipping()V

    .line 2357
    sget v0, Lcom/android/systemui/R$id;->global_actions_controls:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsView:Landroid/view/ViewGroup;

    .line 2358
    sget v0, Lcom/android/systemui/R$id;->global_actions_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/MultiListLayout;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 2359
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setListViewAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2368
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setRotationListener(Lcom/android/systemui/MultiListLayout$RotationListener;)V

    .line 2369
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setAdapter(Lcom/android/systemui/MultiListLayout$MultiListAdapter;)V

    .line 2370
    sget v0, Lcom/android/systemui/R$id;->global_actions_container:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    .line 2371
    sget v0, Lcom/android/systemui/R$id;->global_actions_lock_message_container:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessageContainer:Landroid/view/ViewGroup;

    .line 2373
    sget v0, Lcom/android/systemui/R$id;->global_actions_lock_message:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessage:Landroid/widget/TextView;

    .line 2375
    sget v0, Lcom/android/systemui/R$id;->global_actions_overflow_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2378
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2379
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2380
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 2381
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2382
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 2383
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2385
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2386
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 2387
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2388
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->global_actions_side_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 2390
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2394
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializeWalletView()V

    .line 2395
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2396
    new-instance v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-direct {v0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2397
    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    .line 2399
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initializeWalletView()V
    .locals 6

    .line 2247
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletFactory:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    .line 2248
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->isWalletViewAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->global_actions_show_landscape_wallet_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2255
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v1

    .line 2256
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eqz v2, :cond_4

    .line 2259
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-nez v2, :cond_1

    .line 2260
    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    invoke-direct {v2, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    .line 2261
    iput-boolean v3, v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    .line 2262
    iput v1, v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->rotation:I

    .line 2268
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_4

    return-void

    :cond_2
    if-nez v2, :cond_3

    .line 2278
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-nez v1, :cond_3

    .line 2279
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    invoke-direct {v1, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    .line 2280
    iput-boolean v5, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    :cond_3
    xor-int/2addr v0, v3

    if-eq v2, v0, :cond_4

    .line 2290
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 2297
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setRotationSuggestionsEnabled(Z)V

    .line 2299
    sget v0, Lcom/android/systemui/R$id;->global_actions_wallet:I

    .line 2300
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2301
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2305
    iget-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsAvailable:Z

    if-nez v2, :cond_5

    .line 2306
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->global_actions_wallet_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2309
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->getPanelContent()Landroid/view/View;

    move-result-object v2

    .line 2310
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2312
    sget v0, Lcom/android/systemui/R$id;->global_actions_grid_root:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_6

    .line 2314
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda4;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_6
    return-void
.end method

.method private isShowingControls()Z
    .locals 0

    .line 2233
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWalletViewAvailable()Z
    .locals 0

    .line 2243
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->getPanelContent()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$createPowerOverflowPopup$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 2334
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    invoke-static {p0, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->access$4700(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;I)V

    return-void
.end method

.method private synthetic lambda$createPowerOverflowPopup$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 2336
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    invoke-static {p0, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->access$4600(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$dismiss$8(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2504
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 2505
    iget p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    mul-float/2addr p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 2506
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2507
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateGlobalDialogVisibility(FLandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$dismiss$9()V
    .locals 8

    .line 2498
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 2499
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 2500
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2501
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xe9

    .line 2502
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2503
    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2511
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v4}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetX()F

    move-result v4

    .line 2512
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    new-array v6, v2, [F

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v1, 0x1

    aput v4, v6, v1

    const-string v4, "translationX"

    .line 2513
    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2514
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15e

    .line 2515
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2517
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v7

    aput-object v4, v2, v1

    .line 2518
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2519
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$2;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2525
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 2528
    invoke-direct {p0, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissOverflow(Z)V

    .line 2529
    invoke-direct {p0, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissPowerOptions(Z)V

    .line 2530
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz p0, :cond_0

    invoke-interface {p0, v7}, Lcom/android/systemui/controls/ui/ControlsUiController;->closeDialogs(Z)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$dismissForControlsActivity$10()V
    .locals 2

    .line 2536
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2537
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private synthetic lambda$initializeLayout$5(Landroid/view/View;)V
    .locals 0

    .line 2379
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->showPowerOverflowMenu()V

    return-void
.end method

.method private synthetic lambda$initializeWalletView$0()V
    .locals 1

    .line 2269
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    return-void
.end method

.method private synthetic lambda$initializeWalletView$1(Z)V
    .locals 1

    .line 2291
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    return-void
.end method

.method private static synthetic lambda$initializeWalletView$2(Landroid/view/ViewGroup;Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p9, p7

    sub-int/2addr p5, p3

    if-lez p9, :cond_0

    if-eq p9, p5, :cond_0

    .line 2318
    new-instance p1, Landroid/transition/AutoTransition;

    invoke-direct {p1}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 p2, 0xfa

    .line 2319
    invoke-virtual {p1, p2, p3}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object p1

    const/4 p2, 0x0

    .line 2320
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object p1

    .line 2321
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$show$6(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 2460
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result p1

    .line 2461
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    .line 2462
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    .line 2463
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result p2

    .line 2460
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2464
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method private synthetic lambda$show$7(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2478
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2479
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2480
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2481
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateGlobalDialogVisibility(FLandroid/view/View;)V

    return-void
.end method

.method private resetOrientation()V
    .locals 3

    .line 2604
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-eqz v0, :cond_0

    .line 2605
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    iget-boolean v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    iget v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->rotation:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    :cond_0
    const/4 v0, 0x1

    .line 2608
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setRotationSuggestionsEnabled(Z)V

    return-void
.end method

.method private setRotationSuggestionsEnabled(Z)V
    .locals 3

    .line 2593
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

    .line 2597
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p1, v2, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2599
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private showControls(Lcom/android/systemui/controls/ui/ControlsUiController;)V
    .locals 2

    .line 2237
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 2238
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    const/4 p0, 0x1

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/ControlsUiController;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private showPowerOverflowMenu()V
    .locals 1

    .line 2350
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->createPowerOverflowPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowPopup:Landroid/widget/ListPopupWindow;

    .line 2351
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method private updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2

    .line 2431
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    if-nez v1, :cond_0

    return-void

    .line 2434
    :cond_0
    check-cast v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setColor(IZ)V

    .line 2435
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 2436
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2010

    .line 2437
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2440
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 2497
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissWithAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method dismissWithAnimation(Ljava/lang/Runnable;)V
    .locals 1

    .line 2542
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2545
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 2546
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method hideLockMessage()V
    .locals 3

    .line 2656
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2657
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$3;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2663
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 2

    .line 2613
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 2615
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    goto :goto_0

    :cond_0
    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    .line 2620
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRotate(II)V
    .locals 0

    .line 2649
    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    if-eqz p1, :cond_0

    .line 2650
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOnRotateCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2651
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->refreshDialog()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    const/4 v0, 0x1

    .line 2413
    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2414
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2415
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout;->updateList()V

    .line 2417
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    if-eqz v0, :cond_0

    .line 2418
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 2419
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    const/4 v1, 0x0

    .line 2420
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 2446
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2447
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    return-void
.end method

.method public refreshDialog()V
    .locals 4

    .line 2632
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissWallet()V

    const/4 v0, 0x1

    .line 2633
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissOverflow(Z)V

    .line 2634
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissPowerOptions(Z)V

    .line 2635
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz v1, :cond_0

    .line 2636
    invoke-interface {v1}, Lcom/android/systemui/controls/ui/ControlsUiController;->hide()V

    .line 2640
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializeLayout()V

    .line 2641
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1}, Lcom/android/systemui/MultiListLayout;->updateList()V

    .line 2642
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz v1, :cond_1

    .line 2643
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-interface {v1, v2, v3, v0}, Lcom/android/systemui/controls/ui/ControlsUiController;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 8

    .line 2452
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    .line 2453
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 2454
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const-string v2, "GlobalActionsDialog"

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setRequestTopUi(ZLjava/lang/String;)V

    .line 2455
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const v2, 0x8000

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    .line 2456
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 2458
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2459
    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda2;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2466
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz v1, :cond_0

    .line 2467
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-interface {v1, v2, v3, v0}, Lcom/android/systemui/controls/ui/ControlsUiController;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Z)V

    .line 2471
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2472
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetX()F

    move-result v1

    .line 2473
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    const-string v6, "alpha"

    .line 2474
    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2475
    sget-object v5, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xb7

    .line 2476
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2477
    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2485
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    new-array v6, v4, [F

    aput v1, v6, v2

    const/4 v1, 0x0

    aput v1, v6, v0

    const-string v1, "translationX"

    .line 2486
    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2487
    invoke-virtual {p0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15e

    .line 2488
    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2490
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v2

    aput-object p0, v4, v0

    .line 2491
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2492
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method showLockMessage()V
    .locals 3

    .line 2668
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const v1, 0x10803cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2669
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->control_primary_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2670
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessage:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2671
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessageContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showPowerOptionsMenu()V
    .locals 2

    .line 2345
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPowerOptionsAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsPowerDialog;->create(Landroid/content/Context;Landroid/widget/ListAdapter;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPowerOptionsDialog:Landroid/app/Dialog;

    .line 2346
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
