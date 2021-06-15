.class public Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;
.super Ljava/lang/Object;
.source "StartingSurfaceDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;,
        Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLE_REVEAL_ANIMATION:Z

.field static final TAG:Ljava/lang/String; = "StartingSurfaceDrawer"


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

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
.method public static synthetic $r8$lambda$BUh4N9u-3QVN8KeM4TsMsyU4mMo(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$CBhMC_9KDOee95Dsk0VjG00I7zA(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->lambda$makeTaskSnapshotWindow$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KkVvtj60PxM7koDSkL3Z6f3EFH0(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;ILcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->lambda$addSplashScreenStartingWindow$1(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;ILcom/android/internal/policy/PhoneWindow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v8vYZO0y-dMWJo-sShep4pSmnFQ(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->lambda$removeWindowSynced$3(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.debug.enable_reveal_animation"

    const/4 v1, 0x0

    .line 106
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->DEBUG_ENABLE_REVEAL_ANIMATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 112
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mContext:Landroid/content/Context;

    .line 113
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 114
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 115
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-direct {v0, p1, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/TransactionPool;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 116
    new-instance p1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;)V

    invoke-interface {p2, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 0

    if-nez p2, :cond_0

    return-object p1

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addSplashScreenStartingWindow$1(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;ILcom/android/internal/policy/PhoneWindow;)V
    .locals 2

    .line 302
    invoke-virtual {p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;->get()Landroid/window/SplashScreenView;

    move-result-object p1

    .line 303
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 309
    :try_start_0
    invoke-virtual {p3, p1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 310
    invoke-virtual {p1, p3}, Landroid/window/SplashScreenView;->cacheRootWindow(Landroid/view/Window;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    sget-object p3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed set content view to starting window at taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 317
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$400(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;Landroid/window/SplashScreenView;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$makeTaskSnapshotWindow$2(I)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowNoAnimate(I)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 116
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private synthetic lambda$removeWindowSynced$3(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V
    .locals 1

    .line 458
    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$200(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowInner(Landroid/view/View;Z)V

    return-void
.end method

.method private removeWindowInner(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/16 p0, 0x8

    .line 485
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 487
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_1

    .line 489
    invoke-interface {p0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private removeWindowNoAnimate(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 441
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowSynced(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private saveSplashScreenRecord(ILandroid/view/View;)V
    .locals 2

    .line 435
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;-><init>(Landroid/view/View;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V

    .line 437
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 144
    iget-object v2, v1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 145
    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_0

    return-void

    .line 150
    :cond_0
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 151
    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_1

    return-void

    .line 155
    :cond_1
    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 156
    iget v5, v6, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    .line 158
    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 159
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 160
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move-object/from16 v16, v5

    move v5, v4

    move-object/from16 v4, v16

    .line 163
    :cond_2
    iget v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 164
    iget-object v7, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mContext:Landroid/content/Context;

    .line 166
    iget v8, v1, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    if-eqz v8, :cond_3

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v8

    goto :goto_0

    :cond_4
    const v8, 0x10302e3

    .line 171
    :goto_0
    sget-object v10, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addSplashScreen "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": nonLocalizedLabel="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " theme="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " task= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 171
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {v0, v7, v3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_5

    return-void

    .line 183
    :cond_5
    invoke-virtual {v7}, Landroid/content/Context;->getThemeResId()I

    move-result v11

    if-ne v8, v11, :cond_6

    if-eqz v5, :cond_7

    .line 185
    :cond_6
    :try_start_0
    iget-object v11, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x4

    iget v13, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 186
    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    .line 185
    invoke-virtual {v7, v11, v12, v13}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    .line 187
    invoke-virtual {v7, v8}, Landroid/content/Context;->setTheme(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 195
    :cond_7
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 196
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_9

    .line 198
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addSplashScreen: creating context based on task Configuration "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " for splash screen"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v7, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v11

    .line 202
    invoke-virtual {v11, v8}, Landroid/content/Context;->setTheme(I)V

    .line 203
    sget-object v8, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v11, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 205
    invoke-virtual {v8, v13, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    if-eqz v14, :cond_8

    .line 207
    :try_start_1
    invoke-virtual {v11, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addSplashScreen: apply overrideConfig"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to starting window resId="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v11

    goto :goto_1

    :catch_0
    move-exception v0

    .line 218
    sget-object v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed creating starting window for overrideConfig at taskId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 222
    :cond_8
    :goto_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :cond_9
    move-object v2, v7

    .line 225
    new-instance v10, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v10, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v10, v13}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    .line 228
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v11, 0x0

    .line 229
    invoke-virtual {v7, v5, v11}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 232
    invoke-virtual {v10, v5, v13}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 234
    :cond_a
    invoke-virtual {v10, v4, v12}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    :goto_2
    const/high16 v4, 0x1000000

    .line 238
    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v2, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v8, 0xe

    .line 239
    invoke-virtual {v5, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_b

    const/high16 v4, 0x1100000

    .line 242
    :cond_b
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v3, :cond_c

    .line 248
    iget-boolean v1, v1, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    if-eqz v1, :cond_c

    const/high16 v1, 0x80000

    or-int/2addr v4, v1

    :cond_c
    const v1, 0x20018

    or-int/2addr v1, v4

    .line 259
    invoke-virtual {v10, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 261
    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 262
    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v3

    .line 263
    invoke-virtual {v10, v1}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    .line 264
    invoke-virtual {v10, v3}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    .line 266
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    const/4 v1, 0x3

    .line 267
    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x1

    .line 268
    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 269
    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v15, p2

    .line 270
    iput-object v15, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 271
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, v14, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 272
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 274
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000000

    or-int/2addr v1, v3

    .line 277
    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 278
    iput v13, v14, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 280
    invoke-virtual {v7}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_d

    .line 281
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 284
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Splash Screen "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 299
    new-instance v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;

    invoke-direct {v1, v11}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;)V

    .line 300
    new-instance v12, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda2;

    invoke-direct {v12, v0, v1, v9, v10}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;ILcom/android/internal/policy/PhoneWindow;)V

    .line 320
    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 321
    new-instance v8, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda4;

    invoke-direct {v8, v1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;)V

    move-object v4, v2

    move/from16 v5, p3

    move v7, v9

    .line 320
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createContentView(Landroid/content/Context;ZLandroid/content/pm/ActivityInfo;ILjava/util/function/Consumer;)V

    .line 324
    :try_start_2
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 325
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/WindowManager;

    move-object/from16 v1, p0

    move v2, v9

    move-object/from16 v3, p2

    move-object v6, v14

    .line 326
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->postAddWindow(ILandroid/os/IBinder;Landroid/view/View;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    .line 334
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v12, v11}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 339
    sget-object v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed creating starting window at taskId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    :catch_2
    move-exception v0

    .line 189
    sget-object v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed creating package context with package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public copySplashScreenView(I)V
    .locals 3

    .line 396
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    if-eqz p0, :cond_0

    .line 398
    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$100(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/window/SplashScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$100(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/window/SplashScreenView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->isCopyable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$100(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/window/SplashScreenView;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;-><init>(Landroid/window/SplashScreenView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 405
    :goto_0
    sget-object p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copying splash screen window view for task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " parcelable? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityTaskManager;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    return-void
.end method

.method makeTaskSnapshotWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Landroid/window/TaskSnapshot;)V
    .locals 3

    .line 373
    iget-object v0, p1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 374
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;I)V

    invoke-static {p1, p2, p3, v1, v2}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->create(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Landroid/window/TaskSnapshot;Lcom/android/wm/shell/common/ShellExecutor;Ljava/lang/Runnable;)Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    move-result-object p1

    .line 376
    new-instance p2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;-><init>(Landroid/view/View;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V

    .line 377
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method protected postAddWindow(ILandroid/os/IBinder;Landroid/view/View;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    const-string v0, "view not successfully added to wm, removing view"

    const/4 v1, 0x0

    .line 415
    :try_start_0
    invoke-interface {p4, p3, p5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 422
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_0

    .line 423
    :goto_0
    sget-object p2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-interface {p4, p3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p5

    .line 418
    :try_start_1
    sget-object v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " already running, starting window not displayed. "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p5}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 418
    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    .line 422
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 429
    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowNoAnimate(I)V

    .line 430
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->saveSplashScreenRecord(ILandroid/view/View;)V

    :cond_2
    return-void

    :goto_2
    if-eqz p3, :cond_3

    .line 422
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    .line 423
    sget-object p1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-interface {p4, p3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 427
    :cond_3
    throw p0
.end method

.method public removeStartingWindow(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V
    .locals 3

    .line 386
    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task start finish, remove starting surface for task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowSynced(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method protected removeWindowSynced(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    if-eqz v0, :cond_5

    .line 448
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$200(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 450
    sget-object v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing splash screen window for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$100(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/window/SplashScreenView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 453
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$100(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/window/SplashScreenView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/SplashScreenView;->isRevealAnimationSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    .line 455
    sget-boolean p4, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->DEBUG_ENABLE_REVEAL_ANIMATION:Z

    if-eqz p4, :cond_0

    .line 456
    iget-object p4, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$100(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/window/SplashScreenView;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V

    invoke-virtual {p4, v1, p2, p3, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->applyExitAnimation(Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$200(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowInner(Landroid/view/View;Z)V

    goto :goto_0

    .line 466
    :cond_1
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$200(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowInner(Landroid/view/View;Z)V

    goto :goto_0

    .line 470
    :cond_2
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$200(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeWindowInner(Landroid/view/View;Z)V

    .line 473
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$300(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 477
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$300(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->remove()V

    .line 479
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    return-void
.end method
