.class final Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;
.super Ljava/lang/Object;
.source "DockObserver.java"

# interfaces
.implements Lcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChallengeCallback"
.end annotation


# instance fields
.field private final mResultReceiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 800
    invoke-static {}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$400()Z

    move-result v0

    const-string v1, "DLObserver"

    if-eqz v0, :cond_0

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "challenge() Result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    .line 804
    invoke-static {}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$400()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "challenge() response: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$700(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 809
    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method