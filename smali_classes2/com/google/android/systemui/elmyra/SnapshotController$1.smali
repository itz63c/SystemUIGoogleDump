.class Lcom/google/android/systemui/elmyra/SnapshotController$1;
.super Landroid/os/Handler;
.source "SnapshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/SnapshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/SnapshotController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/SnapshotController;Landroid/os/Looper;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/SnapshotController$1;->this$0:Lcom/google/android/systemui/elmyra/SnapshotController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/SnapshotController$1;->this$0:Lcom/google/android/systemui/elmyra/SnapshotController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    invoke-static {p0, p1}, Lcom/google/android/systemui/elmyra/SnapshotController;->access$000(Lcom/google/android/systemui/elmyra/SnapshotController;Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;)V

    :goto_0
    return-void
.end method
