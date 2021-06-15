.class public Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;,
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;
    }
.end annotation


# instance fields
.field private mBouncerPromptReason:I

.field protected final mCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field protected final mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field private mExpansion:F

.field private final mExpansionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAnimatingAway:Z

.field private mIsScrimmed:Z

.field private final mKeyguardBouncerComponentFactory:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

.field private final mRemoveViewRunnable:Ljava/lang/Runnable;

.field private final mResetRunnable:Ljava/lang/Runnable;

.field protected mRoot:Landroid/view/ViewGroup;

.field private mRootViewController:Lcom/android/keyguard/KeyguardRootViewController;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mShowingSoon:Z

.field private mStatusBarHeight:I

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static synthetic $r8$lambda$pzR4i9iPEUQ-ESwC4brdBLVRbiA(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->lambda$new$0()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;)V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    .line 76
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 83
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 93
    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    .line 235
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 112
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    .line 113
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 114
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 115
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 116
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 118
    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 119
    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBouncerComponentFactory:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

    .line 120
    invoke-virtual {p8, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 121
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 122
    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostViewController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)F
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    return p0
.end method

.method private cancelShowRunnable()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return-void
.end method

.method private dispatchExpansionChanged()V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    .line 537
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onExpansionChanged(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchFullyHidden()V
    .locals 1

    .line 530
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    .line 531
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onFullyHidden()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchFullyShown()V
    .locals 1

    .line 512
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    .line 513
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onFullyShown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchStartingToHide()V
    .locals 1

    .line 518
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    .line 519
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onStartingToHide()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchStartingToShow()V
    .locals 1

    .line 524
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    .line 525
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onStartingToShow()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchVisibilityChanged()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    .line 543
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->resetSecurityContainer()V

    :cond_0
    return-void
.end method

.method private onFullyHidden()V
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    const/4 v0, 0x4

    .line 223
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onBouncerHidden()V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onFullyShown()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onBouncerShown()V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-nez v0, :cond_0

    const-string p0, "KeyguardBouncer"

    const-string v0, "onFullyShown when view was null"

    .line 208
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostViewController;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 212
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    .line 213
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getAccessibilityTitleForCurrentMode()Ljava/lang/CharSequence;

    move-result-object p0

    .line 212
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setVisibility(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchVisibilityChanged()V

    :cond_0
    return-void
.end method

.method private showPrimarySecurityScreen()V
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->showPrimarySecurityScreen()V

    return-void
.end method


# virtual methods
.method public dispatchBackKeyEventPreIme()Z
    .locals 0

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 503
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->dispatchBackKeyEventPreIme()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "KeyguardBouncer"

    .line 559
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isShowing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStatusBarHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExpansion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mKeyguardViewController; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShowingSoon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBouncerPromptReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAnimatingAway: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected ensureView()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inflateView()V

    :cond_1
    return-void
.end method

.method public hide(Z)V
    .locals 2

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    const/4 v1, 0x1

    .line 293
    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissCancelled()V

    :cond_0
    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    .line 298
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v1}, Lcom/android/systemui/classifier/FalsingCollector;->onBouncerHidden()V

    .line 299
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->onBouncerVisiblityChanged(Z)V

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostViewController;->cancelDismissAction()V

    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostViewController;->cleanUp()V

    .line 305
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 307
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 312
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public inTransit()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

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

.method protected inflateView()V
    .locals 3

    .line 432
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBouncerComponentFactory:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

    invoke-interface {v0}, Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;->create()Lcom/android/keyguard/dagger/KeyguardBouncerComponent;

    move-result-object v0

    .line 435
    invoke-interface {v0}, Lcom/android/keyguard/dagger/KeyguardBouncerComponent;->getKeyguardRootViewController()Lcom/android/keyguard/KeyguardRootViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRootViewController:Lcom/android/keyguard/KeyguardRootViewController;

    .line 436
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 437
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRootViewController:Lcom/android/keyguard/KeyguardRootViewController;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardRootViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    .line 438
    invoke-interface {v0}, Lcom/android/keyguard/dagger/KeyguardBouncerComponent;->getKeyguardHostViewController()Lcom/android/keyguard/KeyguardHostViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    .line 439
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    const/4 v0, 0x4

    .line 444
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 494
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 495
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public isAnimatingAway()Z
    .locals 0

    .line 362
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    return p0
.end method

.method public isFullscreenBouncer()Z
    .locals 2

    .line 474
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    .line 476
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isScrimmed()Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    return p0
.end method

.method public isSecure()Z
    .locals 1

    .line 485
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 486
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 485
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowing()Z
    .locals 2

    .line 346
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isAnimatingAway()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needsFullscreenBouncer()Z
    .locals 1

    .line 464
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 465
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 464
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    .line 466
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_0

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

.method public notifyKeyguardAuthenticated(Z)V
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 508
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostViewController;->finish(ZI)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->onPause()V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 367
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    if-eqz v0, :cond_1

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPrimarySecurityScreen()V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return-void
.end method

.method protected removeView()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public setExpansion(F)V
    .locals 5

    .line 384
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 386
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    if-nez v3, :cond_1

    .line 388
    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardHostViewController;->setExpansion(F)V

    :cond_1
    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-nez v3, :cond_2

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_2

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onFullyShown()V

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchFullyShown()V

    goto :goto_1

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v4

    if-nez p1, :cond_3

    cmpl-float p1, v0, v4

    if-eqz p1, :cond_3

    .line 395
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onFullyHidden()V

    .line 396
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchFullyHidden()V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    cmpl-float p1, v0, v2

    if-nez p1, :cond_4

    .line 398
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchStartingToHide()V

    .line 399
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p1, :cond_4

    .line 400
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardHostViewController;->onStartingToHide()V

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchExpansionChanged()V

    :cond_5
    return-void
.end method

.method public shouldDismissOnMenuPressed()Z
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->shouldEnableMenuKey()Z

    move-result p0

    return p0
.end method

.method public show(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(ZZ)V

    return-void
.end method

.method public show(ZZ)V
    .locals 3

    .line 137
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 143
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 151
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    :cond_1
    if-eqz p1, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPrimarySecurityScreen()V

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-eqz p1, :cond_3

    goto/16 :goto_2

    .line 164
    :cond_3
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 166
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    move p2, v2

    goto :goto_0

    :cond_4
    move p2, v1

    :goto_0
    if-nez p2, :cond_5

    if-ne p1, v0, :cond_5

    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    .line 171
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardHostViewController;->dismiss(I)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    if-nez v1, :cond_7

    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User can\'t dismiss keyguard: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardBouncer"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    .line 183
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isFaceAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 185
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->userNeedsStrongAuth()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 186
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    .line 187
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 189
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 192
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p1, v2}, Lcom/android/keyguard/ViewMediatorCallback;->onBouncerVisiblityChanged(Z)V

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchStartingToShow()V

    :cond_9
    :goto_2
    return-void
.end method

.method public showMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardHostViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const-string p0, "KeyguardBouncer"

    const-string p1, "Trying to show message on empty bouncer"

    .line 275
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->showPromptReason(I)V

    goto :goto_0

    :cond_0
    const-string p0, "KeyguardBouncer"

    const-string p1, "Trying to show prompt reason on empty bouncer"

    .line 267
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showWithDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardHostViewController;->setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 321
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    .line 322
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->startDisappearAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 325
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateKeyguardPosition(F)V
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->updateKeyguardPosition(F)V

    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 0

    .line 553
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateResources()V

    :cond_0
    return-void
.end method

.method public willDismissWithAction()Z
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->hasDismissActions()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
