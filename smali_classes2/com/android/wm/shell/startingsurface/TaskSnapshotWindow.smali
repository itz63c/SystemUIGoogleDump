.class public Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;
.super Ljava/lang/Object;
.source "TaskSnapshotWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$SystemBarBackgroundPainter;,
        Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TMP_SURFACE_SIZE:Landroid/graphics/Point;


# instance fields
.field private final mActivityType:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mClearWindowHandler:Ljava/lang/Runnable;

.field private final mFrame:Landroid/graphics/Rect;

.field private mHasDrawn:Z

.field private final mOrientationOnCreation:I

.field private final mSession:Landroid/view/IWindowSession;

.field private mShownTime:J

.field private mSizeMismatch:Z

.field private mSnapshot:Landroid/window/TaskSnapshot;

.field private final mSnapshotMatrix:Landroid/graphics/Matrix;

.field private final mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mStatusBarColor:I

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mSystemBarBackgroundPainter:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$SystemBarBackgroundPainter;

.field private final mSystemBarInsets:Landroid/graphics/Rect;

.field private final mTaskBounds:Landroid/graphics/Rect;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTmpDstFrame:Landroid/graphics/RectF;

.field private final mTmpFloat9:[F

.field private final mTmpSnapshotSize:Landroid/graphics/RectF;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;


# direct methods
.method public static synthetic $r8$lambda$ONFP7npzsI3--oPkEPxQ4FCB57U(Landroid/view/IWindowSession;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;Landroid/view/InputChannel;[Landroid/view/InsetsSourceControl;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)V
    .locals 0

    invoke-static/range {p0 .. p11}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->lambda$create$0(Landroid/view/IWindowSession;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;Landroid/view/InputChannel;[Landroid/view/InsetsSourceControl;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x0ZvXLMEQvQgAzawAfVui7gYRxU(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->lambda$remove$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 119
    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->TAG:Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->TMP_SURFACE_SIZE:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;IILandroid/view/InsetsState;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 9

    move-object v0, p0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mFrame:Landroid/graphics/Rect;

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSystemBarInsets:Landroid/graphics/Rect;

    .line 135
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTmpSnapshotSize:Landroid/graphics/RectF;

    .line 136
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTmpDstFrame:Landroid/graphics/RectF;

    .line 141
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 147
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshotMatrix:Landroid/graphics/Matrix;

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 148
    iput-object v2, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTmpFloat9:[F

    move-object/from16 v2, p13

    .line 261
    iput-object v2, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 262
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSession:Landroid/view/IWindowSession;

    .line 263
    new-instance v3, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    invoke-direct {v3}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    .line 264
    invoke-virtual {v3, v2}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    move-object v2, p1

    .line 265
    iput-object v2, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object v2, p2

    .line 266
    iput-object v2, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    move-object v2, p3

    .line 267
    iput-object v2, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTitle:Ljava/lang/CharSequence;

    .line 268
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 269
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v1, p8

    .line 270
    iput-object v1, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTaskBounds:Landroid/graphics/Rect;

    .line 271
    new-instance v8, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$SystemBarBackgroundPainter;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v8

    move v2, p6

    move/from16 v3, p7

    move v4, p5

    move-object v5, p4

    move-object/from16 v7, p11

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V

    iput-object v8, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSystemBarBackgroundPainter:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$SystemBarBackgroundPainter;

    .line 273
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mStatusBarColor:I

    move/from16 v1, p9

    .line 274
    iput v1, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mOrientationOnCreation:I

    move/from16 v1, p10

    .line 275
    iput v1, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mActivityType:I

    .line 276
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v1, p12

    .line 277
    iput-object v1, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mOrientationOnCreation:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->clearWindowSynced()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mHasDrawn:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->reportDrawn()V

    return-void
.end method

.method private clearWindowSynced()V
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 495
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static create(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Landroid/window/TaskSnapshot;Lcom/android/wm/shell/common/ShellExecutor;Ljava/lang/Runnable;)Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;
    .locals 24

    move-object/from16 v0, p0

    .line 152
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 153
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 158
    iget-object v3, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 159
    iget-object v4, v0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 160
    iget-object v0, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 165
    :cond_0
    new-instance v15, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v15}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 167
    iget-object v5, v3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v10, v5, Landroid/view/InsetsFlags;->appearance:I

    .line 168
    iget v11, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 169
    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 171
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v5, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 172
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v5, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 173
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v4, 0x3

    .line 174
    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v4

    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    const v4, -0x3186e039

    and-int/2addr v4, v11

    or-int/lit8 v4, v4, 0x8

    or-int/lit8 v4, v4, 0x10

    .line 176
    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v4, v12

    const/high16 v5, 0x20000000

    or-int/2addr v4, v5

    const/high16 v5, 0x2000000

    or-int/2addr v4, v5

    .line 181
    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move-object/from16 v4, p1

    .line 183
    iput-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v4, -0x1

    .line 184
    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 185
    iput v4, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 186
    iget-object v5, v15, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput v10, v5, Landroid/view/InsetsFlags;->appearance:I

    .line 187
    iget-object v6, v3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v6, v6, Landroid/view/InsetsFlags;->behavior:I

    iput v6, v5, Landroid/view/InsetsFlags;->behavior:I

    .line 188
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v5, v15, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 189
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 190
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 191
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v3

    invoke-virtual {v15, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const-string v2, "SnapshotStartingWindow for taskId=%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v2

    .line 196
    new-instance v13, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v13, v5, v5, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/window/TaskSnapshot;->getOrientation()I

    move-result v14

    .line 199
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 200
    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 202
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v19

    .line 203
    new-instance v20, Landroid/view/SurfaceControl;

    invoke-direct/range {v20 .. v20}, Landroid/view/SurfaceControl;-><init>()V

    .line 204
    new-instance v21, Landroid/window/ClientWindowFrames;

    invoke-direct/range {v21 .. v21}, Landroid/window/ClientWindowFrames;-><init>()V

    new-array v9, v5, [Landroid/view/InsetsSourceControl;

    .line 207
    new-instance v22, Landroid/util/MergedConfiguration;

    invoke-direct/range {v22 .. v22}, Landroid/util/MergedConfiguration;-><init>()V

    .line 210
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 214
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 217
    :goto_0
    new-instance v4, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    .line 218
    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    move-object v5, v4

    move-object/from16 v6, v20

    move-object/from16 v7, p2

    move-object/from16 v23, v9

    move-object v9, v1

    move-object v1, v15

    move v15, v2

    move-object/from16 v16, v0

    move-object/from16 v17, p4

    move-object/from16 v18, p3

    invoke-direct/range {v5 .. v18}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;-><init>(Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;IILandroid/view/InsetsState;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 221
    iget-object v7, v4, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    .line 223
    new-instance v10, Landroid/view/InsetsState;

    invoke-direct {v10}, Landroid/view/InsetsState;-><init>()V

    .line 224
    new-instance v11, Landroid/view/InputChannel;

    invoke-direct {v11}, Landroid/view/InputChannel;-><init>()V

    .line 225
    new-instance v2, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$$ExternalSyntheticLambda0;

    move-object v5, v2

    move-object/from16 v6, v19

    move-object v8, v1

    move v9, v3

    move-object/from16 v12, v23

    move-object v13, v4

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move-object/from16 v16, v20

    move-object/from16 v17, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$$ExternalSyntheticLambda0;-><init>(Landroid/view/IWindowSession;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;Landroid/view/InputChannel;[Landroid/view/InsetsSourceControl;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v4

    .line 162
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create taskSnapshot surface for task: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private drawSizeMatchSnapshot()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 359
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 358
    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 361
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private drawSizeMismatchSnapshot()V
    .locals 8

    .line 366
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 367
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    .line 372
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mFrame:Landroid/graphics/Rect;

    .line 373
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 371
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 376
    :goto_0
    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " - task-snapshot-surface"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 379
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 380
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v4, "TaskSnapshotWindow.drawSizeMismatchSnapshot"

    .line 381
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 387
    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz v2, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->calculateSnapshotCrop()Landroid/graphics/Rect;

    move-result-object v0

    .line 391
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 392
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 393
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v5, v1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 394
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTmpSnapshotSize:Landroid/graphics/RectF;

    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 395
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTmpDstFrame:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 398
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTmpSnapshotSize:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 399
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTmpDstFrame:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 400
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTmpDstFrame:Landroid/graphics/RectF;

    invoke-virtual {v0, v7, v7}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 404
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshotMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTmpSnapshotSize:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTmpDstFrame:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v5, v6, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 405
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshotMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTmpFloat9:[F

    invoke-virtual {v0, v1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 406
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 407
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 406
    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 408
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v6}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 409
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    if-eqz v2, :cond_2

    .line 412
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v2, 0x920

    invoke-static {v0, v1, v3, v2}, Landroid/graphics/GraphicBuffer;->create(IIII)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 417
    invoke-virtual {p0, v1, v4}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 418
    invoke-virtual {v0, v1}, Landroid/graphics/GraphicBuffer;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 419
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 421
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private drawSnapshot()V
    .locals 2

    .line 341
    iget-boolean v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSizeMismatch:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->drawSizeMismatchSnapshot()V

    goto :goto_0

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->drawSizeMatchSnapshot()V

    .line 349
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mShownTime:J

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mHasDrawn:Z

    .line 351
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->reportDrawn()V

    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    return-void
.end method

.method static getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;
    .locals 2

    .line 333
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$create$0(Landroid/view/IWindowSession;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;Landroid/view/InputChannel;[Landroid/view/InsetsSourceControl;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)V
    .locals 19

    move-object/from16 v0, p7

    move-object/from16 v15, p8

    const-wide/16 v13, 0x20

    :try_start_0
    const-string v1, "TaskSnapshot#addToDisplay"

    .line 227
    invoke-static {v13, v14, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/16 v5, 0x8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 228
    invoke-interface/range {v2 .. v10}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v1

    .line 230
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    if-gez v1, :cond_0

    .line 232
    sget-object v2, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add snapshot starting window res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 236
    :catch_0
    invoke-direct/range {p7 .. p7}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->clearWindowSynced()V

    :cond_0
    move-object/from16 v2, p1

    .line 238
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;->setOuter(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V

    :try_start_1
    const-string v1, "TaskSnapshot#relayout"

    .line 240
    invoke-static {v13, v14, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    .line 241
    sget-object v16, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->TMP_SURFACE_SIZE:Landroid/graphics/Point;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-wide/from16 v17, v13

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    move-object v0, v15

    move-object/from16 v15, v16

    :try_start_2
    invoke-interface/range {v1 .. v15}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIJLandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/graphics/Point;)I

    .line 244
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-object v0, v15

    .line 246
    :catch_2
    invoke-direct/range {p7 .. p7}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->clearWindowSynced()V

    .line 249
    :goto_0
    iget-object v1, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    move-object/from16 v2, p11

    invoke-static {v1, v2}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v1

    .line 250
    iget-object v0, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    move-object/from16 v2, p7

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 251
    invoke-direct/range {p7 .. p7}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->drawSnapshot()V

    return-void
.end method

.method private synthetic lambda$remove$1()V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->remove()V

    return-void
.end method

.method private reportDrawn()V
    .locals 3

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->clearWindowSynced()V

    :goto_0
    return-void
.end method


# virtual methods
.method public calculateSnapshotCrop()Landroid/graphics/Rect;
    .locals 6

    .line 430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 431
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 433
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v2

    .line 435
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v5}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 436
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v5}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    .line 440
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mTaskBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mFrame:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v4

    .line 441
    :goto_0
    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    if-eqz p0, :cond_1

    goto :goto_1

    .line 442
    :cond_1
    iget p0, v2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int v4, p0

    :goto_1
    iget p0, v2, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    float-to-int p0, p0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 441
    invoke-virtual {v0, v5, v4, p0, v1}, Landroid/graphics/Rect;->inset(IIII)V

    return-object v0
.end method

.method public calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 456
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 459
    new-instance v2, Landroid/graphics/Rect;

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v3, v1

    float-to-int v3, v3

    .line 461
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 465
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSystemBarInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object v2
.end method

.method public drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 474
    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSystemBarBackgroundPainter:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$SystemBarBackgroundPainter;

    invoke-virtual {v2}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v2

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .line 476
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v3, :cond_4

    .line 478
    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v3

    iget v3, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mStatusBarColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_2

    int-to-float v2, v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move v8, v2

    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v9, v2

    if-eqz v5, :cond_3

    .line 480
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 481
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    :goto_3
    int-to-float v2, v2

    move v10, v2

    iget-object v11, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    .line 478
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    if-eqz v5, :cond_5

    const/4 v13, 0x0

    .line 485
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v15, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 487
    :cond_5
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSystemBarBackgroundPainter:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$SystemBarBackgroundPainter;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method remove()V
    .locals 8

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 299
    iget-boolean v2, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSizeMismatch:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mShownTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x1c2

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    iget v4, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mActivityType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    add-long/2addr v2, v6

    sub-long/2addr v2, v0

    .line 303
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 313
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSession:Landroid/view/IWindowSession;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 325
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 326
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    .line 327
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mFrame:Landroid/graphics/Rect;

    .line 328
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSizeMismatch:Z

    .line 329
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSystemBarBackgroundPainter:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$SystemBarBackgroundPainter;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    return-void
.end method
