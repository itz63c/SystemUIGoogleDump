.class public final Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;
.super Ljava/lang/Object;
.source "ColumbusServiceWrapper.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final columbusService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;"
        }
    .end annotation
.end field

.field private final columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

.field private final settingsChangeListener:Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;

.field private started:Z


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "columbusSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columbusService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    .line 13
    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->columbusService:Ldagger/Lazy;

    .line 16
    new-instance p2, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->settingsChangeListener:Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->isColumbusEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->startService()V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    :goto_0
    return-void
.end method

.method public static final synthetic access$startService(Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->startService()V

    return-void
.end method

.method private final startService()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->settingsChangeListener:Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->unregisterColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->started:Z

    .line 37
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->columbusService:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->started:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->columbusService:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
