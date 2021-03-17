.class public final Lcom/android/systemui/media/MediaResumeListener;
.super Ljava/lang/Object;
.source "MediaResumeListener.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaResumeListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaResumeListener.kt\ncom/android/systemui/media/MediaResumeListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,298:1\n699#2,9:299\n1819#2,2:308\n1819#2,2:310\n734#2:312\n825#2,2:313\n1819#2,2:315\n*E\n*S KotlinDebug\n*F\n+ 1 MediaResumeListener.kt\ncom/android/systemui/media/MediaResumeListener\n*L\n143#1,9:299\n144#1,2:308\n162#1,2:310\n183#1:312\n183#1,2:313\n252#1,2:315\n*E\n"
.end annotation


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private blockedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final context:Landroid/content/Context;

.field private currentUserId:I

.field private mediaBrowser:Lcom/android/systemui/media/ResumeMediaBrowser;

.field private final mediaBrowserCallback:Lcom/android/systemui/media/MediaResumeListener$mediaBrowserCallback$1;

.field private final mediaBrowserFactory:Lcom/android/systemui/media/ResumeMediaBrowserFactory;

.field private mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

.field private final resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final tunerService:Lcom/android/systemui/tuner/TunerService;

.field private useMediaResumption:Z

.field private final userChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/media/ResumeMediaBrowserFactory;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tunerService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaBrowserFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/systemui/media/MediaResumeListener;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 54
    iput-object p3, p0, Lcom/android/systemui/media/MediaResumeListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 55
    iput-object p4, p0, Lcom/android/systemui/media/MediaResumeListener;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 56
    iput-object p5, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/ResumeMediaBrowserFactory;

    .line 60
    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/media/MediaResumeListener;->useMediaResumption:Z

    .line 61
    new-instance p3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 62
    invoke-static {p1}, Lcom/android/systemui/util/Utils;->getBlockedMediaApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p3

    const-string p4, "getBlockedMediaApps(context)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/media/MediaResumeListener;->blockedApps:Ljava/util/Set;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/MediaResumeListener;->currentUserId:I

    .line 70
    new-instance p1, Lcom/android/systemui/media/MediaResumeListener$userChangeReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaResumeListener$userChangeReceiver$1;-><init>(Lcom/android/systemui/media/MediaResumeListener;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener;->userChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    new-instance p3, Lcom/android/systemui/media/MediaResumeListener$mediaBrowserCallback$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/MediaResumeListener$mediaBrowserCallback$1;-><init>(Lcom/android/systemui/media/MediaResumeListener;)V

    iput-object p3, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowserCallback:Lcom/android/systemui/media/MediaResumeListener$mediaBrowserCallback$1;

    .line 106
    iget-boolean p3, p0, Lcom/android/systemui/media/MediaResumeListener;->useMediaResumption:Z

    if-eqz p3, :cond_0

    const-string p3, "MediaResumeListener"

    .line 107
    invoke-virtual {p6, p3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 108
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string p4, "android.intent.action.USER_UNLOCKED"

    .line 109
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p4, "android.intent.action.USER_SWITCHED"

    .line 110
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 112
    sget-object p5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 111
    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/media/MediaResumeListener;->loadSavedComponents()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getBlockedApps$p(Lcom/android/systemui/media/MediaResumeListener;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener;->blockedApps:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/media/MediaResumeListener;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCurrentUserId$p(Lcom/android/systemui/media/MediaResumeListener;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaResumeListener;->currentUserId:I

    return p0
.end method

.method public static final synthetic access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/ResumeMediaBrowser;

    return-object p0
.end method

.method public static final synthetic access$getMediaBrowserFactory$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowserFactory;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/ResumeMediaBrowserFactory;

    return-object p0
.end method

.method public static final synthetic access$getMediaDataManager$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/MediaDataManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    return-object p0
.end method

.method public static final synthetic access$getResumeAction(Lcom/android/systemui/media/MediaResumeListener;Landroid/content/ComponentName;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaResumeListener;->getResumeAction(Landroid/content/ComponentName;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUseMediaResumption$p(Lcom/android/systemui/media/MediaResumeListener;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaResumeListener;->useMediaResumption:Z

    return p0
.end method

.method public static final synthetic access$loadMediaResumptionControls(Lcom/android/systemui/media/MediaResumeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaResumeListener;->loadMediaResumptionControls()V

    return-void
.end method

.method public static final synthetic access$loadSavedComponents(Lcom/android/systemui/media/MediaResumeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaResumeListener;->loadSavedComponents()V

    return-void
.end method

.method public static final synthetic access$setBlockedApps$p(Lcom/android/systemui/media/MediaResumeListener;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener;->blockedApps:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$setCurrentUserId$p(Lcom/android/systemui/media/MediaResumeListener;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/media/MediaResumeListener;->currentUserId:I

    return-void
.end method

.method public static final synthetic access$setMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/ResumeMediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/ResumeMediaBrowser;

    return-void
.end method

.method public static final synthetic access$setUseMediaResumption$p(Lcom/android/systemui/media/MediaResumeListener;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaResumeListener;->useMediaResumption:Z

    return-void
.end method

.method public static final synthetic access$tryUpdateResumptionList(Lcom/android/systemui/media/MediaResumeListener;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaResumeListener;->tryUpdateResumptionList(Ljava/lang/String;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static final synthetic access$updateResumptionList(Lcom/android/systemui/media/MediaResumeListener;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaResumeListener;->updateResumptionList(Landroid/content/ComponentName;)V

    return-void
.end method

.method private final getResumeAction(Landroid/content/ComponentName;)Ljava/lang/Runnable;
    .locals 1

    .line 264
    new-instance v0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;-><init>(Lcom/android/systemui/media/MediaResumeListener;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public static synthetic getUserChangeReceiver$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final loadMediaResumptionControls()V
    .locals 4

    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaResumeListener;->useMediaResumption:Z

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 163
    iget-object v2, p0, Lcom/android/systemui/media/MediaResumeListener;->blockedApps:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/ResumeMediaBrowserFactory;

    iget-object v3, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowserCallback:Lcom/android/systemui/media/MediaResumeListener$mediaBrowserCallback$1;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->create(Lcom/android/systemui/media/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/android/systemui/media/ResumeMediaBrowser;->findRecentMedia()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final loadSavedComponents()V
    .locals 10

    .line 139
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener;->context:Landroid/content/Context;

    const-string v1, "media_control_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    iget v1, p0, Lcom/android/systemui/media/MediaResumeListener;->currentUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "browser_components_"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    new-instance v4, Lkotlin/text/Regex;

    const-string v5, ":"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 699
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 700
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 701
    :cond_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 702
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 143
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    if-nez v4, :cond_2

    .line 703
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 707
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_5

    goto :goto_3

    .line 1819
    :cond_5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    const-string v3, "/"

    .line 145
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 146
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 147
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 151
    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.util.Arrays.toString(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loaded resume components "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaResumeListener"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final tryUpdateResumptionList(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "Testing if we can connect to "

    .line 203
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaResumeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/ResumeMediaBrowser;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/ResumeMediaBrowserFactory;

    .line 206
    new-instance v1, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/media/MediaResumeListener;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->create(Lcom/android/systemui/media/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/ResumeMediaBrowser;

    if-nez p1, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/media/ResumeMediaBrowser;->testConnection()V

    :goto_1
    return-void
.end method

.method private final updateResumptionList(Landroid/content/ComponentName;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object p1, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 247
    iget-object p1, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 253
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 254
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "media_control_prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/media/MediaResumeListener;->currentUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "browser_components_"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string p1, "resumeComponents: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 5

    const-string p2, "key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-boolean p2, p0, Lcom/android/systemui/media/MediaResumeListener;->useMediaResumption:Z

    if-eqz p2, :cond_6

    .line 173
    iget-object p2, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/ResumeMediaBrowser;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    .line 175
    :goto_0
    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getResumeAction()Ljava/lang/Runnable;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getHasCheckedForResume()Z

    move-result p2

    if-nez p2, :cond_6

    .line 176
    iget-object p2, p0, Lcom/android/systemui/media/MediaResumeListener;->blockedApps:Ljava/util/Set;

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 178
    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Checking for service component for "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaResumeListener"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p2, p0, Lcom/android/systemui/media/MediaResumeListener;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.browse.MediaBrowserService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 181
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object v1, v0

    goto :goto_2

    .line 734
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 184
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 186
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 187
    iget-object p2, p0, Lcom/android/systemui/media/MediaResumeListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;

    invoke-direct {p3, p0, p1, v1}, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/MediaResumeListener;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 192
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/media/MediaDataManager;->setResumeAction(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    const-string p0, "mediaDataManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    return-void
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/android/systemui/media/MediaDataManager$Listener$DefaultImpls;->onMediaDataRemoved(Lcom/android/systemui/media/MediaDataManager$Listener;Ljava/lang/String;)V

    return-void
.end method

.method public final setManager(Lcom/android/systemui/media/MediaDataManager;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    .line 121
    iget-object p1, p0, Lcom/android/systemui/media/MediaResumeListener;->tunerService:Lcom/android/systemui/tuner/TunerService;

    new-instance v0, Lcom/android/systemui/media/MediaResumeListener$setManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaResumeListener$setManager$1;-><init>(Lcom/android/systemui/media/MediaResumeListener;)V

    const-string v1, "qs_media_resumption"

    .line 126
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/media/MediaResumeListener;->tunerService:Lcom/android/systemui/tuner/TunerService;

    new-instance v0, Lcom/android/systemui/media/MediaResumeListener$setManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaResumeListener$setManager$2;-><init>(Lcom/android/systemui/media/MediaResumeListener;)V

    const-string p0, "qs_media_resumption_blocked"

    .line 134
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method
