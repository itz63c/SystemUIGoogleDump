.class final Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;
.super Ljava/lang/Object;
.source "DockObserver.java"

# interfaces
.implements Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GetFanInformationCallback"
.end annotation


# instance fields
.field private final mFanId:B

.field private final mResultReceiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;BLandroid/os/ResultReceiver;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-byte p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;->mFanId:B

    .line 848
    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public onCallback(ILandroid/os/Bundle;)V
    .locals 3

    .line 853
    invoke-static {}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$400()Z

    move-result v0

    const-string v1, "DLObserver"

    if-eqz v0, :cond_0

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback of command=0, result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", i="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;->mFanId:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    .line 858
    invoke-static {}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$400()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Callback of command=0, i="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fan_id"

    const/4 v2, -0x1

    .line 860
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", m="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fan_mode"

    .line 861
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cr="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fan_current_rpm"

    .line 862
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mir="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fan_min_rpm"

    .line 863
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mxr="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fan_max_rpm"

    .line 864
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", t="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fan_type"

    .line 865
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", c="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fan_count"

    .line 866
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 859
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 870
    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
