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
.field private final mContentView:Landroid/window/SplashScreenView;

.field private final mDecorView:Landroid/view/View;

.field private final mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Landroid/window/SplashScreenView;)V
    .locals 0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mDecorView:Landroid/view/View;

    .line 496
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    .line 497
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mContentView:Landroid/window/SplashScreenView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/window/SplashScreenView;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mContentView:Landroid/window/SplashScreenView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Landroid/view/View;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    return-object p0
.end method
