.class final Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;
.super Ljava/lang/Object;
.source "MediaTimeoutListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->processState(Landroid/media/session/PlaybackState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

.field final synthetic this$1:Lcom/android/systemui/media/MediaTimeoutListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;Lcom/android/systemui/media/MediaTimeoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    iput-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$1:Lcom/android/systemui/media/MediaTimeoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->access$setCancellation$p(Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;Ljava/lang/Runnable;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Execute timeout for "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaTimeout"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->setTimedOut(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$1:Lcom/android/systemui/media/MediaTimeoutListener;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaTimeoutListener;->getTimeoutCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->getTimedOut()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
