.class public Lcom/android/keyguard/LockIconViewController;
.super Lcom/android/systemui/util/ViewController;
.source "LockIconViewController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/LockIconView;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private final mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field private final mButton:Landroid/graphics/drawable/Drawable;

.field private mCanDismissLockScreen:Z

.field private mFaceAuthEnrolled:Z

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mHasUdfpsOrFaceAuthFeatures:Z

.field private mIsBouncerShowing:Z

.field private mIsDozing:Z

.field private mIsKeyguardShowing:Z

.field private final mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field private final mLockIcon:Landroid/graphics/drawable/Drawable;

.field private mQsExpanded:Z

.field private mRunningFPS:Z

.field private mShowButton:Z

.field private mShowLockIcon:Z

.field private mShowUnlockIcon:Z

.field private mStatusBarState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private mUdfpsEnrolled:Z

.field private final mUnlockIcon:Landroid/graphics/drawable/Drawable;

.field private mUserUnlockedWithBiometric:Z


# direct methods
.method public static synthetic $r8$lambda$0KE5gV910IOtGfPamp8s3PO4yKk(Lcom/android/keyguard/LockIconViewController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/LockIconViewController;->lambda$updateClickListener$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_891HhfMlnVNKbNs70X8TwY-R-8(Lcom/android/keyguard/LockIconViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/LockIconViewController;->lambda$updateClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gCRPPJecTykcJaaxF8mRKaILNFc(Lcom/android/keyguard/LockIconViewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/LockIconViewController;->lambda$new$2(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/LockIconView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/dump/DumpManager;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 249
    new-instance v0, Lcom/android/keyguard/LockIconViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LockIconViewController$1;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 318
    new-instance v0, Lcom/android/keyguard/LockIconViewController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LockIconViewController$2;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 333
    new-instance v0, Lcom/android/keyguard/LockIconViewController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LockIconViewController$3;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 355
    new-instance v0, Lcom/android/keyguard/LockIconViewController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LockIconViewController$4;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 379
    new-instance v0, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 105
    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 106
    iput-object p3, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 107
    iput-object p7, p0, Lcom/android/keyguard/LockIconViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 108
    iput-object p4, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 109
    iput-object p5, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 110
    iput-object p6, p0, Lcom/android/keyguard/LockIconViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 111
    iput-object p9, p0, Lcom/android/keyguard/LockIconViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 113
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$drawable;->circle_white:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    .line 114
    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mButton:Landroid/graphics/drawable/Drawable;

    .line 116
    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const p5, 0x10803d7

    .line 116
    invoke-virtual {p3, p5, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/android/systemui/R$dimen;->udfps_unlock_icon_inset:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-direct {p2, p3, p4}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const p6, 0x10803ce

    .line 120
    invoke-virtual {p3, p6, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mLockIcon:Landroid/graphics/drawable/Drawable;

    const-string p1, "LockIconViewController"

    .line 124
    invoke-virtual {p8, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/LockIconViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/LockIconViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mUserUnlockedWithBiometric:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/LockIconViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mRunningFPS:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/LockIconViewController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateKeyguardShowing()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsEnrolled:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mFaceAuthEnrolled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/LockIconViewController;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/keyguard/LockIconViewController;->mShowButton:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/LockIconViewController;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/LockIconViewController;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/LockIconViewController;)Landroid/view/View;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/keyguard/LockIconViewController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mIsBouncerShowing:Z

    return p1
.end method

.method private isLockScreen()Z
    .locals 2

    .line 278
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsBouncerShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mQsExpanded:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarState:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic lambda$new$2(Z)V
    .locals 0

    .line 380
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateClickListener()V

    return-void
.end method

.method private synthetic lambda$updateClickListener$0(Landroid/view/View;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->onAffordanceClick()Z

    return-void
.end method

.method private synthetic lambda$updateClickListener$1(Landroid/view/View;)Z
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->onAffordanceClick()Z

    move-result p0

    return p0
.end method

.method private onAffordanceClick()Z
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 200
    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mIsKeyguardShowing:Z

    .line 201
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    .line 202
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    return v0
.end method

.method private updateClickListener()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 286
    check-cast v0, Lcom/android/keyguard/LockIconView;

    new-instance v1, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/LockIconView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    new-instance v1, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateKeyguardShowing()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 297
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsKeyguardShowing:Z

    return-void
.end method

.method private updateVisibility()V
    .locals 5

    .line 215
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsKeyguardShowing:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsEnrolled:Z

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/LockIconViewController;->mFaceAuthEnrolled:Z

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 221
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mRunningFPS:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mUserUnlockedWithBiometric:Z

    if-nez v0, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->isLockScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowButton:Z

    .line 223
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mFaceAuthEnrolled:Z

    iget-boolean v4, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->isLockScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    .line 224
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsEnrolled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->isLockScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mFaceAuthEnrolled:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    .line 227
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateClickListener()V

    .line 228
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowButton:Z

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_udfps_disabled_button:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 233
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    if-eqz v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_unlock_button:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 238
    :cond_5
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    if-eqz v0, :cond_6

    .line 239
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mLockIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_lock_icon:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/LockIconView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    .line 216
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mShowBouncerButton: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mShowButton:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mShowUnlockIcon: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mShowLockIcon: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mHasUdfpsOrFaceAuthFeatures: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mHasUdfpsOrFaceAuthFeatures:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mUdfpsEnrolled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsEnrolled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFaceAuthEnrolled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mFaceAuthEnrolled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsKeyguardShowing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mIsKeyguardShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsDozing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsBouncerShowing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mIsBouncerShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mUserUnlockedWithBiometric: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mUserUnlockedWithBiometric:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mRunningFPS: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mRunningFPS:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCanDismissLockScreen: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mStatusBarState: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarState:I

    invoke-static {p3}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mQsExpanded: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/LockIconViewController;->mQsExpanded:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getTop()F
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/LockIconView;->getLocationTop()F

    move-result p0

    return p0
.end method

.method protected onInit()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->getFaceAuthSensorLocation()Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 137
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/LockIconViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v3}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsSensorLocation()Landroid/graphics/PointF;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    .line 138
    :goto_3
    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mHasUdfpsOrFaceAuthFeatures:Z

    if-nez v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_4
    if-eqz v3, :cond_5

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsProps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 146
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/LockIconView;

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    int-to-float v4, v4

    iget v5, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    invoke-virtual {v1, v3, v0}, Lcom/android/keyguard/LockIconView;->setLocation(Landroid/graphics/PointF;I)V

    goto :goto_4

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$array;->config_lock_icon_props:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v3, 0x3

    if-eqz v0, :cond_6

    .line 151
    array-length v4, v0

    if-ge v4, v3, :cond_7

    :cond_6
    const-string v0, "LockIconViewController"

    const-string v4, "lock icon position should be setup in config under config_lock_icon_props"

    .line 152
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [I

    .line 154
    fill-array-data v0, :array_0

    .line 156
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/LockIconView;

    new-instance v4, Landroid/graphics/PointF;

    aget v5, v0, v2

    int-to-float v5, v5

    aget v1, v0, v1

    int-to-float v1, v1

    invoke-direct {v4, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {v3, v4, v0}, Lcom/android/keyguard/LockIconView;->setLocation(Landroid/graphics/PointF;I)V

    .line 159
    :goto_4
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateKeyguardShowing()V

    .line 160
    iput-boolean v2, p0, Lcom/android/keyguard/LockIconViewController;->mUserUnlockedWithBiometric:Z

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsBouncerShowing:Z

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mRunningFPS:Z

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarState:I

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$attr;->wallpaperTextColorAccent:I

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mLockIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 178
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected onViewDetached()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mQsExpanded:Z

    .line 211
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    return-void
.end method
