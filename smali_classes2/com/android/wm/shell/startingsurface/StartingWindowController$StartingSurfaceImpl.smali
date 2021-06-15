.class Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;
.super Ljava/lang/Object;
.source "StartingWindowController.java"

# interfaces
.implements Lcom/android/wm/shell/startingsurface/StartingSurface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/StartingWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartingSurfaceImpl"
.end annotation


# instance fields
.field private mIStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

.field final synthetic this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;Lcom/android/wm/shell/startingsurface/StartingWindowController$1;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createExternalInterface()Lcom/android/wm/shell/startingsurface/IStartingWindow;
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->createExternalInterface()Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    move-result-object p0

    return-object p0
.end method

.method public createExternalInterface()Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->mIStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->invalidate()V

    .line 172
    :cond_0
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->mIStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    return-object v0
.end method
