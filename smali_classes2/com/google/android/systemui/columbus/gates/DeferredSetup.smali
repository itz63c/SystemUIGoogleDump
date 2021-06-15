.class public final Lcom/google/android/systemui/columbus/gates/DeferredSetup;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "DeferredSetup.kt"


# instance fields
.field private setupComplete:Z

.field private final setupCompleteObserver:Lcom/google/android/systemui/columbus/ColumbusContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsObserverFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 19
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string p1, "columbus_gesture_setup_complete"

    .line 22
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "getUriFor(ColumbusFlags.COLUMBUS_GESTURE_SETUP_COMPLETE_KEY)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/systemui/columbus/gates/DeferredSetup$setupCompleteObserver$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/gates/DeferredSetup$setupCompleteObserver$1;-><init>(Lcom/google/android/systemui/columbus/gates/DeferredSetup;)V

    .line 21
    invoke-virtual {p2, p1, v0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->create(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/DeferredSetup;->setupCompleteObserver:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    return-void
.end method

.method public static final synthetic access$updateBlocking(Lcom/google/android/systemui/columbus/gates/DeferredSetup;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/DeferredSetup;->updateBlocking()V

    return-void
.end method

.method public static final synthetic access$updateSetupComplete(Lcom/google/android/systemui/columbus/gates/DeferredSetup;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/DeferredSetup;->updateSetupComplete()V

    return-void
.end method

.method private final updateBlocking()V
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/DeferredSetup;->setupComplete:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method private final updateSetupComplete()V
    .locals 4

    .line 45
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "columbus_gesture_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 44
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/systemui/columbus/gates/DeferredSetup;->setupComplete:Z

    return-void
.end method


# virtual methods
.method protected onActivate()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/DeferredSetup;->setupCompleteObserver:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->activate()V

    .line 31
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/DeferredSetup;->updateSetupComplete()V

    .line 32
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/DeferredSetup;->updateBlocking()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/DeferredSetup;->setupCompleteObserver:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->deactivate()V

    return-void
.end method
