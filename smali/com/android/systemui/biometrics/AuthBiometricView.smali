.class public abstract Lcom/android/systemui/biometrics/AuthBiometricView;
.super Landroid/widget/LinearLayout;
.source "AuthBiometricView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthBiometricView$Injector;,
        Lcom/android/systemui/biometrics/AuthBiometricView$Callback;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mBackgroundClickListener:Landroid/view/View$OnClickListener;

.field private mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

.field mCancelButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mConfirmButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDescriptionView:Landroid/widget/TextView;

.field protected mDialogSizeAnimating:Z

.field private mEffectiveUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIconHolderView:Landroid/view/View;

.field private mIconOriginalY:F

.field protected mIconView:Landroid/widget/ImageView;

.field protected mIndicatorView:Landroid/widget/TextView;

.field private final mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

.field mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mNegativeButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

.field private mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private mRequireConfirmation:Z

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field private final mResetHelpRunnable:Ljava/lang/Runnable;

.field protected mSavedState:Landroid/os/Bundle;

.field private mSize:I

.field protected mState:I

.field private mSubtitleView:Landroid/widget/TextView;

.field protected final mTextColorError:I

.field protected final mTextColorHint:I

.field private mTitleView:Landroid/widget/TextView;

.field mTryAgainButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mUseCredentialButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$-2-rwDSgFbOdOVjO-mncQYw0Cq8(Lcom/android/systemui/biometrics/AuthBiometricView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateState$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$321443sPT2-_vmgCOTtrDZ3nF1M(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9S1B2Y9IVW2mranlB-UNgM_v6wI(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bta1H82G51hrtufqd1L0WRZ9Vrg(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CzHOwMAcXqKgrQ8OJXliGuRc8og(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E5gB7wJwa-qpjDpEc2uv6cwIdh4(Lcom/android/systemui/biometrics/AuthBiometricView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Il6-jnadxa7kL3WO0RiSzfpz6ck(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateSize$6(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QmdSW9m_Tvs55Xkd6PzDh2LRyNc(Lcom/android/systemui/biometrics/AuthBiometricView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$VAsfUtJD-alPk1MGi8YaQ87a6H4(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateSize$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VegE5yOsiHWU0vJWzcmzXwUISuc(Lcom/android/systemui/biometrics/AuthBiometricView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onError$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$WF3RgVIOlK7RYqAvt14uiLwyRTM(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jiecBSjCDZpGmvYHdFvTDqEMksQ(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m1SJ5XmbFfb9fxoQMu08fq3Wv8M(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateSize$5(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nX3sKkn-rg9G3GI_erF3EymQkRc(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateSize$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 255
    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/biometrics/AuthBiometricView$Injector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/biometrics/AuthBiometricView$Injector;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 260
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 179
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 236
    new-instance p2, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBackgroundClickListener:Landroid/view/View$OnClickListener;

    .line 261
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 262
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->biometric_dialog_error:I

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 262
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorError:I

    .line 264
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->biometric_dialog_gray:I

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 264
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    .line 267
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    .line 268
    iput-object p0, p3, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 270
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 272
    new-instance p1, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 278
    new-instance p1, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/AuthBiometricView;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->isDeviceCredentialAllowed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/biometrics/AuthBiometricView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private isDeviceCredentialAllowed()Z
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {p0}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 237
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    const-string v0, "BiometricPrompt/AuthBiometricView"

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const-string p0, "Ignoring background click after authenticated"

    .line 238
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 240
    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p0, "Ignoring background click during small dialog"

    .line 241
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const-string p0, "Ignoring background click during large dialog"

    .line 244
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getStateForAfterError()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->handleResetAfterError()V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x2

    .line 279
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->handleResetAfterHelp()V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$onError$8()V
    .locals 1

    .line 542
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$10(Landroid/view/View;)V
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$11(Landroid/view/View;)V
    .locals 0

    .line 643
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->startTransitionToCredentialUI()V

    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$12(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x6

    .line 647
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$13(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x2

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 652
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    .line 653
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 654
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$9(Landroid/view/View;)V
    .locals 0

    .line 635
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private synthetic lambda$updateSize$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private synthetic lambda$updateSize$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 352
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 353
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$updateSize$5(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 422
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 423
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method private static synthetic lambda$updateSize$6(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 440
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 441
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$updateState$7()V
    .locals 1

    .line 488
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private removePendingAnimations()V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 593
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 587
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .line 577
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 578
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 597
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorError:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 600
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 602
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected abstract getDelayAfterAuthenticatedDurationMs()I
.end method

.method getSize()I
    .locals 0

    .line 838
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    return p0
.end method

.method protected abstract getStateForAfterError()I
.end method

.method protected abstract handleResetAfterError()V
.end method

.method protected abstract handleResetAfterHelp()V
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 668
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 669
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAttachedToWindowInternal()V

    return-void
.end method

.method onAttachedToWindowInternal()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 680
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->isDeviceCredentialAllowed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 682
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mEffectiveUserId:I

    .line 683
    invoke-static {v0, v2}, Lcom/android/systemui/biometrics/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 699
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 695
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_pattern:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 687
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_pin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 703
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 705
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 708
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 711
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 716
    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    goto :goto_2

    :cond_4
    const-string v1, "state"

    .line 719
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 722
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string v1, "try_agian_visibility"

    .line 723
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 722
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 1

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 525
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 528
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 729
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 733
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 1

    const/4 v0, 0x2

    .line 520
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 538
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 541
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    .line 543
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getDelayAfterError()I

    move-result p0

    int-to-long v1, p0

    .line 541
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 609
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 610
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onFinishInflateInternal()V

    return-void
.end method

.method onFinishInflateInternal()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    .line 619
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getSubtitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    .line 620
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    .line 621
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    .line 622
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getIconHolderView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 623
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getIndicatorView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 626
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    .line 627
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getCancelButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCancelButton:Landroid/widget/Button;

    .line 628
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getUseCredentialButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    .line 631
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getConfirmButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    .line 632
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getTryAgainButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    .line 634
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onHelp(Ljava/lang/String;)V
    .locals 2

    .line 547
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Help received in size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricPrompt/AuthBiometricView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x3

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 800
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 801
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onLayoutInternal()V

    return-void
.end method

.method onLayoutInternal()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 812
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 813
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    .line 814
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 815
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->supportsSmallDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    goto :goto_1

    :cond_1
    const-string v1, "size"

    .line 818
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    .line 821
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string v1, "indicator_string"

    .line 822
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string v2, "hint_is_temporary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 824
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onHelp(Ljava/lang/String;)V

    goto :goto_1

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string v2, "error_is_temporary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 827
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAuthenticationFailed(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 788
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 789
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 790
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 794
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->onMeasureInternal(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 795
    iget p2, p1, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumWidth:I

    iget p1, p1, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumHeight:I

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method onMeasureInternal(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    .locals 8

    .line 747
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_5

    .line 749
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 751
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/systemui/R$id;->space_above_icon:I

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_0

    .line 753
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 754
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 752
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 756
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/systemui/R$id;->biometric_icon_frame:I

    if-ne v4, v5, :cond_1

    .line 757
    sget v4, Lcom/android/systemui/R$id;->biometric_icon:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 759
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 761
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 758
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 763
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/systemui/R$id;->biometric_icon:I

    const/high16 v7, -0x80000000

    if-ne v4, v5, :cond_2

    .line 765
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 766
    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 764
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 767
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/systemui/R$id;->button_bar:I

    if-ne v4, v5, :cond_3

    .line 769
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 770
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 768
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 774
    :cond_3
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 775
    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 773
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 778
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 779
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 783
    :cond_5
    new-instance p0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    .line 557
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "try_agian_visibility"

    .line 556
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 560
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "indicator_string"

    .line 559
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 562
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const-string v1, "error_is_temporary"

    .line 561
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 563
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    .line 564
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const-string v1, "hint_is_temporary"

    .line 563
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 565
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    const-string v0, "size"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBackgroundClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    return-void
.end method

.method public setEffectiveUserId(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mEffectiveUserId:I

    return-void
.end method

.method public setPanelController(Lcom/android/systemui/biometrics/AuthPanelController;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    return-void
.end method

.method public setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    return-void
.end method

.method public setRequireConfirmation(Z)V
    .locals 0

    .line 310
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUserId:I

    return-void
.end method

.method startTransitionToCredentialUI()V
    .locals 1

    const/4 v0, 0x3

    .line 662
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    .line 663
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method protected abstract supportsSmallDialog()Z
.end method

.method updateSize(I)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " New size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthBiometricView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v2, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->biometric_dialog_icon_padding:I

    .line 325
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 326
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v4}, Landroid/view/View;->setY(F)V

    .line 330
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    float-to-int v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 331
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v2, v1

    .line 332
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    iget v3, v3, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumWidth:I

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    .line 335
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    goto/16 :goto_0

    .line 336
    :cond_0
    iget v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    if-ne v4, v2, :cond_2

    if-ne p1, v3, :cond_2

    .line 337
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDialogSizeAnimating:Z

    if-eqz v1, :cond_1

    return-void

    .line 340
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDialogSizeAnimating:Z

    new-array v1, v3, [F

    .line 343
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 344
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    aput v4, v1, v0

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 345
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v3, [F

    .line 350
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 351
    new-instance v2, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x96

    .line 369
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 370
    new-instance v3, Lcom/android/systemui/biometrics/AuthBiometricView$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 401
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 402
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 404
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    iget v1, v0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumWidth:I

    iget v0, v0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumHeight:I

    const/16 v2, 0x96

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 408
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    iget v3, v2, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumWidth:I

    iget v2, v2, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumHeight:I

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    .line 411
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    .line 413
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$dimen;->biometric_dialog_medium_to_large_translation_offset:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    new-array v5, v3, [F

    .line 419
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v6

    aput v6, v5, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    sub-float/2addr v0, v1

    aput v0, v5, v2

    .line 418
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 421
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 425
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$2;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v3, [F

    .line 437
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 438
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result v1

    div-int/2addr v1, v3

    int-to-long v5, v1

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 444
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->setUseFullScreen(Z)V

    .line 445
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 446
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthPanelController;->getContainerWidth()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 447
    invoke-virtual {v5}, Lcom/android/systemui/biometrics/AuthPanelController;->getContainerHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    .line 448
    invoke-virtual {v6}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result v6

    .line 445
    invoke-virtual {v1, v2, v5, v6}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    .line 451
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 457
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result p1

    mul-int/2addr p1, v3

    div-int/2addr p1, v4

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 458
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 460
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown transition from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public updateState(I)V
    .locals 6

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthBiometricView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3

    const/4 v3, 0x5

    const/16 v5, 0x8

    if-eq p1, v3, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 479
    :cond_0
    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    if-eq v1, v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_authenticated:I

    .line 487
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthBiometricView-$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getDelayAfterAuthenticatedDurationMs()I

    move-result v2

    int-to-long v2, v2

    .line 488
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 493
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 494
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 495
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 496
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 497
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_tap_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 505
    :cond_3
    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    if-ne v1, v0, :cond_5

    .line 506
    invoke-virtual {p0, v3}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    goto :goto_0

    .line 471
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 472
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-eqz v0, :cond_5

    .line 473
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 515
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 516
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    return-void
.end method
