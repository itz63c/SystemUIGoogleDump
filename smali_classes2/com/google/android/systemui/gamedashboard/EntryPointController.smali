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


# static fields
.field private static final DISABLED:Ljava/lang/Boolean;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mDarkIconColor:I

.field private final mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

.field private mGameAppName:Ljava/lang/String;

.field private mGamePackageName:Ljava/lang/String;

.field private mHideAnimator:Landroid/animation/Animator;

.field private final mLightContext:Landroid/content/Context;

.field private mLightIconColor:I

.field private mListenersRegistered:Z

.field private mNavBarMode:I

.field private final mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

.field private final mScreenshotHandler:Landroid/os/Handler;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private mShouldShow:Z

.field private final mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

.field private final mViewRippler:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;


# direct methods
.method public static synthetic $r8$lambda$VcVcWE2qGRM_B0Sxv8eSSgrgnCU(Lcom/google/android/systemui/gamedashboard/EntryPointController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->onEntryPointClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aSkzRb45JgyaIm8wC1N5NXgHoSs(Lcom/google/android/systemui/gamedashboard/EntryPointController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->onScreenRecordClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hPlLDYO08IZPntflgLy9dspFxHQ(Lcom/google/android/systemui/gamedashboard/EntryPointController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->onScreenshotClicked(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->DISABLED:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Landroid/os/Handler;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/google/android/systemui/gamedashboard/EntryPointController$1;)V

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mViewRippler:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    .line 95
    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 96
    invoke-virtual {p2, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mNavBarMode:I

    .line 98
    new-instance p2, Landroid/view/ContextThemeWrapper;

    sget p3, Lcom/android/systemui/R$attr;->lightIconTheme:I

    .line 99
    invoke-static {p1, p3}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p2, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mLightContext:Landroid/content/Context;

    .line 100
    new-instance p2, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    iget-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    .line 101
    invoke-virtual {p2, p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    .line 102
    new-instance p3, Lcom/google/android/systemui/gamedashboard/EntryPointController-$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    invoke-virtual {p2, p3}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setEntryPointOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance p3, Lcom/google/android/systemui/gamedashboard/EntryPointController-$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController-$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    invoke-virtual {p2, p3}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setScreenRecordOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance p3, Lcom/google/android/systemui/gamedashboard/EntryPointController-$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController-$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    invoke-virtual {p2, p3}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setScreenshotOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance p2, Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    invoke-direct {p2, p0, v1}, Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/google/android/systemui/gamedashboard/EntryPointController$1;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    .line 107
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    .line 109
    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    .line 110
    new-instance p2, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {p2, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 111
    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mScreenshotHandler:Landroid/os/Handler;

    .line 113
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->onRunningTaskChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->onRunningTaskChange()V

    return-void
.end method

.method private onEntryPointClicked(Landroid/view/View;)V
    .locals 2

    .line 268
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->createIntentForStart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 269
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 271
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 272
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 273
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private onRunningTaskChange()V
    .locals 5

    .line 245
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 252
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to query application info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameDashboard/EntryButtonController"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v1, :cond_0

    return-void

    .line 259
    :cond_0
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    .line 260
    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGamePackageName:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameAppName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private onScreenRecordClicked(Landroid/view/View;)V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->handleClick()V

    return-void
.end method

.method private onScreenshotClicked(Landroid/view/View;)V
    .locals 7

    .line 281
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    .line 282
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mScreenshotHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->getCurrentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDarkIconColor()I
    .locals 0

    .line 240
    iget p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mDarkIconColor:I

    return p0
.end method

.method public getGameAppName()Ljava/lang/String;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getLightIconColor()I
    .locals 0

    .line 237
    iget p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mLightIconColor:I

    return p0
.end method

.method public init(Ljava/util/function/Consumer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 125
    iput p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mLightIconColor:I

    .line 126
    iput p3, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mDarkIconColor:I

    .line 127
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setVisibilityChangedCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 229
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

    .line 119
    iput p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mNavBarMode:I

    return-void
.end method

.method public registerListeners()V
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    .line 205
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method public setButtonState(ZZ)V
    .locals 2

    .line 138
    sget-object v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->DISABLED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 146
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    if-nez v0, :cond_2

    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_5

    .line 156
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 157
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_4
    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 162
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 164
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mViewRippler:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->start(Landroid/view/View;)V

    .line 165
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mNavBarMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->show(Z)Z

    goto :goto_0

    .line 167
    :cond_5
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mViewRippler:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->stop()V

    if-eqz p2, :cond_7

    .line 171
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 172
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    .line 174
    :cond_6
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    return-void

    .line 179
    :cond_7
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    const/4 v1, 0x0

    aput v1, p1, p2

    const-string p2, "alpha"

    .line 183
    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 185
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    new-instance p2, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    .line 194
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method public setCanShow(Z)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setCanShow(Z)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setDarkIntensity(F)V

    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    .line 215
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method
