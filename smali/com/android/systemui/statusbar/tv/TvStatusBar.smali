.class public Lcom/android/systemui/statusbar/tv/TvStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "TvStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mAssistManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p2, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 56
    iput-object p3, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    const-string v0, "statusbar"

    .line 62
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->audio_recording_disclosure_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;-><init>(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void
.end method
