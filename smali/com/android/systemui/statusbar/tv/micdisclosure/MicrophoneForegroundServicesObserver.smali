.class Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;
.super Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;
.source "MicrophoneForegroundServicesObserver.java"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mPackageToProcessCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPidToPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessObserver:Landroid/app/IProcessObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;)V

    .line 49
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPidToPackages:Landroid/util/SparseArray;

    .line 56
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPackageToProcessCount:Ljava/util/Map;

    .line 184
    new-instance p1, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;-><init>(Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mProcessObserver:Landroid/app/IProcessObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->onProcessDied(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;IZ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->onProcessForegroundServicesChanged(IZ)V

    return-void
.end method

.method private getPackageNames(I)[Ljava/lang/String;
    .locals 3

    const-string v0, "MicrophoneForegroundServicesObserver"

    const/4 v1, 0x0

    .line 168
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const-string v2, "No running apps reported"

    .line 174
    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 177
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_1

    .line 178
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v1

    .line 170
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get package name for pid="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private notifyPackageStateChanged(Ljava/lang/String;Z)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->mListener:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;->onAudioActivityStateChange(ZLjava/lang/String;)V

    return-void
.end method

.method private onProcessDied(I)V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPidToPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 137
    aget-object v1, p1, v0

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPackageToProcessCount:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_1

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bookkeeping error, process count for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MicrophoneForegroundServicesObserver"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_2

    .line 146
    iget-object v3, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPackageToProcessCount:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPackageToProcessCount:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->notifyPackageStateChanged(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onProcessForegroundServicesChanged(IZ)V
    .locals 6

    if-eqz p2, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPidToPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->getPackageNames(I)[Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPidToPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move-object p1, v0

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPidToPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 108
    :cond_2
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_7

    .line 109
    aget-object v2, p1, v0

    .line 110
    iget-object v3, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPackageToProcessCount:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz p2, :cond_3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_4

    :goto_2
    move v4, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-lez v3, :cond_5

    .line 120
    iget-object v5, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPackageToProcessCount:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 122
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPackageToProcessCount:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    if-eqz v4, :cond_6

    .line 124
    invoke-direct {p0, v2, p2}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->notifyPackageStateChanged(Ljava/lang/String;Z)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
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

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPackageToProcessCount:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method start()V
    .locals 2

    .line 65
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mActivityManager:Landroid/app/IActivityManager;

    .line 67
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MicrophoneForegroundServicesObserver"

    const-string v1, "Couldn\'t register process observer"

    .line 69
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method stop()V
    .locals 3

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicrophoneForegroundServicesObserver"

    const-string v2, "Couldn\'t unregister process observer"

    .line 78
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mActivityManager:Landroid/app/IActivityManager;

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->mPackageToProcessCount:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
