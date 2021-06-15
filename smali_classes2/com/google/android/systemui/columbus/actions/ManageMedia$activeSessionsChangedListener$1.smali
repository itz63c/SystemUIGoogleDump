.class final Lcom/google/android/systemui/columbus/actions/ManageMedia$activeSessionsChangedListener$1;
.super Ljava/lang/Object;
.source "ManageMedia.kt"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/ManageMedia;-><init>(Landroid/content/Context;Ldagger/Lazy;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/ManageMedia;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/ManageMedia;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia$activeSessionsChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/ManageMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia$activeSessionsChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/ManageMedia;

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/actions/ManageMedia;->access$setActiveSessions$p(Lcom/google/android/systemui/columbus/actions/ManageMedia;Ljava/util/List;)V

    .line 36
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia$activeSessionsChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/ManageMedia;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/ManageMedia;->access$updateAvailable(Lcom/google/android/systemui/columbus/actions/ManageMedia;)V

    return-void
.end method
