.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;
.super Ljava/lang/Object;
.source "OngoingCallController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOngoingCallController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OngoingCallController.kt\ncom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n1819#2,2:244\n*E\n*S KotlinDebug\n*F\n+ 1 OngoingCallController.kt\ncom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController\n*L\n172#1,2:244\n*E\n"
.end annotation


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private chipView:Landroid/view/ViewGroup;

.field private final featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final iActivityManager:Landroid/app/IActivityManager;

.field private isCallAppVisible:Z

.field private final logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutor:Ljava/util/concurrent/Executor;

.field private final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field private final notifListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

.field private ongoingCallInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field private uidObserver:Landroid/app/IUidObserver$Stub;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;)V
    .locals 1

    const-string v0, "notifCollection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemClock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iActivityManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 49
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 50
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 51
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 52
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    .line 53
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isCallAppVisible:Z

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    .line 65
    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

    return-void
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getIActivityManager$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Landroid/app/IActivityManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    return-object p0
.end method

.method public static final synthetic access$getMListeners$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMainExecutor$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getUidObserver$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Landroid/app/IUidObserver$Stub;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Landroid/app/IUidObserver$Stub;

    return-object p0
.end method

.method public static final synthetic access$isCallAppVisible$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isCallAppVisible:Z

    return p0
.end method

.method public static final synthetic access$isProcessVisibleToUser(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;I)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isProcessVisibleToUser(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setCallAppVisible$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isCallAppVisible:Z

    return-void
.end method

.method public static final synthetic access$setOngoingCallInfo$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->ongoingCallInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;

    return-void
.end method

.method public static final synthetic access$updateChip(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->updateChip()V

    return-void
.end method

.method private final isProcessVisibleToUser(I)Z
    .locals 0

    const/4 p0, 0x2

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final setUpUidObserver(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;->getUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result v0

    .line 189
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isProcessVisibleToUser(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isCallAppVisible:Z

    .line 192
    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Landroid/app/IUidObserver$Stub;

    .line 214
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    const/4 p1, 0x1

    const/4 v1, -0x1

    invoke-interface {p0, v0, p1, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    return-void
.end method

.method private final updateChip()V
    .locals 8

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->ongoingCallInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 155
    :cond_1
    sget v3, Lcom/android/systemui/R$id;->ongoing_call_chip_time:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 158
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;->getCallStartTime()J

    move-result-wide v4

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 158
    invoke-virtual {v3, v4, v5}, Landroid/widget/Chronometer;->setBase(J)V

    .line 161
    invoke-virtual {v3}, Landroid/widget/Chronometer;->start()V

    .line 163
    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChip$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChip$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->setUpUidObserver(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;)V

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    const/4 v1, 0x1

    .line 172
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;->onOngoingCallStateChanged(Z)V

    goto :goto_1

    .line 176
    :cond_2
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->ongoingCallInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;

    .line 178
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallControllerKt;->access$getDEBUG$p()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "OngoingCallController"

    const-string v0, "Ongoing call chip view could not be found; Not displaying chip in status bar"

    .line 179
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    return-void
.end method

.method public final hasOngoingCall()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->ongoingCallInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;

    if-eqz v0, :cond_0

    .line 133
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isCallAppVisible:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final init()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isOngoingCallStatusBarChipEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    :cond_0
    return-void
.end method

.method public final notifyChipVisibilityChanged(Z)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;->logChipVisibilityChanged(Z)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    return-void
.end method

.method public final setChipView(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "chipView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/ViewGroup;

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->updateChip()V

    :cond_0
    return-void
.end method
