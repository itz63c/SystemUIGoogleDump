.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "KeyguardAbsKeyInputViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/keyguard/KeyguardAbsKeyInputView;",
        ">",
        "Lcom/android/keyguard/KeyguardInputViewController<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDismissing:Z

.field private final mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

.field private final mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field protected mResumed:Z


# direct methods
.method public static synthetic $r8$lambda$jwKsJ0xDLiDNB3cU1kMIoemzMw8(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->lambda$new$0(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/internal/util/LatencyTracker;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p3, p5}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 50
    new-instance p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;

    .line 60
    new-instance p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .line 75
    iput-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 76
    iput-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 77
    iput-object p7, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p1

    .line 79
    invoke-virtual {p6, p1}, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;->create(Lcom/android/keyguard/KeyguardMessageArea;)Lcom/android/keyguard/KeyguardMessageAreaController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)Lcom/android/internal/util/LatencyTracker;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$new$0(ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onUserInput()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected handleAttemptLockout(J)V
    .locals 7

    .line 142
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 144
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    .line 146
    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;

    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;JJ)V

    .line 161
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInit()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method onPasswordChecked(IZIZ)V
    .locals 3

    .line 165
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p3

    invoke-interface {p3, p1, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v0, :cond_3

    .line 169
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p3

    invoke-interface {p3, v2, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p4

    invoke-interface {p4, p1, v1, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-lez p3, :cond_2

    .line 176
    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p4, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->handleAttemptLockout(J)V

    :cond_2
    if-nez p3, :cond_3

    .line 182
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    .line 185
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mResumed:Z

    .line 273
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 275
    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 279
    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->reset()V

    return-void
.end method

.method public onResume(I)V
    .locals 0

    const/4 p1, 0x1

    .line 266
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mResumed:Z

    return-void
.end method

.method protected onUserInput()V
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 260
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    .line 261
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 91
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewAttached()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setKeyDownListener(Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setEnableHaptics(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    sget v1, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    :cond_0
    return-void
.end method

.method public reloadColors()V
    .locals 0

    .line 118
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->reloadColors()V

    .line 119
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->reloadColors()V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 104
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v1, v0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->shouldLockout(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->handleAttemptLockout(J)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->resetState()V

    :goto_0
    return-void
.end method

.method abstract resetState()V
.end method

.method protected shouldLockout(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setNextMessageColor(Landroid/content/res/ColorStateList;)V

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromptReasonStringRes(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    :cond_0
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .line 189
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 197
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 198
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    .line 201
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 202
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPasswordChecked(IZIZ)V

    .line 203
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v2, v4}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 208
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 210
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    .line 211
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;ILcom/android/internal/widget/LockscreenCredential;)V

    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
