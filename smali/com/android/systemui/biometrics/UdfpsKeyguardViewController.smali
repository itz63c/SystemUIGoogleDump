.class public Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;
.super Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
.source "UdfpsKeyguardViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/biometrics/UdfpsAnimationViewController<",
        "Lcom/android/systemui/biometrics/UdfpsKeyguardView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

.field private mCancelRunnable:Ljava/lang/Runnable;

.field private final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mFaceDetectRunning:Z

.field private mHintShown:Z

.field private mInputBouncerHiddenAmount:F

.field private mIsBouncerVisible:Z

.field private mKeyguardIsVisible:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mQsExpanded:Z

.field private mShowingUdfpsBouncer:Z

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarState:I

.field private mTransitioningFromHome:Z

.field private final mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field private mUdfpsRequested:Z


# direct methods
.method public static synthetic $r8$lambda$7C7He_rPrqK_W1jBcnRx-CJAhiM(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->lambda$updateFaceDetectRunning$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$c-XVogt153qwaMDTVphEdSAix1w(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->lambda$showUdfpsBouncer$0()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V

    .line 274
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 302
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 332
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    .line 87
    iput-object p4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 88
    iput-object p5, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 89
    iput-object p6, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 90
    iput-object p8, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 91
    iput-object p9, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->showUdfpsBouncer(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Lcom/android/systemui/biometrics/UdfpsController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitioningFromHome:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateFaceDetectRunning(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->showHint(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->cancelDelayedHint()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardIsVisible:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    return p0
.end method

.method private cancelDelayedHint()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mCancelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mCancelRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showUdfpsBouncer$0()V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPostAuthActions()V

    return-void
.end method

.method private synthetic lambda$updateFaceDetectRunning$1()V
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->showHint(Z)V

    return-void
.end method

.method private maybeShowInputBouncer()V
    .locals 2

    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetAlternateAuth(Z)V

    .line 232
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    :cond_0
    return-void
.end method

.method private showHint(Z)V
    .locals 1

    .line 259
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->cancelDelayedHint()V

    .line 260
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mHintShown:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 261
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mHintShown:Z

    .line 262
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->animateHint()V

    :cond_1
    return-void
.end method

.method private showUdfpsBouncer(Z)Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 164
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    .line 166
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    if-eqz p1, :cond_1

    .line 167
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->animateUdfpsBouncer()V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->animateAwayUdfpsBouncer(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private updateAlpha()V
    .locals 5

    .line 268
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    const v2, 0x3f333333    # 0.7f

    const/high16 v3, 0x437f0000    # 255.0f

    .line 269
    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 271
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->setUnpausedAlpha(I)V

    return-void
.end method

.method private updateFaceDetectRunning(Z)V
    .locals 4

    .line 244
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mFaceDetectRunning:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mHintShown:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mCancelRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mCancelRunnable:Ljava/lang/Runnable;

    .line 255
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mFaceDetectRunning:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mShowingUdfpsBouncer="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mFaceDetectRunning="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mFaceDetectRunning:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mTransitioningFromHomeToKeyguard="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitioningFromHome:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mStatusBarState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    invoke-static {p3}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mQsExpanded="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mKeyguardVisible="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardIsVisible:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsBouncerVisible="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mInputBouncerHiddenAmount="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mAlpha="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mUdfpsRequested="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mView.mUdfpsRequested="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iget-boolean p3, p3, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequested:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mView.mUdfpsRequestedColor="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequestedColor:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UdfpsKeyguardViewController"

    return-object p0
.end method

.method public listenForTouchesOutsideView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchOutsideView()V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->maybeShowInputBouncer()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 3

    .line 101
    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewAttached()V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mHintShown:Z

    .line 103
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateFaceDetectRunning(Z)V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v1

    .line 107
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v2, v1, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onDozeAmountChanged(FF)V

    .line 108
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 110
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    .line 111
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    .line 112
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isQsExpanded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    .line 113
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardIsVisible:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 114
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setAlternateAuthInterceptor(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerIsOrWillBeShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    .line 124
    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewDetached()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mFaceDetectRunning:Z

    .line 128
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setAlternateAuthInterceptor(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;)V

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitioningFromHome:Z

    .line 132
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mCancelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 134
    iput-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mCancelRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public shouldPauseAuth()Z
    .locals 3

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mNotificationShadeExpanded:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 190
    :cond_2
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    return v2

    .line 194
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitioningFromHome:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingScreenOff()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 198
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    if-eqz v0, :cond_5

    return v2

    .line 202
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardIsVisible:Z

    if-nez v0, :cond_6

    return v2

    .line 206
    :cond_6
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    const v0, 0x3ecccccd    # 0.4f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_7

    return v2

    :cond_7
    return v1
.end method
