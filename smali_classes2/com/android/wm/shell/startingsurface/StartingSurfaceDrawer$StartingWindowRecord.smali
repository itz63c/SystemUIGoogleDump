.class Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;
.super Ljava/lang/Object;
.source "StartingSurfaceDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartingWindowRecord"
.end annotation


# instance fields
.field private mContentView:Landroid/window/SplashScreenView;

.field private final mDecorView:Landroid/view/View;

.field private mSetSplashScreen:Z

.field private final mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mDecorView:Landroid/view/View;

    .line 504
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/window/SplashScreenView;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mContentView:Landroid/window/SplashScreenView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/view/View;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;Landroid/window/SplashScreenView;)V
    .locals 0

    .line 496
    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->setSplashScreenView(Landroid/window/SplashScreenView;)V

    return-void
.end method

.method private setSplashScreenView(Landroid/window/SplashScreenView;)V
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mSetSplashScreen:Z

    if-eqz v0, :cond_0

    return-void

    .line 511
    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mContentView:Landroid/window/SplashScreenView;

    const/4 p1, 0x1

    .line 512
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mSetSplashScreen:Z

    return-void
.end method
