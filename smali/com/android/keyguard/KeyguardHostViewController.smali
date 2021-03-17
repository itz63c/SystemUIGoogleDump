.class public Lcom/android/keyguard/KeyguardHostViewController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardHostViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardHostView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mCancelAction:Ljava/lang/Runnable;

.field private mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field private final mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private final mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public static synthetic $r8$lambda$JrjRYhNBUiyIPkhGa_AFPX2_-a8(Lcom/android/keyguard/KeyguardHostViewController;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardHostViewController;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/media/AudioManager;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;)V
    .locals 1

    .line 171
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 67
    new-instance p1, Lcom/android/keyguard/KeyguardHostViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardHostViewController$1;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 103
    new-instance p1, Lcom/android/keyguard/KeyguardHostViewController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardHostViewController$2;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 161
    new-instance v0, Lcom/android/keyguard/KeyguardHostViewController-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostViewController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 172
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 173
    iput-object p3, p0, Lcom/android/keyguard/KeyguardHostViewController;->mAudioManager:Landroid/media/AudioManager;

    .line 174
    iput-object p4, p0, Lcom/android/keyguard/KeyguardHostViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 175
    iput-object p5, p0, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 176
    invoke-virtual {p6, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->create(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)Lcom/android/keyguard/KeyguardSecurityContainerController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardSecurityContainerController;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardHostViewController;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardHostViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCancelAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 161
    invoke-virtual {p0, p3}, Lcom/android/keyguard/KeyguardHostViewController;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public appear(I)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 239
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->startAppearAnimation()V

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/keyguard/KeyguardHostViewController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostViewController$3;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 250
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :goto_0
    return-void
.end method

.method public cancelDismissAction()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardHostViewController;->setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanUp()V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onPause()V

    return-void
.end method

.method public dismiss(I)Z
    .locals 1

    .line 216
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(ZIZ)Z

    move-result p0

    return p0
.end method

.method public dispatchBackKeyEventPreIme()Z
    .locals 1

    .line 381
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public finish(ZI)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish(ZI)V

    return-void
.end method

.method public getAccessibilityTitleForCurrentMode()Ljava/lang/CharSequence;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public hasDismissActions()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCancelAction:Ljava/lang/Runnable;

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

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 8

    .line 396
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 397
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0x7f

    const/16 v3, 0x7e

    const/16 v4, 0xde

    const/16 v5, 0x82

    const/16 v6, 0x4f

    const/4 v7, 0x1

    if-nez v1, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 404
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    return v7

    .line 417
    :cond_1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v7

    .line 439
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 453
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v7

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onInit()V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onPause()V

    .line 310
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onResume(I)V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method

.method public onStartingToHide()V
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onStartingToHide()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->needsInput()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 192
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen(Z)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 198
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public resetSecurityContainer()V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reset()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 4

    const v0, 0x3f733333    # 0.95f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 322
    invoke-static {v0, v1, v1, v2, p1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 323
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 324
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCancelAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCancelAction:Ljava/lang/Runnable;

    .line 285
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 286
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCancelAction:Ljava/lang/Runnable;

    return-void
.end method

.method public shouldEnableMenuKey()Z
    .locals 3

    .line 370
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 371
    sget v0, Lcom/android/systemui/R$bool;->config_disableMenuKeyInLockScreen:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 372
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    .line 373
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/enable_menu_key"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

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

.method public showErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showPrimarySecurityScreen()V
    .locals 1

    .line 318
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen(Z)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPromptReason(I)V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 296
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
