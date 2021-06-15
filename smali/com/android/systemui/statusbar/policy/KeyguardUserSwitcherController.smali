.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardUserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;
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

.field private final mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

.field private mBarState:I

.field private mBgAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDarkAmount:F

.field public final mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field private mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private mUserSwitcherOpen:Z


# direct methods
.method public static synthetic $r8$lambda$ND4kcQLU6aq_r1h7kRnlfmWRw0E(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->lambda$onInit$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 10

    move-object v6, p0

    move-object v7, p2

    move-object/from16 v8, p7

    .line 163
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/16 v0, -0x2710

    .line 88
    iput v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mCurrentUserId:I

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 257
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 165
    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mContext:Landroid/content/Context;

    move-object v0, p5

    .line 166
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v4, p6

    .line 167
    iput-object v4, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 168
    iput-object v8, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v0, p8

    .line 169
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v0, p9

    .line 170
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 171
    new-instance v9, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v9, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    .line 173
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object v1, v6, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object/from16 v2, p10

    invoke-direct {v0, v1, v8, v2}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 175
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBarState:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBarState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;F)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setDarkAmount(F)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isListAnimating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isUserSwitcherOpen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;ZZ)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setUserSwitcherOpened(ZZ)V

    return-void
.end method

.method private isListAnimating()Z
    .locals 1

    .line 375
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

    .line 427
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    return p0
.end method

.method private synthetic lambda$onInit$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isListAnimating()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setDarkAmount(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 364
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDarkAmount:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    return-void

    .line 367
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDarkAmount:F

    .line 368
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->setDarkAmount(F)V

    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    :cond_2
    return-void
.end method

.method private setUserSwitcherOpened(ZZ)V
    .locals 0

    .line 390
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    .line 391
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updateVisibilities(Z)V

    return-void
.end method

.method private updateVisibilities(Z)V
    .locals 5

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 400
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    const-wide/16 v1, 0x190

    const/4 v3, 0x2

    const-string v4, "alpha"

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 402
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$5;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$6;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 423
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->updateVisibilities(ZZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method public closeSwitcherIfOpenAndNotSimple(Z)Z
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isUserSwitcherOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setUserSwitcherOpened(ZZ)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public isSimpleUserSwitcher()Z
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result p0

    return p0
.end method

.method protected onInit()V
    .locals 2

    .line 180
    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_user_switcher_list:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 186
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->notifyDataSetChanged()V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 206
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setUserSwitcherOpened(ZZ)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->setAlpha(I)V

    return-void
.end method

.method refreshUserList()V
    .locals 12

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getCount()I

    move-result v1

    .line 267
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

    .line 279
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 281
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 282
    invoke-virtual {v8, v4, v7, v9}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    .line 284
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 285
    iget-boolean v10, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    if-eqz v4, :cond_1

    const-string v5, "Current user is not the first view in the list"

    .line 287
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    iget-object v5, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mCurrentUserId:I

    .line 292
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    invoke-virtual {v8, v11, v5, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    move v5, v11

    goto :goto_1

    .line 298
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    invoke-virtual {v8, v6, v11, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    .line 301
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDarkAmount:F

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->setDarkAmount(F)V

    if-nez v7, :cond_3

    .line 304
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    if-eq v7, v8, :cond_5

    .line 307
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v6, v8, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->replaceView(Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;I)V

    goto :goto_2

    .line 310
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

    .line 314
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x2710

    .line 315
    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mCurrentUserId:I

    :cond_7
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->isVisibilityAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setKeyguardUserSwitcherVisibility(IZZI)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IZZI)V

    return-void
.end method

.method public updatePosition(IIZ)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p2, p2

    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v0, v1, p2, v2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 337
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p2, v0, p1, v2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 340
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 341
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 342
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 343
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 344
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 345
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr p0, p1

    float-to-int p0, p0

    .line 343
    invoke-virtual {p2, p3, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->setGradientCenter(II)V

    return-void
.end method
