.class public Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;
.super Ljava/lang/Object;
.source "StartingSurfaceDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;,
        Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "StartingSurfaceDrawer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

.field private final mStartingWindowRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CBhMC_9KDOee95Dsk0VjG00I7zA(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->lambda$makeTaskSnapshotWindow$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DBsACOa3Ds8Ja3bkXwG4DicFo2Q([I[ZLandroid/content/res/TypedArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->lambda$addSplashScreenStartingWindow$0([I[ZLandroid/content/res/TypedArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mOamfXSUulppOgngrcEowEO5axk(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->lambda$postAddWindow$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nywSmm8U3bDlIyAFkybdpFAn8x8(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->lambda$makeTaskSnapshotWindow$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rxaXdYyI864kTWcemRcshUF11Ug(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;ILandroid/window/SplashScreenView;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->lambda$postAddWindow$4(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;ILandroid/window/SplashScreenView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 82
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mContext:Landroid/content/Context;

    .line 83
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 84
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/wm/shell/R$integer;->max_starting_window_intro_icon_anim_duration:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 88
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    return-void
.end method

.method private addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 210
    iget-object v2, v1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 211
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_0

    return-void

    .line 216
    :cond_0
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 217
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v5, :cond_1

    return-void

    .line 221
    :cond_1
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 222
    iget v6, v3, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    .line 224
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 225
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 226
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move-object v14, v6

    move v6, v5

    move-object v5, v14

    .line 229
    :cond_2
    iget-object v7, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mContext:Landroid/content/Context;

    .line 231
    iget v1, v1, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    if-eqz v1, :cond_3

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v1

    goto :goto_0

    :cond_4
    const v1, 0x10302e3

    .line 242
    :goto_0
    invoke-direct {p0, v7, v4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_5

    return-void

    .line 248
    :cond_5
    invoke-virtual {v7}, Landroid/content/Context;->getThemeResId()I

    move-result v8

    if-ne v1, v8, :cond_6

    if-eqz v6, :cond_7

    .line 250
    :cond_6
    :try_start_0
    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 252
    invoke-virtual {v7, v1}, Landroid/content/Context;->setTheme(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :catch_0
    :cond_7
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_9

    .line 259
    sget-object v11, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v8, v11}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 264
    invoke-virtual {v7, v8}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v8

    .line 265
    invoke-virtual {v8, v1}, Landroid/content/Context;->setTheme(I)V

    .line 266
    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v8, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 268
    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    if-eqz v11, :cond_8

    .line 269
    invoke-virtual {v8, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_8

    move-object v7, v8

    .line 279
    :cond_8
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    :cond_9
    iget v1, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    const/high16 v1, 0x1000000

    goto :goto_1

    :cond_a
    move v1, v10

    :goto_1
    new-array v8, v9, [Z

    new-array v11, v9, [I

    .line 289
    new-instance v12, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda4;

    invoke-direct {v12, v11, v8}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda4;-><init>([I[Z)V

    invoke-direct {p0, v7, v12}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->getWindowResFromContext(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 294
    aget-boolean v8, v8, v10

    if-eqz v8, :cond_b

    const/high16 v8, 0x100000

    or-int/2addr v1, v8

    .line 298
    :cond_b
    new-instance v8, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v8, v7}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {v8, v9}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    .line 301
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v6, v13}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 304
    invoke-virtual {v8, v6, v9}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 306
    :cond_c
    invoke-virtual {v8, v5, v10}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    :goto_2
    const/4 v5, 0x3

    .line 309
    invoke-virtual {v8, v5}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    if-nez v4, :cond_d

    const/high16 v4, 0x80000

    or-int/2addr v1, v4

    :cond_d
    or-int/lit8 v1, v1, 0x10

    const/16 v4, 0x8

    or-int/2addr v1, v4

    const/high16 v5, 0x20000

    or-int/2addr v1, v5

    .line 323
    invoke-virtual {v8, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 332
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 333
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v5

    .line 334
    invoke-virtual {v8, v1}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    .line 335
    invoke-virtual {v8, v5}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    const/4 v5, -0x1

    .line 337
    invoke-virtual {v8, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 340
    invoke-virtual {v8}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    move-object/from16 v6, p2

    .line 341
    iput-object v6, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 342
    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v12, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 343
    invoke-virtual {v8}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v12

    invoke-virtual {v12, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 345
    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v4, v9

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    .line 347
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v12, 0x20000000

    or-int/2addr v4, v12

    .line 350
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 352
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 353
    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 354
    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_3

    :cond_e
    move v9, v10

    :goto_3
    if-nez v9, :cond_f

    .line 356
    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 359
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Splash Screen "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    aget v9, v11, v10

    .line 361
    invoke-virtual {v4, v8, v7, v1, v9}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->makeSplashScreenContentView(Landroid/view/Window;Landroid/content/Context;II)Landroid/window/SplashScreenView;

    move-result-object v9

    if-nez v9, :cond_10

    .line 364
    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding splash screen window for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 368
    :cond_10
    invoke-virtual {v8}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 374
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/WindowManager;

    .line 375
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    move-object v0, p0

    move-object/from16 v2, p2

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->postAddWindow(ILandroid/os/IBinder;Landroid/view/View;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method private getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 0

    if-nez p2, :cond_0

    return-object p1

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getWindowResFromContext(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/res/TypedArray;",
            ">;)V"
        }
    .end annotation

    .line 480
    sget-object p0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 481
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 482
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static synthetic lambda$addSplashScreenStartingWindow$0([I[ZLandroid/content/res/TypedArray;)V
    .locals 2

    const/16 v0, 0x2f

    const/4 v1, 0x0

    .line 291
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, p0, v1

    const/16 p0, 0xe

    .line 292
    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    aput-boolean p0, p1, v1

    return-void
.end method

.method private synthetic lambda$makeTaskSnapshotWindow$1(I)V
    .locals 0

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowSynced(I)V

    return-void
.end method

.method private synthetic lambda$makeTaskSnapshotWindow$2(I)V
    .locals 0

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowSynced(I)V

    return-void
.end method

.method private synthetic lambda$postAddWindow$3(I)V
    .locals 0

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowSynced(I)V

    return-void
.end method

.method private synthetic lambda$postAddWindow$4(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;ILandroid/window/SplashScreenView;)V
    .locals 4

    const-string v0, "view not successfully added to wm, removing view"

    const/4 v1, 0x0

    .line 428
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 441
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-nez p3, :cond_0

    .line 442
    :goto_0
    sget-object p3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 438
    :try_start_1
    sget-object v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " failed creating starting window"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 441
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :catch_1
    move-exception p3

    .line 431
    :try_start_2
    sget-object v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " already running, starting window not displayed. "

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p3}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 431
    invoke-static {v2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_1

    .line 441
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 448
    invoke-virtual {p0, p5}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowSynced(I)V

    .line 449
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p5}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;I)V

    const-wide/16 v0, 0x7d0

    invoke-interface {p1, p3, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 450
    new-instance p1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p6}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;-><init>(Landroid/view/View;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Landroid/window/SplashScreenView;)V

    .line 452
    invoke-virtual {p6}, Landroid/window/SplashScreenView;->startIntroAnimation()V

    .line 453
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void

    :goto_2
    if-eqz p2, :cond_3

    .line 441
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-nez p3, :cond_3

    .line 442
    sget-object p3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 446
    :cond_3
    throw p0
.end method

.method private makeTaskSnapshotWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Landroid/window/TaskSnapshot;)V
    .locals 3

    .line 383
    iget-object v0, p1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 384
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;I)V

    invoke-static {p1, p2, p3, v1, v2}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->create(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Landroid/window/TaskSnapshot;Lcom/android/wm/shell/common/ShellExecutor;Ljava/lang/Runnable;)Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    move-result-object p1

    .line 386
    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;I)V

    const-wide/16 v1, 0x7d0

    invoke-interface {p2, p3, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 387
    new-instance p2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;-><init>(Landroid/view/View;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Landroid/window/SplashScreenView;)V

    .line 389
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 3

    .line 198
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;-><init>(Landroid/window/StartingWindowInfo;)V

    .line 200
    iget v1, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;->mPreferredType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 203
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 204
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->makeTaskSnapshotWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Landroid/window/TaskSnapshot;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public copySplashScreenView(I)V
    .locals 1

    .line 407
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    if-eqz p0, :cond_0

    .line 409
    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$000(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/window/SplashScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$000(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/window/SplashScreenView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->isCopyable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$000(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/window/SplashScreenView;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;-><init>(Landroid/window/SplashScreenView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityTaskManager;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    return-void
.end method

.method protected postAddWindow(ILandroid/os/IBinder;Landroid/view/View;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;Landroid/window/SplashScreenView;)V
    .locals 10

    move-object v1, p0

    .line 425
    iget-object v8, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v9, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda3;

    move-object v0, v9

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p2

    move v6, p1

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;ILandroid/window/SplashScreenView;)V

    invoke-interface {v8, v9}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeStartingWindow(I)V
    .locals 0

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowSynced(I)V

    return-void
.end method

.method protected removeWindowSynced(I)V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    if-eqz v0, :cond_2

    .line 461
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$100(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 465
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$100(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    .line 466
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 467
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$100(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 469
    :cond_0
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$200(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 473
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$200(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->remove()V

    .line 475
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    return-void
.end method
