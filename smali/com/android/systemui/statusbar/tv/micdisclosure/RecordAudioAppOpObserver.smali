.class Lcom/android/systemui/statusbar/tv/micdisclosure/RecordAudioAppOpObserver;
.super Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;
.source "RecordAudioAppOpObserver.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;


# instance fields
.field private final mActiveAudioRecordingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;)V

    .line 41
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/RecordAudioAppOpObserver;->mActiveAudioRecordingPackages:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method getActivePackages()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/RecordAudioAppOpObserver;->mActiveAudioRecordingPackages:Ljava/util/Set;

    return-object p0
.end method

.method public onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 90
    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/RecordAudioAppOpObserver;->mActiveAudioRecordingPackages:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->mListener:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;->onAudioActivityStateChange(ZLjava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/RecordAudioAppOpObserver;->mActiveAudioRecordingPackages:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->mListener:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;->onAudioActivityStateChange(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method start()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const-string v1, "android:record_audio"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    return-void
.end method

.method stop()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/RecordAudioAppOpObserver;->mActiveAudioRecordingPackages:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method
