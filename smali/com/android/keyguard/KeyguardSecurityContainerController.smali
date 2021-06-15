.class public Lcom/android/keyguard/KeyguardSecurityContainerController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardSecurityContainerController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardSecurityContainer;",
        ">;",
        "Lcom/android/keyguard/KeyguardSecurityView;"
    }
.end annotation


# instance fields
.field private final mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private final mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mLastOrientation:I

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private final mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private final mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

.field private mSwipeListener:Lcom/android/keyguard/KeyguardSecurityContainer$SwipeListener;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public static synthetic $r8$lambda$fVkc3_XpDNpr2tdjWUZ98k5DC44(Lcom/android/keyguard/KeyguardSecurityContainerController;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->lambda$showPrimarySecurityScreen$0()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    .line 80
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 82
    new-instance p1, Lcom/android/keyguard/KeyguardSecurityContainerController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    .line 110
    new-instance p1, Lcom/android/keyguard/KeyguardSecurityContainerController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 172
    new-instance p1, Lcom/android/keyguard/KeyguardSecurityContainerController$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$3;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSwipeListener:Lcom/android/keyguard/KeyguardSecurityContainer$SwipeListener;

    .line 182
    new-instance p1, Lcom/android/keyguard/KeyguardSecurityContainerController$4;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$4;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 207
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 208
    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 209
    iput-object p5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 210
    iput-object p6, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 211
    iput-object p7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 212
    iput-object p8, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 213
    iput-object p9, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 214
    iput-object p10, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 215
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;->create(Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/AdminSecondaryLockScreenController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 217
    iput-object p11, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardSecurityContainerController$1;)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p11}, Lcom/android/keyguard/KeyguardSecurityContainerController;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecurityContainerController;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecurityContainerController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecurityContainerController;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecurityContainerController;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecurityContainerController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecurityContainerController;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecurityContainerController;)Lcom/android/keyguard/KeyguardSecurityViewFlipperController;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    return-object p0
.end method

.method private changeSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardInputViewController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            ")",
            "Lcom/android/keyguard/KeyguardInputViewController<",
            "Lcom/android/keyguard/KeyguardInputView;",
            ">;"
        }
    .end annotation

    .line 501
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 502
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/keyguard/KeyguardInputViewController<",
            "Lcom/android/keyguard/KeyguardInputView;",
            ">;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 496
    invoke-virtual {v0, v1, p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showPrimarySecurityScreen$0()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .line 255
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 256
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public needsInput()Z
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result p0

    return p0
.end method

.method public onInit()V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    invoke-virtual {v0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->hide()V

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->onPause()V

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    return-void
.end method

.method public onResume(I)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardInputViewController;->onResume(I)V

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 300
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 301
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isFaceAuthEnabled()Z

    move-result p0

    .line 299
    invoke-virtual {p1, v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onResume(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    return-void
.end method

.method public onStartingToHide()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->onStartingToHide()V

    :cond_0
    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSwipeListener:Lcom/android/keyguard/KeyguardSecurityContainer$SwipeListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setSwipeListener(Lcom/android/keyguard/KeyguardSecurityContainer$SwipeListener;)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->addMotionEventListener(Lcom/android/systemui/Gefingerpoken;)V

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->removeMotionEventListener(Lcom/android/systemui/Gefingerpoken;)V

    return-void
.end method

.method public reportFailedUnlockAttempt(II)V
    .locals 5

    .line 452
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 456
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 458
    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v3

    if-lez v3, :cond_0

    sub-int/2addr v3, v0

    goto :goto_0

    :cond_0
    const v3, 0x7fffffff

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_4

    .line 468
    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const/16 v4, -0x2710

    if-eq v2, v4, :cond_2

    const/4 v1, 0x2

    :cond_2
    :goto_1
    if-lez v3, :cond_3

    .line 479
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    goto :goto_2

    .line 482
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many unlock attempts; user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " will be wiped!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardSecurityView"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(II)V

    .line 486
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    if-lez p2, :cond_5

    .line 488
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordLockout(II)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    .line 489
    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showTimeoutDialog(IILcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_5
    return-void
.end method

.method public reset()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->reset()V

    .line 287
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->reset()V

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardInputViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public showNextSecurityScreenOrFinish(ZIZ)Z
    .locals 10

    .line 342
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->UNKNOWN:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    .line 343
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    .line 346
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_EXTENDED_ACCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    move v3, v5

    :goto_0
    move v1, v7

    goto/16 :goto_2

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_BIOMETRIC:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    move v3, v4

    goto :goto_0

    .line 351
    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v9

    if-ne v1, v9, :cond_3

    .line 352
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    if-ne v1, p1, :cond_2

    .line 356
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_NONE_SECURITY:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    move v3, v7

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    move-object p1, v0

    move v3, v6

    move v8, v7

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_7

    .line 361
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainerController$5;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget p1, p1, v9

    if-eq p1, v8, :cond_6

    if-eq p1, v4, :cond_6

    if-eq p1, v5, :cond_6

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad security screen "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fail safe"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardSecurityView"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen(Z)V

    goto :goto_1

    .line 374
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    if-ne p1, v1, :cond_5

    .line 375
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 376
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 375
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 379
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_SIM:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    goto :goto_0

    .line 381
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1

    .line 368
    :cond_6
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_PASSWORD:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    move v1, v8

    move v3, v1

    goto :goto_2

    :cond_7
    :goto_1
    move-object p1, v0

    move v3, v6

    move v1, v7

    move v8, v1

    :goto_2
    if-eqz v8, :cond_8

    if-nez p3, :cond_8

    .line 394
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 395
    invoke-virtual {p3, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSecondaryLockscreenRequirement(I)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 397
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    invoke-virtual {p0, p3}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->show(Landroid/content/Intent;)V

    return v7

    :cond_8
    if-eq v3, v6, :cond_9

    .line 402
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0xc5

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 403
    invoke-virtual {v4, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 402
    invoke-virtual {p3, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_9
    if-eq p1, v0, :cond_a

    .line 406
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p3, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_a
    if-eqz v8, :cond_b

    .line 409
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0, v1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish(ZI)V

    :cond_b
    return v8
.end method

.method public showPrimarySecurityScreen(Z)V
    .locals 0

    .line 255
    new-instance p1, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Strong auth required, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecurityView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputViewController;->showPromptReason(I)V

    :cond_1
    return-void
.end method

.method showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 428
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->onPause()V

    .line 439
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->changeSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 441
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardInputViewController;->onResume(I)V

    .line 442
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->show(Lcom/android/keyguard/KeyguardInputViewController;)V

    .line 443
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateLayoutForSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 446
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    if-eqz v0, :cond_3

    .line 447
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 446
    :goto_0
    invoke-interface {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public startAppearAnimation()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->startAppearAnimation()V

    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->startDisappearAnimation(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputViewController;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateKeyguardPosition(F)V
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateKeyguardPosition(F)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 512
    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 513
    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    .line 514
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateLayoutForSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_0
    return-void
.end method
