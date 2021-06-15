.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusEffectsFactory;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideColumbusEffectsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final hapticClickProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/feedback/HapticClick;",
            ">;"
        }
    .end annotation
.end field

.field private final userActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/feedback/UserActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/feedback/HapticClick;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/feedback/UserActivity;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusEffectsFactory;->hapticClickProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusEffectsFactory;->userActivityProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusEffectsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/feedback/HapticClick;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/feedback/UserActivity;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusEffectsFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusEffectsFactory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusEffectsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideColumbusEffects(Lcom/google/android/systemui/columbus/feedback/HapticClick;Lcom/google/android/systemui/columbus/feedback/UserActivity;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/feedback/HapticClick;",
            "Lcom/google/android/systemui/columbus/feedback/UserActivity;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusModule;->provideColumbusEffects(Lcom/google/android/systemui/columbus/feedback/HapticClick;Lcom/google/android/systemui/columbus/feedback/UserActivity;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusEffectsFactory;->get()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusEffectsFactory;->hapticClickProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/feedback/HapticClick;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusEffectsFactory;->userActivityProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/feedback/UserActivity;

    invoke-static {v0, p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusEffectsFactory;->provideColumbusEffects(Lcom/google/android/systemui/columbus/feedback/HapticClick;Lcom/google/android/systemui/columbus/feedback/UserActivity;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
