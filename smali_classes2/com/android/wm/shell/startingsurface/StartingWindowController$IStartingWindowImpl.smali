.class Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;
.super Lcom/android/wm/shell/startingsurface/IStartingWindow$Stub;
.source "StartingWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/StartingWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IStartingWindowImpl"
.end annotation


# instance fields
.field private mController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

.field private mListener:Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

.field private final mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mStartingWindowListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0ZUNtCTbloo9qpOoExeos3YBqmI(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->notifyIStartingWindowListener(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$M0ZyrR71XJ_pY5MIJcwJvru-qoI(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;Lcom/android/wm/shell/startingsurface/IStartingWindowListener;Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->lambda$setStartingWindowListener$0(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;Lcom/android/wm/shell/startingsurface/StartingWindowController;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/IStartingWindow$Stub;-><init>()V

    .line 184
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mStartingWindowListener:Ljava/util/function/BiConsumer;

    .line 186
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$1;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 200
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;)Lcom/android/wm/shell/startingsurface/StartingWindowController;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)Lcom/android/wm/shell/startingsurface/IStartingWindowListener;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mListener:Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    return-object p1
.end method

.method private synthetic lambda$setStartingWindowListener$0(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mListener:Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 221
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to link to death"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 228
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mListener:Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    .line 229
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mStartingWindowListener:Ljava/util/function/BiConsumer;

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->setStartingWindowListener(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private notifyIStartingWindowListener(II)V
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mListener:Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    if-nez p0, :cond_0

    return-void

    .line 239
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/IStartingWindowListener;->onTaskLaunching(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 241
    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to notify task launching"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    return-void
.end method

.method public setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    new-instance v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V

    const-string p0, "setStartingWindowListener"

    invoke-static {v0, p0, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
