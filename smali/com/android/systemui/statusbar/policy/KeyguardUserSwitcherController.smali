.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardUserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;,
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserSwitcherListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field private final mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

.field private mBarState:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentUserIsGuest:Z

.field private mDarkAmount:F

.field public final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mEndGuestButton:Landroid/widget/LinearLayout;

.field private final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardUserSwitcherCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserSwitcherListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field private mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private mUserSwitcherOpen:Z


# direct methods
.method public static synthetic $r8$lambda$Eogc9g1QBB3lAHnhtekNDbn5D0s(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->lambda$updateVisibilities$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$P0iGOzQGgSigvh7_1zFQ_uoBLgQ(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->lambda$onInit$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fjoZmH_poymDg8_dfC2OZWsT5aQ(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->lambda$updateVisibilities$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$hOOqSuSIH58hjEDF1DnVH_t5lAI(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->lambda$onInit$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 9

    move-object v6, p0

    move-object/from16 v7, p7

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/16 v0, -0x2710

    .line 86
    iput v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mCurrentUserId:I

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 109
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 249
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Landroid/database/DataSetObserver;

    move-object v1, p2

    .line 164
    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mContext:Landroid/content/Context;

    move-object v0, p5

    .line 165
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object v4, p6

    .line 166
    iput-object v4, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 167
    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v0, p8

    .line 168
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v0, p9

    .line 169
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 170
    new-instance v8, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    move-object v0, v8

    move-object v2, p3

    move-object v3, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v8, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    .line 172
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object v1, v6, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object/from16 v2, p10

    invoke-direct {v0, v1, v7, v2}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBarState:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBarState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;F)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setDarkAmount(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)Z
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isListAnimating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)Z
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isUserSwitcherOpen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;ZZ)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setUserSwitcherOpened(ZZ)V

    return-void
.end method

.method private isListAnimating()Z
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->isVisibilityAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->isAnimating()Z

    move-result p0

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

.method private isUserSwitcherOpen()Z
    .locals 0

    .line 459
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    return p0
.end method

.method private synthetic lambda$onInit$0(Landroid/view/View;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showExitGuestDialog(I)V

    return-void
.end method

.method private synthetic lambda$onInit$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isListAnimating()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateVisibilities$2()V
    .locals 1

    .line 428
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$updateVisibilities$3()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 447
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private notifyUserSwitcherStateChanged()V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUserSwitcherCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserSwitcherListener;

    if-eqz v0, :cond_0

    .line 470
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserSwitcherListener;->onKeyguardUserSwitcherChanged(Z)V

    :cond_0
    return-void
.end method

.method private setDarkAmount(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 359
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDarkAmount:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    return-void

    .line 362
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDarkAmount:F

    .line 363
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->setDarkAmount(F)V

    .line 364
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez v0, :cond_3

    .line 366
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    :cond_3
    return-void
.end method

.method private setUserSwitcherOpened(ZZ)V
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    .line 408
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    if-eq p1, v0, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->notifyUserSwitcherStateChanged()V

    .line 412
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updateVisibilities(Z)V

    return-void
.end method

.method private updateVisibilities(Z)V
    .locals 7

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 418
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    const-wide/16 v1, 0x168

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mCurrentUserIsGuest:Z

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 424
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 426
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    .line 427
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 438
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-eq v6, v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 442
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 443
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 444
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    .line 445
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 455
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->updateVisibilities(ZZ)V

    return-void
.end method


# virtual methods
.method public closeSwitcherIfOpenAndNotSimple(Z)Z
    .locals 2

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isUserSwitcherOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setUserSwitcherOpened(ZZ)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public getUserIconHeight()I
    .locals 1

    .line 317
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isSimpleUserSwitcher()Z
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result p0

    return p0
.end method

.method protected onInit()V
    .locals 2

    .line 178
    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_user_switcher_list:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 183
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    sget v1, Lcom/android/systemui/R$id;->end_guest_button:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mEndGuestButton:Landroid/widget/LinearLayout;

    .line 185
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method refreshUserList()V
    .locals 12

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getCount()I

    move-result v1

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const-string v6, "KeyguardUserSwitcherController"

    if-ge v4, v2, :cond_6

    if-ge v4, v1, :cond_4

    const/4 v7, 0x0

    if-ge v4, v0, :cond_0

    .line 271
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 273
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 274
    invoke-virtual {v8, v4, v7, v9}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    .line 276
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 277
    iget-boolean v10, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    if-eqz v4, :cond_1

    const-string v5, "Current user is not the first view in the list"

    .line 279
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    iget-object v5, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mCurrentUserId:I

    .line 283
    iget-boolean v5, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mCurrentUserIsGuest:Z

    .line 285
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    invoke-virtual {v8, v11, v5, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    move v5, v11

    goto :goto_1

    .line 291
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    invoke-virtual {v8, v6, v11, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    .line 294
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDarkAmount:F

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->setDarkAmount(F)V

    if-nez v7, :cond_3

    .line 297
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    if-eq v7, v8, :cond_5

    .line 300
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v6, v8, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->replaceView(Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;I)V

    goto :goto_2

    .line 303
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->removeLastView()V

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-nez v5, :cond_7

    const-string v0, "Current user is not listed"

    .line 307
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x2710

    .line 308
    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mCurrentUserId:I

    .line 309
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mCurrentUserIsGuest:Z

    :cond_7
    return-void
.end method

.method public removeCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUserSwitcherCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->isVisibilityAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserSwitcherListener;)V
    .locals 1

    .line 392
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUserSwitcherCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setKeyguardUserSwitcherVisibility(IZZI)V
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IZZI)V

    return-void
.end method

.method public updatePosition(IIZ)V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p2, p2

    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v0, v1, p2, v2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 339
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    sget-object p2, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p0, p2, p1, v2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return-void
.end method
