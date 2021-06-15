.class public Lcom/google/android/systemui/gamedashboard/EntryPointController;
.super Lcom/android/systemui/navigationbar/NavigationBarOverlayController;
.source "EntryPointController.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;,
        Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

.field private final mGameManager:Landroid/app/GameManager;

.field private final mGameModeDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

.field private mGamePackageName:Ljava/lang/String;

.field private mGameTaskId:I

.field private final mHasGameOverlay:Z

.field private mHideAnimator:Landroid/animation/Animator;

.field private mIsImmersive:Z

.field private mListenersRegistered:Z

.field private mNavBarMode:I

.field public final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private final mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

.field private mShouldShow:Z

.field private final mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

.field private final mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mViewRippler:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;


# direct methods
.method public static synthetic $r8$lambda$VcVcWE2qGRM_B0Sxv8eSSgrgnCU(Lcom/google/android/systemui/gamedashboard/EntryPointController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->onEntryPointClicked(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Landroid/content/pm/PackageManager;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/ToastController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 3

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance p1, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/google/android/systemui/gamedashboard/EntryPointController$1;)V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mViewRippler:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    .line 90
    new-instance v1, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 120
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 121
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/GameManager;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/GameManager;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameManager:Landroid/app/GameManager;

    .line 122
    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameModeDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    .line 123
    invoke-virtual {p5, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mNavBarMode:I

    const-string p2, "com.google.android.feature.GAME_OVERLAY"

    .line 125
    invoke-virtual {p7, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-boolean p2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHasGameOverlay:Z

    .line 127
    new-instance p2, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    iget-object p4, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p4}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    .line 128
    invoke-virtual {p2, p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    .line 129
    new-instance p4, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    invoke-virtual {p2, p4}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setEntryPointOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance p2, Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    invoke-direct {p2, p0, v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/google/android/systemui/gamedashboard/EntryPointController$1;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    .line 132
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    .line 134
    iput-object p8, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    .line 135
    invoke-virtual {p6, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 136
    iput-object p10, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 138
    iput-object p9, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    .line 140
    new-instance p1, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 153
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->onRunningTaskChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Lcom/google/android/systemui/gamedashboard/ShortcutBarController;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/android/systemui/gamedashboard/EntryPointController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameTaskId:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mIsImmersive:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/systemui/gamedashboard/EntryPointController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mIsImmersive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Lcom/google/android/systemui/gamedashboard/GameModeDndController;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameModeDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->onRunningTaskChange()V

    return-void
.end method

.method private onEntryPointClicked(Landroid/view/View;)V
    .locals 6

    .line 323
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    .line 324
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_LAUNCH:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 325
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->createIntentForStart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 326
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$anim;->game_dashboard_fade_in:I

    sget v2, Lcom/android/systemui/R$anim;->game_dashboard_fade_out:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 330
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 331
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 332
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private onRunningTaskChange()V
    .locals 5

    .line 282
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 286
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGamePackageName:Ljava/lang/String;

    .line 290
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string v2, "com.google.android.play.games"

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    .line 298
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 299
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    .line 300
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    .line 301
    :goto_2
    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameModeDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHasGameOverlay:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->setGameModeDndRuleActive(Z)V

    .line 303
    iget v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameTaskId:I

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v1, v2, :cond_7

    .line 304
    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    if-eqz v1, :cond_5

    .line 306
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameManager:Landroid/app/GameManager;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGamePackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/GameManager;->getGameMode(Ljava/lang/String;)I

    move-result v1

    .line 307
    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameModeDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-virtual {v3}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isGameModeDndOn()Z

    move-result v3

    .line 308
    iget-object v4, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-virtual {v4, v2, v1, v3}, Lcom/google/android/systemui/gamedashboard/ToastController;->showLaunchText(IIZ)V

    .line 309
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iget-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mIsImmersive:Z

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->updateVisibility(Z)V

    .line 310
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->isFpsVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 311
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->registerFps(I)V

    goto :goto_4

    .line 314
    :cond_5
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->hide()V

    .line 317
    :cond_6
    :goto_4
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameTaskId:I

    :cond_7
    return-void
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->getCurrentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getGamePackageName()Ljava/lang/String;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGamePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getGameTaskId()I
    .locals 0

    .line 277
    iget p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameTaskId:I

    return p0
.end method

.method public init(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setVisibilityChangedCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isNavigationBarOverlayEnabled()Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHasGameOverlay:Z

    return p0
.end method

.method public isVisible()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mNavBarMode:I

    return-void
.end method

.method public registerListeners()V
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    .line 250
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method public setButtonState(ZZ)V
    .locals 3

    if-nez p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    if-nez v0, :cond_1

    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_4

    .line 193
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 199
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 201
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mViewRippler:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->start(Landroid/view/View;)V

    .line 202
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mNavBarMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->show(Z)Z

    goto :goto_0

    .line 204
    :cond_4
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mViewRippler:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->stop()V

    if-eqz p2, :cond_6

    .line 208
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 209
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    .line 211
    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    return-void

    .line 216
    :cond_6
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x1

    new-array p2, p1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p2, v1

    const-string v1, "alpha"

    .line 220
    invoke-static {v0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 225
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 226
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_8
    const-wide/16 v0, 0x64

    .line 229
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 230
    sget-object p1, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    new-instance p1, Lcom/google/android/systemui/gamedashboard/EntryPointController$3;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$3;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 238
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    .line 239
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method public setCanShow(Z)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setCanShow(Z)V

    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    .line 260
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method
