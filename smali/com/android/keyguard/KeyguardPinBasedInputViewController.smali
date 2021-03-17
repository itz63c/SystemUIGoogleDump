.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputViewController;
.super Lcom/android/keyguard/KeyguardAbsKeyInputViewController;
.source "KeyguardPinBasedInputViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/keyguard/KeyguardPinBasedInputView;",
        ">",
        "Lcom/android/keyguard/KeyguardAbsKeyInputViewController<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mActionButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

.field private final mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method public static synthetic $r8$lambda$SfQDFI2nWvhBiSfqe9Omm-pTmGs(Lcom/android/keyguard/KeyguardPinBasedInputViewController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->lambda$onViewAttached$3(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZyVZP8RjtRePPF9aeCT_4Iequaw(Lcom/android/keyguard/KeyguardPinBasedInputViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->lambda$onViewAttached$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pnuv2PYox2kbohigazbJLfUqaAY(Lcom/android/keyguard/KeyguardPinBasedInputViewController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ycb30UV0rTdlIFYcYY9-q1olm_o(Lcom/android/keyguard/KeyguardPinBasedInputViewController;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/systemui/classifier/FalsingCollector;)V
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
            "Lcom/android/keyguard/LiftToActivateListener;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct/range {p0 .. p7}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;)V

    .line 39
    new-instance p1, Lcom/android/keyguard/KeyguardPinBasedInputViewController-$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 46
    new-instance p1, Lcom/android/keyguard/KeyguardPinBasedInputViewController-$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mActionButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 53
    new-instance p1, Lcom/android/keyguard/KeyguardPinBasedInputViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    .line 77
    iput-object p8, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 78
    iput-object p9, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 79
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object p2, p1

    check-cast p2, Lcom/android/keyguard/KeyguardPinBasedInputView;

    check-cast p1, Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/PasswordTextView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)Lcom/android/systemui/classifier/FalsingCollector;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 40
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onViewAttached$2(Landroid/view/View;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->deleteLastChar()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewAttached$3(Landroid/view/View;)Z
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {p1, v0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    return v0
.end method


# virtual methods
.method public onResume(I)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onResume(I)V

    .line 132
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onViewAttached()V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardInputView;->addMotionEventListener(Lcom/android/systemui/Gefingerpoken;)V

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewController-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController-$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    sget v1, Lcom/android/systemui/R$id;->delete_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mActionButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewController-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewController-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    sget v1, Lcom/android/systemui/R$id;->key_enter:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mActionButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardInputView;->removeMotionEventListener(Lcom/android/systemui/Gefingerpoken;)V

    return-void
.end method

.method resetState()V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    return-void
.end method
